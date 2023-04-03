<?php

class My_lessons extends MY_Controller {

    function __construct() {
        parent::__construct();
        $this->isMemLogged($this->session->mem_type);
        $this->load->model('member_model');
        $this->load->model('lesson_model');
        $this->load->model('subject_model');
        $this->load->library('my_stripe');
    }

    function index() {
        if($this->input->post()){
            $condition=array('mem_type<>'=>$this->session->mem_type,$this->session->mem_type.'_id'=>$this->session->mem_id);
            $res['items'] = "";
            $res['reached']=true;
            $res['found']=1;
            $res['load']=1;

            $type=strtolower(trim($this->input->post('store')));
            $res['type']=$type;
            
            if(!in_array($type, array('upcoming','previous'))){
                $res['items'] = '<li class="hidden"><div class="semi color">No Lesson available</div></li>';
                exit(json_encode($res));
            }

            $count_function_name='total_'.$type.'_lessons';
            $function_name='get_'.$type.'_lessons';

            $page=intval($this->input->post('load'));
            $page=$page>0?$page:1;
            $per_page=20;
            $total=$this->lesson_model->$count_function_name(array($this->session->mem_type.'_id'=>$this->session->mem_id));
            $total_pages=ceil($total/$per_page);
            $start=($page-1)*$per_page;

            $res['reached']=$total_pages>$page?false:true;


            $lessons = $this->lesson_model->$function_name($condition,$start,$per_page);
            if (count($lessons) > 0) {
                $res['found']=1;
                $res['load']=$page+1;

                foreach ($lessons as $key => $lesson){
                    
                    $res['items'] .= 
                    '<li class="hidden">
                    <div class="icoBlk">
                    <div class="ico"><img src="'.get_image_src($lesson->mem_image,300,true).'"></div>
                    <div class="name">'.$lesson->mem_name.'</div>
                    </div>
                    <div class="date">'.format_date($lesson->lesson_date_time,'l, M d Y').' at '.format_date($lesson->lesson_date_time,'h:i A').'</div>
                    <div class="bTn">';
                    if ($lesson->completed==0 && $lesson->video_lesson_status==0 && $lesson->lesson_type=='Online') {
                        $res['items'] .='<a href="'.site_url('join-lecture/'.$lesson->encoded_id).'" class="webBtn smBtn" target="_blank">Join</a> ';
                    }
                    $res['items'] .= 
                    '<a href="javascript:void(0)" class="webBtn smBtn view-detail" data-store="'.$lesson->encoded_id.'">view'.($lesson->{$this->session->mem_type.'_noti'}==1?'<span class="dot"></span>':'').'</a>
                    </div>
                    </li>';
                }
            }
            else
                $res['items'] = '<li class="hidden"><div class="semi color">No Lesson available</div></li>';
            exit(json_encode($res));
        }
        else
            $this->load->view("lessons/my-lessons", $this->data); 
    }

    function lesson_detail($encoded_id='') {
        $encoded_id=empty($encoded_id)?$this->input->post('store'):$encoded_id;
        $id=intval(substr(doDecode($encoded_id),4));
        $condition=array('mem_type<>'=>$this->session->mem_type,$this->session->mem_type.'_id'=>$this->session->mem_id,'l.status'=>2);
        if($row = $this->lesson_model->get_lesson($id,$condition)){
            if ($this->session->mem_type=='student' && $row->completed==1)
                $this->mark_compelte_lesson($encoded_id);
            $this->lesson_model->save(array($this->session->mem_type.'_noti'=>0),$id);
            $res['data']='
            <div class="crosBtn"></div>
            <h3>Lesson Detail</h3>
            <ul class="list">
            <li><strong>Name:</strong><span>'.$row->mem_name.'</span></li>
            <li><strong>Subject:</strong><span>'.$row->subject.'</span></li>
            <li><strong>Date:</strong><span>'.format_date($row->lesson_date_time).'</span></li>
            <li><strong>Start Time:</strong><span>'.format_date($row->lesson_date_time,'h:i A').'</span></li>
            <li><strong>Hours:</strong><span>'.hours_format($row->hours).'</span></li>
            <li><strong>Budget:</strong><span>$'.num($row->amount).'</span></li>';
            if ($row->completed==2)
                $res['data'].='<li><strong>Status:</strong><span>Complete</span></li>';
            $res['data'].='<li><strong>Lesson Type:</strong><span>'.$row->lesson_type.'</span></li>';
            if ($row->lesson_type=='In Person')
            $res['data'].='<li><strong>Location:</strong><span>'.$row->address.'</span></li>';

            $res['data'].='
            <li><strong>Detail:</strong><span>'.$row->detail.'</span></li>
            </ul>';

            if ($row->canceled==0 && $row->completed==0)
                $res['data'].='
            <div class="bTn text-center">
            <a href="javascript:void(0)" class="webBtn cnclBtn mActn-btn" data-store="'.$encoded_id.'" data-link="mark-cancel-lesson">Cancel Lesson <i class="fa-spinner hidden"></i></a>
            <a href="javascript:void(0)" class="webBtn colorBtn mActn-btn" data-store="'.$encoded_id.'" data-link="mark-complete-lesson">Mark complete <i class="fa-spinner hidden"></i></a>
            </div>';
            if ($row->canceled==1)
                $res['data'].='<div class="alertBlk reject">Lesson has been canceled.</div>';
            if ($this->session->mem_type=='tutor' && $row->completed==1)
                $res['data'].='<div class="alertBlk accept">You mark this Lesson as completed.</div>';
            if ($row->canceled==0 && $row->completed==2){
                $review=get_mem_rating($row->student_id,$row->id);
                $res['data'].='
                <div class="blk">
                <div class="txtGrp">
                <div class="rateYo" data-rateyo-rating="'.$review->rating.'" data-rateyo-read-only="true"></div>
                </div>'.$review->comment.'
                </div>';
            }

            $res['status']=1;
            exit(json_encode($res));
        }
        die('access denied');
    }

    function mark_compelte_lesson($encoded_id=''){
        $encoded_id=empty($encoded_id)?$this->input->post('store'):$encoded_id;
        $id=intval(substr(doDecode($encoded_id),4));
        $condition=array('mem_type<>'=>$this->session->mem_type,$this->session->mem_type.'_id'=>$this->session->mem_id,'l.status'=>2,'completed<>'=>2,'canceled'=>0);
        if($row = $this->lesson_model->get_lesson($id,$condition)){
            // $this->lesson_model->save(array($this->session->mem_type.'_noti'=>0),$id);
            $res['data']='<div class="crosBtn"></div>
            <h3>'.($this->session->mem_type=='student'?'Leave Feedback':'Mark Complete').'</h3>';
            if($row->completed==1)
                $res['data'].='
            <ul class="list">
            <li><strong>Name:</strong><span>'.$row->mem_name.'</span></li>
            <li><strong>Subject:</strong><span>'.$row->subject.'</span></li>
            <li><strong>Date:</strong><span>'.format_date($row->lesson_date_time).'</span></li>
            <li><strong>Start Time:</strong><span>'.format_date($row->lesson_date_time,'h:i A').'</span></li>
            <li><strong>Hours:</strong><span>'.hours_format($row->hours).'</span></li>
            <li><strong>Budget:</strong><span>$'.$row->amount.'</span></li>
            <li><strong>Location:</strong><span>'.$row->address.'</span></li>
            <li><strong>Detail:</strong><span>'.$row->detail.'</span></li>
            </ul>';
            $res['data'].='
            <form action="'.site_url('complete-lesson').'" method="post" autocomplete="off" class="frmAjax">
            <input type="hidden" name="store" value="'.$encoded_id.'">';

            if ($row->completed==0)
                $res['data'].='
            <div class="txtGrp">
            <h4>Times for Lessons</h4>
            <div class="row formRow">
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 col-xx-4 txtGrp">
            <input type="text" id="date" name="date" class="txtBox datepicker" placeholder="Date" required="">
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 col-xx-4 txtGrp">
            <input type="text" id="start_time" name="start_time" class="txtBox timepicker" placeholder="Start Time" required="">
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 col-xx-4 txtGrp">
            <input type="text" id="end_time" name="end_time" class="txtBox timepicker" placeholder="End Time" required="">
            </div>
            </div>
            </div>';
            if ($this->session->mem_type=='student')
                $res['data'].='
            <div class="txtGrp">
            <h4>Leave Rating now</h4>
            <div class="row formRow">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 col-xx-12 txtGrp">
            <div class="rateYo" id="rating"></div>
            <input type="hidden" name="rating" value="0">
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 col-xx-12 txtGrp">
            <textarea name="cmnt" id="cmnt" class="txtBox" placeholder="Comment" required=""></textarea>
            </div>
            </div>
            </div>';

            $res['data'].='
            <div class="bTn text-center">';
            if ($this->session->mem_type=='tutor' || ($this->session->mem_type=='student' && $row->completed!=1))
                $res['data'].='
            <a href="javascript:void(0)" class="webBtn  cnclBtn mActn-btn" data-store="'.$encoded_id.'" data-link="lesson-detail">Go Back <i class="fa-spinner hidden"></i></a>';
            $res['data'].='
            <button type="submit" class="webBtn colorBtn">Submit <i class="fa-spinner hidden"></i></button>
            </div>
            <div class="alertMsg" style="display: none;"></div>
            </form>';
            $res['status']=1;
            exit(json_encode($res));
        }
        die('access denied');
    }

    function complete_lesson() {
        if ($this->input->post()) {
            $res=array();
            $res['hide_msg']=0;
            $res['scroll_top']=0;
            $res['status'] = 0;
            $res['frm_reset'] = 0;
            $res['redirect_url'] = 0;

            $encoded_id=$this->input->post('store');
            $id=intval(substr(doDecode($encoded_id),4));
            $condition=array('mem_type<>'=>$this->session->mem_type,$this->session->mem_type.'_id'=>$this->session->mem_id,'l.status'=>2,'completed<>'=>2,'canceled'=>0);
            if(!$row = $this->lesson_model->get_lesson($id,$condition)){
                $res['msg']=showMsg('error','Something went worng!');
                exit(json_encode($res));
            }
            $this->form_validation->set_rules('store','store','required',array('required'=>'Something went wrong!'));

            if ($row->completed==0) {
                $this->form_validation->set_rules('date','Date','required');
                $this->form_validation->set_rules('start_time','Start Time','required');
                $this->form_validation->set_rules('end_time','End Time','required');
            }

            if ($this->session->mem_type=='student') {
                $this->form_validation->set_rules('rating','Rating','required|integer',array('integer'=>'Please rate this Lesson'));
                $this->form_validation->set_rules('cmnt','Comment','required',array('required'=>'Please write comment!'));
            }

            if($this->form_validation->run()===FALSE)
            {
                $res['msg'] = validation_errors();
            }else{
                $post = html_escape($this->input->post());
                if ($this->session->mem_type=='tutor' && $row->completed==1){
                    $res['msg']=showMsg('error','Something went worng!');
                    exit(json_encode($res));
                }

                $noti_mem=$this->session->mem_type=='tutor'?'student':'tutor';
                $lesson_vals=array($noti_mem.'_noti'=>1);
                if ($row->completed==0){
                    $lesson_vals['final_date']=db_format_date($post['date']);
                    $lesson_vals['final_start_time']=get_full_time($post['start_time']);
                    $lesson_vals['final_end_time']=get_full_time($post['end_time']);
                    $lesson_vals['completed']=1;

                    if($this->session->mem_type=='tutor'){
                        $txt='Your lesson with '.format_name($this->data["mem_data"]->mem_fname,$this->data["mem_data"]->mem_lname).'. is submitted. click here <a href="javascript:void(0)" class="view-detail" data-store="'.$encoded_id.'" data-link="lesson-detail">click here</a>  to view lesson.';
                        save_notificaiton($row->student_id,$this->session->mem_id,$txt);

                        $txt='Leave a review for your lesson with '.format_name($this->data["mem_data"]->mem_fname,$this->data["mem_data"]->mem_lname).'. <a href="javascript:void(0)" class="view-detail" data-store="'.$encoded_id.'" data-link="lesson-detail">click here</a>';
                        save_notificaiton($row->student_id,$this->session->mem_id,$txt);
                        $res['msg']=showMsg('success','Lesson has been marked completed successfully!');
                        $res['status']=1;
                        $res['frm_reset']=1;
                        // $res['redirect_url']=' ';
                    }
                }

                if ($this->session->mem_type=='student') {
                    if($post['rating']>5 || $post['rating']<0.1){
                        $res['msg'] = '<div class="alert alert-danger alert-sm"><strong>Error!</strong> Please rate this lesson!</div>';
                        exit(json_encode($res));
                    }

                    $save_data=array('from_id'=>$this->session->mem_id,'ref_id'=>$id,'ref_type'=>'lesson');

                    if(!$this->master->getRow('reviews',$save_data)){;
                        $save_data['mem_id']=$row->tutor_id;
                        $save_data['rating']=$post['rating'];
                        $save_data['comment']=$post['cmnt'];


                        $this->master->save('reviews',$save_data);

                        $txt=format_name($this->data["mem_data"]->mem_fname,$this->data["mem_data"]->mem_lname).'. reviewed you '.$post['rating'].' stars. <a href="javascript:void(0)" class="view-detail" data-store="'.$encoded_id.'" data-link="lesson-detail">click here</a> to view lesson.';

                        save_notificaiton($row->tutor_id,$this->session->mem_id,$txt);


                        $txt='You reviewed '.$row->mem_name.'. '.$post['rating'].' stars. <a href="javascript:void(0)" class="view-detail" data-store="'.$encoded_id.'" data-link="lesson-detail">click here</a> to view lesson.';
                        save_notificaiton($this->session->mem_id,$row->tutor_id,$txt);

                        $this->load->model('transaction_model');

                        $percentage_amount=$this->data['site_settings']->site_percentage>0?round(($this->data['site_settings']->site_percentage*$row->amount)/100,2):0;

                        $amount=$row->amount-$percentage_amount;
                        $trx_id=$this->transaction_model->save(array('mem_id'=>$row->tutor_id,'lesson_id'=>$row->id,'amount'=>$amount,'status'=>0));

                        $lesson_vals['completed']=2;

                        $res['status']=1;
                        $res['msg']=showMsg('success','Review has been saved successfully!');
                        $res['frm_reset']=1;

                    }
                }
                $this->lesson_model->save($lesson_vals,$id);
            }
            exit(json_encode($res));
        }
        die('access denied');
    }

    function mark_cancel_lesson(){
        $encoded_id=$this->input->post('store');
        $id=intval(substr(doDecode($encoded_id),4));
        $condition=array('mem_type<>'=>$this->session->mem_type,$this->session->mem_type.'_id'=>$this->session->mem_id,'l.status'=>2,'completed<>'=>2,'canceled'=>0);
        if($row = $this->lesson_model->get_lesson($id,$condition)){
            $res['data']='
            <div class="crosBtn"></div>
            <h3>Cancel Lesson</h3>
            <div class="text-center">
            <p>Are you sure you want to cancel this lesson?</p>
            <div class="bTn">
            <a href="javascript:void(0)" class="webBtn cnclBtn mActn-btn" data-store="'.$encoded_id.'" data-link="lesson-detail">Go Back <i class="fa-spinner hidden"></i></a>
            <a href="javascript:void(0)" class="webBtn redBtn mActn-btn" data-store="'.$encoded_id.'" data-link="cancel-lesson">Confirm <i class="fa-spinner hidden"></i></a>
            </div>
            </div>';
            $res['status']=1;
            exit(json_encode($res));
        }
        die('access denied');
    }
    function cancel_lesson() {
        $encoded_id=$this->input->post('store');
        $id=intval(substr(doDecode($encoded_id),4));
        $condition=array('mem_type<>'=>$this->session->mem_type,$this->session->mem_type.'_id'=>$this->session->mem_id,'l.status'=>2,'completed<>'=>2,'canceled'=>0);
        if($row = $this->lesson_model->get_lesson($id,$condition)){

            $noti_mem=$this->session->mem_type=='tutor'?'student':'tutor';
            $this->lesson_model->save(array($noti_mem.'_noti'=>1,'canceled'=>1,'canceled_by'=>$this->session->mem_id,'final_date'=>date('Y-m-d')),$id);

            $txt='Your lesson with '.format_name($this->data["mem_data"]->mem_fname,$this->data["mem_data"]->mem_lname).'. has been canceled. <a href="javascript:void(0)" class="view-detail" data-store="'.$encoded_id.'" data-link="lesson-detail">click here</a> to view.';
            save_notificaiton($row->{$noti_mem.'_id'},$this->session->mem_id,$txt);

            $res['data']=$this->lesson_detail($encoded_id);
            $res['status']=1;
            exit(json_encode($res));
        }
        die('access denied');
    }

    function my_tutors($page=1) {
        $this->isMemLogged('student');
        $page=intval($page);
        $per_page=40;

        $total=$this->lesson_model->total_student_tutors();

        $total_pages=ceil($total/$per_page);


        $this->load->library('pagination');
        $this->config->load('pagination');

        $config = $this->config->item('pagination');        
        $config['base_url'] = site_url('my-tutors');
        $config['total_rows'] = $total;
        $config['per_page'] = $per_page;
        $this->pagination->initialize($config); 
        $this->data['links'] = $this->pagination->create_links();

        $start=($page-1)*$per_page;

        $this->data['rows']=$this->lesson_model->get_student_tutors('',$start,$per_page,'desc');
        $this->load->view('account/my-tutors',$this->data);
    }

    function requests($page=1) {
        $page=intval($page);
        $per_page=40;

        $condition=array('mem_type<>'=>$this->session->mem_type,$this->session->mem_type.'_id'=>$this->session->mem_id,'l.status<='=>1);

        $total=$this->lesson_model->total_mem_lesson_requests(array($this->session->mem_type.'_id'=>$this->session->mem_id,'status<='=>1));
        $total_pages=ceil($total/$per_page);
        

        if ($this->session->mem_type=='tutor') {
            $this->data['page_title'] ='Lesson Requests';
            $url='lesson-requests';
        }else{
            $this->data['page_title'] ='Requests';
            $url='requests';

        }
        $this->load->library('pagination');
        $this->config->load('pagination');

        $config = $this->config->item('pagination');        
        $config['base_url'] = site_url($url);
        $config['total_rows'] = $total;
        $config['per_page'] = $per_page;
        $this->pagination->initialize($config); 
        $this->data['links'] = $this->pagination->create_links();

        $start=($page-1)*$per_page;

        $this->data['rows'] = $this->lesson_model->get_mem_requests($condition,$start,$per_page,'desc');


        $this->load->view("lessons/requests", $this->data); 


        /*$condition=array('mem_type<>'=>$this->session->mem_type,$this->session->mem_type.'_id'=>$this->session->mem_id);
        if($this->input->post()){
            $cat_id=intval(substr(doDecode($this->input->post('store')),4));
            $res['items'] = "";

            $page=intval($this->input->post('load'));
            $page=$page>0?$page:1;
            $per_page=20;
            $total=$this->lesson_model->total_lessons('',$condition);
            $total_pages=ceil($total/$per_page);
            $start=($page-1)*$per_page;

            $res['reached']=$total_pages>$page?false:true;
            $res['btn']='';
            $res['found']=0;
            $res['load']=$this->input->post('load')?$page+1:2;

            $lessons = $this->lesson_model->get_lessons_by_order($condition,$start,$per_page,$sort_order);
            if (count($lessons) > 0) {
                $res['found']=1;
                if (!$res['reached'])
                    $res['btn'] .= '<div class="loadBtn hidden"><a href="javascript:void(0)" class="webBtn">Load More...</a></div>';
                
                foreach ($lessons as $key => $lesson){
                    $res['items'] .= 
                    '<li class="hidden">
                    <div class="iTem">
                    <div class="image" style="background-image: url(\''. get_image_src($lesson->thumbnail,300).'\')">
                    <a href="'. lesson_url($lesson->id,$lesson->title).'" class="overlay"></a>
                    </div>
                    <div class="heart">
                    <a href="javascript:void(0)" class="active"><i class="fi-heart"></i><span>'.$lesson->likes.'</span></a>
                    </div>
                    <div class="ico"><a href="'. profile_url($lesson->mem_id,get_mem_name($lesson->mem_id)).'"><img src="'. get_image_src(get_mem_image($lesson->mem_id),50,true).'" alt=""></a></div>
                    <div class="cntnt">
                    <h4><a href="'. lesson_url($lesson->id,$lesson->title).'">'. $lesson->title.'</a></h4>
                    <div class="rateYo" data-rateyo-rating="'.get_avg_rating($lesson->id,'lesson').'" data-rateyo-read-only="true"></div>
                    <!--<div class="chBlk">
                    <div class="ch">CH 1</div>
                    <div class="date">5/23</div>-->
                    </div>
                    </div>
                    </div>        
                    </li>';
                }
            }
            else
                $res['items'] = "<li>No lesson</li>";
            exit(json_encode($res));
        }
        
        $this->data['page_title'] = $this->session->mem_type=='tutor'?'Lesson Requests':'Requests';
        $this->data['rows'] = $this->lesson_model->get_mem_requests($condition,'',18);
        // $this->data['rows'] = $this->lesson_model->get_lessons(array($this->session->mem_type.'_id'=>$this->session->mem_id),'',18);
        $this->load->view("lessons/requests", $this->data); */
    }

    function lesson_request_detail() {
        $encoded_id=$this->input->post('store');
        $id=intval(substr(doDecode($encoded_id),4));
        $condition=array('mem_type<>'=>$this->session->mem_type,$this->session->mem_type.'_id'=>$this->session->mem_id);

        $this->lesson_model->get_lesson($id,$condition);
        if($row = $this->lesson_model->get_lesson($id,$condition)){
            if ($row->status!=2)
                $this->lesson_model->save(array($this->session->mem_type.'_noti'=>0),$id);
            $res['data']='
            <div class="crosBtn"></div>
            <h3>'.($this->session->mem_type=='student'?'My Request':'Lesson Request').'</h3>';
            if ($this->session->mem_type=='student')
                $res['data'].='
            <div class="cardBlk text-center">
            <div class="icoBlk">
            <div class="ico"><img src="'.get_image_src($row->mem_image,150,true).'"></div>
            <h4>'.$row->mem_name.'</h4>
            <div class="rating">
            <div class="rateYo" data-rateyo-rating="'.get_avg_mem_rating($row->mem_id).'" data-rateyo-read-only="true"></div>
            <strong>('.count_mem_reviews($row->mem_id).' reviews)</strong>
            </div>
            </div>
            </div>
            <hr>';
            $res['data'].='
            <ul class="list">
            <li><strong>Name:</strong><span>'.$row->mem_name.'</span></li>
            <li><strong>Subject:</strong><span>'.$row->subject.'</span></li>
            <li><strong>Date:</strong><span>'.format_date($row->lesson_date_time).'</span></li>
            <li><strong>Start Time:</strong><span>'.format_date($row->lesson_date_time,'h:i A').'</span></li>
            <li><strong>Hours:</strong><span>'.hours_format($row->hours).'</span></li>
            <li><strong>Budget:</strong><span>$'.num($row->amount).'</span></li>
            <li><strong>Lesson Type:</strong><span>'.$row->lesson_type.'</span></li>';
            if ($row->lesson_type=='In Person')
            $res['data'].='<li><strong>Location:</strong><span>'.$row->address.'</span></li>';

            $res['data'].='<li><strong>Detail:</strong><span>'.$row->detail.'</span></li>
            </ul>';

            if ($this->session->mem_type=='tutor' && $row->status==0)
                $res['data'].='
            <div class="bTn text-center">
            <a href="javascript:void(0)" class="webBtn redBtn actn-btn" data-store="'.$encoded_id.'" data-link="reject-lesson-request">Decline <i class="fa-spinner hidden"></i></a>
            <a href="javascript:void(0)" class="webBtn greenBtn actn-btn" data-store="'.$encoded_id.'" data-link="accept-lesson-request">Accept <i class="fa-spinner hidden"></i></a>
            </div>';

            if ($this->session->mem_type=='student' && $row->status==1){
                $this->load->model('payment_methods_model');
                $credit_cards=$this->payment_methods_model->get_credit_cards($this->sesison->mem_id);
                $res['data'].='
                <div class="formRow row svdCards">
                <hr>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 col-xx-12 txtGrp">
                <h4>Payment Method</h4>
                <select id="payment_method" name="payment_method" class="txtBox selectpicker">';
                foreach ($credit_cards as $card_row) {
                    $res['data'].='<option value="'.$card_row->encoded_id.'"'.(empty($card_row->default_method)?'':' selected=""').'>● ● ● ● ● '.$card_row->last_digits.'</option>';
                }
                $res['data'].='</select>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 col-xx-12 txtGrp">
                <h4>&nbsp;</h4>
                <button type="button" data-store="'.$encoded_id.'" class="webBtn lgBtn colorBtn bkNow">Book Now <i class="fa-spinner hidden"></i></button>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 col-xx-12 txtGrp">
                <a href="'.site_url('payment-methods').'" class="color">Manage Payment Method</a>
                </div>
                </div>
                <div class="alertMsg"></div>';
                /*
                <a href="javascript:void(0)" class="color addCard">Add new card</a>
                $res['data'].='<form action="" method="post" autocomplete="off" class="frmCreditCard">
                <input type="hidden" name="payment_type" value="credit-card">
                <hr>
                <h4>Credit card</h4>
                <div class="row formRow">
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 col-xx-6 txtGrp">
                <input type="text" name="cardnumber" id="cardnumber" class="txtBox" placeholder="Card Number">
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 col-xx-6 txtGrp">
                <input type="text" name="card_holder_name" id="card_holder_name" class="txtBox" placeholder="Card Holder">
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 col-xx-4 txtGrp">
                <select class="txtBox selectpicker" name="exp_month" id="exp_month">
                <option value="">Month</option>';
                for($i=1;$i<=12;$i++){
                    $res['data'].='<option value="'.sprintf('%02d', $i).'" '.(sprintf('%02d', $i)==$mem_data->mem_card_exp_month?'selected':'').'>'.sprintf('%02d', $i).'</option>';
                }
                $res['data'].='</select>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 col-xx-4 txtGrp">
                <select  name="exp_year" id="exp_year" class="txtBox selectpicker">
                <option value="">Year</option>';
                for($i=date('Y');$i<=date('Y')+10;$i++){
                    $res['data'].='<option value="'.$i.'"'.($i==$mem_data->mem_card_exp_year?' selected':'').'>'.$i.'</option>';
                }
                $res['data'].='</select>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 col-xx-4 txtGrp">
                <input type="text" name="cvc" id="cvc" class="txtBox" placeholder="CVC?">
                </div>
                </div>
                <div class="bTn text-center">
                <button type="button" class="webBtn cnclBtn cnclBtnNCard">Cancel</button>
                <button type="submit" data-store="'.$encoded_id.'" class="webBtn colorBtn">Book Now <i class="fa-spinner hidden"></i></button>
                </div>
                <div class="alertMsg"></div>
                </form>';*/
            }elseif ($this->session->mem_type=='tutor' && $row->status==1){
                $res['data'].='<div class="alertBlk accept">Request has been accepted!</div>';
            }

            if ($row->status==2)
                $res['data'].='<div class="alertBlk accept">Lesson has been booked!</div>';
            if ($row->status==3)
                $res['data'].='<div class="alertBlk reject">Request has been Declined.</div>';
            if ($row->canceled==1)
                $res['data'].='<div class="alertBlk reject">Lessons has been Canceled.</div>';
            $res['status']=1;
            exit(json_encode($res));
        }
        die('access denied');
    }

    function accept_lesson_request() {
        $this->isMemLogged('tutor');
        $encoded_id=$this->input->post('store');
        $id=intval(substr(doDecode($encoded_id),4));
        $condition=array('mem_type<>'=>$this->session->mem_type,$this->session->mem_type.'_id'=>$this->session->mem_id,'l.status'=>0);
        if($row = $this->lesson_model->get_lesson($id,$condition)){

            $this->lesson_model->save(array('student_noti'=>1,'status'=>1),$id);

            $txt=format_name($this->data["mem_data"]->mem_fname,$this->data["mem_data"]->mem_lname).'. has accepted your lesson request. <a href="javascript:void(0)" class="view-detail" data-store="'.$encoded_id.'" data-link="get-request-detail">click here</a> to book.';
            save_notificaiton($row->student_id,$this->session->mem_id,$txt);

            $res['data'].='<div class="alertBlk accept">Request has been Accepted.</div>';
            $res['status']=1;
            exit(json_encode($res));
        }
        die('access denied');
    }

    function reject_lesson_request() {
        $this->isMemLogged('tutor');
        $encoded_id=$this->input->post('store');
        $id=intval(substr(doDecode($encoded_id),4));
        $condition=array('mem_type<>'=>$this->session->mem_type,$this->session->mem_type.'_id'=>$this->session->mem_id,'l.status'=>0);
        if($row = $this->lesson_model->get_lesson($id,$condition)){

            $this->lesson_model->save(array('student_noti'=>1,'status'=>3),$id);

            $txt='Your lesson request with '.format_name($this->data["mem_data"]->mem_fname,$this->data["mem_data"]->mem_lname).'. has been rejected.';
            save_notificaiton($row->student_id,$this->session->mem_id,$txt);

            $res['data'].='<div class="alertBlk reject">Request has been Declined.</div>';
            $res['status']=1;
            exit(json_encode($res));
        }
        die('access denied');
    }

    function book_lesson($tutor_id='') {
        $this->isMemLogged('student');
        $this->data['encoded_id']=$tutor_id;
        $tutor_id=intval(doDecode($tutor_id));
        if($tutor_row = $this->member_model->get_tutor($tutor_id)){

            if($this->input->post()){
                $post = html_escape($this->input->post());

                $res=array();
                $res['hide_msg']=0;
                $res['scroll_to_msg']=1;
                $res['status'] = 0;
                $res['frm_reset'] = 0;
                $res['redirect_url'] = 0;

                $this->form_validation->set_message('integer', 'Please select a valid {field}');
                $this->form_validation->set_rules('subject','subject','required|integer');
                $this->form_validation->set_rules('date','Date','required|is_min_valid_date',array('required'=>'Please select a {field}'));
                $this->form_validation->set_rules('time','Time','required');
                $this->form_validation->set_rules('hours','Hours','required|numeric',array('required'=>'Please select a {field}'));
                $this->form_validation->set_rules('lesson_type','Lesson type','required');
                if ($post['lesson_type']=='In Person')
                    $this->form_validation->set_rules('address','Address','required');
                $this->form_validation->set_rules('detail','Detail','required');

                if($this->form_validation->run()===FALSE)
                {
                    $res['msg'] = validation_errors();
                }else{

                    if (!in_array($post['lesson_type'], array('In Person','Online'))) {
                        $res['msg'] = showMsg('error','Please select a valid Lesson type');
                        exit(json_encode($res));
                    }

                    if(!$this->master->getRow('tutor_subjects',array('mem_id'=>$tutor_id,'subject_id'=>$post['subject']))){
                        $res['msg'] = showMsg('error','Please select a valid subject');
                        exit(json_encode($res));
                    }
                    $day=date('l',strtotime($post['date']));
                    if(!$this->master->getRow('tutor_timings',array('mem_id'=>$tutor_id,'day'=>$day,'available'=>1))){
                        $res['msg'] = showMsg('error',"Please select a valid Date");
                        exit(json_encode($res));
                    }

                    $start_time=empty($post['time'])?'':get_full_time($post['time']);
                    $lesson_date_time=db_format_date($post['date']).' '.$start_time;
                    // 'lesson_date'=>db_format_date($post['date']),'time'=>$start_time,

                    $amount=$tutor_row->mem_hourly_rate*$post['hours'];
                    $save_data=array('tutor_id'=>$tutor_id,'student_id'=>$this->session->mem_id,'subject_id'=>$post['subject'],'lesson_date_time'=>$lesson_date_time,'hours'=>$post['hours'],'lesson_type'=>$post['lesson_type'],'address'=>$post['address'],'detail'=>$post['detail'],'amount'=>$amount,'tutor_noti'=>1,'date'=>date("Y-m-d H:i:s"));

                    $lesson_id=$this->lesson_model->save($save_data);
                    $encoded_id=doEncode('lsn-'.$lesson_id);
                    $this->lesson_model->save(array('encoded_id'=>$encoded_id),$lesson_id);

                    $txt='You have a new lesson request from '.format_name($this->data["mem_data"]->mem_fname,$this->data["mem_data"]->mem_lname).'. <a href="javascript:void(0)" class="view-detail" data-link="get-request-detail" data-store="'.$encoded_id.'">click here</a> to view detail.';
                    save_notificaiton($tutor_id,$this->session->mem_id,$txt);

                    $res['msg'] = showMsg('success','Book a Lesson request has been sent successfully!');
                    $res['redirect_url'] = site_url('requests');
                    $res['status'] = 1;
                    $res['frm_reset'] = 1;
                }
                exit(json_encode($res));
            }else{
                $this->data['subjects']=$this->subject_model->get_tutor_subjects($tutor_row->mem_id);
                $tutor_days=$this->master->fetch_row("select group_concat(day) as days from tbl_tutor_timings where mem_id=$tutor_id and available=0");
                if (empty($this->data['subjects'])) {
                // if (empty($tutor_days->days) || empty($this->data['subjects'])) {
                    redirect('search','refresh');
                    exit;
                }
                if(!empty($tutor_days->days)){
                    $tutor_days->days=@explode(',', $tutor_days->days);
                    $not_avail_days='';
                    foreach ($tutor_days->days as $key => $day) {
                        $not_avail_days.=date('w',strtotime($day)).',';
                    }
                    $this->data['not_avail_days']=$not_avail_days;
                    // $this->data['not_avail_days']=trim($not_avail_days,',');
                }

                // exit($this->data['not_avail_days']);
                $this->load->view('lessons/book-lesson', $this->data);
            }
        }
        else
            show_404();
    }

    function book_chat_lesson($requster_id='') {
        $requster_id=intval(doDecode($requster_id));
        if ($this->session->mem_type=='student') {
            $tutor_id=$requster_id;
            $student_id=$this->session->mem_id;
        }else{
            $tutor_id=$this->session->mem_id;
            $student_id=$requster_id;
        }

        if($tutor_row = $this->member_model->get_tutor($tutor_id)){

            if($this->input->post()){
                $post = html_escape($this->input->post());

                $res=array();
                $res['hide_msg']=0;
                $res['scroll_to_msg']=1;
                $res['status'] = 0;
                $res['frm_reset'] = 0;
                $res['redirect_url'] = 0;

                $this->form_validation->set_message('integer', 'Please select a valid {field}');
                $this->form_validation->set_rules('subject','subject','required|integer');
                $this->form_validation->set_rules('date','Date','required|is_min_valid_date',array('required'=>'Please select a {field}'));
                $this->form_validation->set_rules('time','Time','required');
                $this->form_validation->set_rules('hours','Hours','required|numeric',array('required'=>'Please select a {field}'));
                $this->form_validation->set_rules('lesson_type','Lesson type','required');
                if ($post['lesson_type']=='In Person')
                    $this->form_validation->set_rules('address','Address','required');
                $this->form_validation->set_rules('detail','Detail','required');

                if($this->form_validation->run()===FALSE)
                {
                    $res['msg'] = validation_errors();
                }else{
                    
                    if (!in_array($post['lesson_type'], array('In Person','Online'))) {
                        $res['msg'] = showMsg('error','Please select a valid Lesson type');
                        exit(json_encode($res));
                    }

                    if(!$this->master->getRow('tutor_subjects',array('mem_id'=>$tutor_id,'subject_id'=>$post['subject']))){
                        $res['msg'] = showMsg('error','Please select a valid subject');
                        exit(json_encode($res));
                    }
                    $day=date('l',strtotime($post['date']));
                    if(!$this->master->getRow('tutor_timings',array('mem_id'=>$tutor_id,'day'=>$day,'available'=>1))){
                        $res['msg'] = showMsg('error',"Please select a valid Date");
                        exit(json_encode($res));
                    }

                    $start_time=empty($post['time'])?'':get_full_time($post['time']);
                    $lesson_date_time=db_format_date($post['date']).' '.$start_time;
                    // 'lesson_date'=>db_format_date($post['date']),'time'=>$start_time,

                    $amount=$tutor_row->mem_hourly_rate*$post['hours'];
                    $save_data=array('tutor_id'=>$tutor_id,'student_id'=>$student_id,'subject_id'=>$post['subject'],'lesson_date_time'=>$lesson_date_time,'hours'=>$post['hours'],'lesson_type'=>$post['lesson_type'],'address'=>$post['address'],'detail'=>$post['detail'],'amount'=>$amount,'tutor_noti'=>1,'student_noti'=>1,'date'=>date("Y-m-d H:i:s"));

                    $save_data['status']=$this->session->mem_type=='student'?0:1;


                    $lesson_id=$this->lesson_model->save($save_data);
                    $encoded_id=doEncode('lsn-'.$lesson_id);
                    $this->lesson_model->save(array('encoded_id'=>$encoded_id),$lesson_id);

                    if ($this->session->mem_type=='student') {
                        $txt='You have a new lesson request from '.format_name($this->data["mem_data"]->mem_fname,$this->data["mem_data"]->mem_lname).'. <a href="javascript:void(0)" class="view-detail" data-link="get-request-detail" data-store="'.$encoded_id.'">click here</a> to view detail.';

                        save_notificaiton($tutor_id,$this->session->mem_id,$txt);

                        $res['msg'] = showMsg('success','Book a Lesson request has been sent successfully!');
                    }else{
                        $txt=format_name($this->data["mem_data"]->mem_fname,$this->data["mem_data"]->mem_lname).'.scheduled a lesson with you <a href="javascript:void(0)" class="view-detail" data-link="get-request-detail" data-store="'.$encoded_id.'">click here</a> to view detail.';

                        save_notificaiton($student_id,$tutor_id,$txt);
                        $res['msg'] = showMsg('success','Lesson scheduled has been successfully!');
                    }

                    $res['lesson'] = $encoded_id;
                    $res['status'] = 1;
                    $res['frm_reset'] = 1;
                }
                exit(json_encode($res));
            }
        }
        else
            show_404();
    }

    function book_now() {
        $this->isMemLogged('student');
        if ($this->input->post()) {
            $res=array();
            $res['hide_msg']=0;
            $res['scroll_to_msg']=1;
            $res['status'] = 0;
            $res['frm_reset'] = 0;
            $res['redirect_url'] = 0;
            $post = html_escape($this->input->post());

            $this->form_validation->set_rules('store','Store','required',array('required'=>'Something went wrong!'));
            if ($post['payment_type']=='credit-card'){
                $this->form_validation->set_rules('nonce','Nonce','required',array('required'=>"Something went wrong!"));
            }
            else
                $this->form_validation->set_rules('payment_method','Payment Method','required',array('required'=>'Please Select Pyament Method!'));
            if($this->form_validation->run()===FALSE)
            {
                $res['msg'] = validation_errors();
            }else{

                $encoded_id=$post['store'];
                $id=intval(substr(doDecode($encoded_id),4));
                $condition=array('mem_type<>'=>$this->session->mem_type,$this->session->mem_type.'_id'=>$this->session->mem_id,'l.status'=>1);
                if(!$row = $this->lesson_model->get_lesson($id,$condition)){
                    $res['msg']=showMsg('error','Something went worng!');
                    exit(json_encode($res));
                }
                $this->load->model('payment_methods_model');
                if ($post['payment_type']=='credit-card'){
                    /*$last_digits=substr($post['cardnumber'], -4);
                    $expiry=get_month_name($post['exp_month']).', '.$post['exp_year'];
                    $save_data=array('mem_id'=>$this->session->mem_id,'last_digits'=>$last_digits,'expiry'=>$expiry);
                    $card_id=$this->payment_methods_model->save($save_data);
                    $this->payment_methods_model->save(array('encoded_id'=>doEncode('pm-'.$card_id)),$card_id);*/
                }else{
                    $method_id=intval(substr(doDecode($post['payment_method']),3));
                    if(!$method_row=$this->payment_methods_model->get_mem_method($method_id)){
                        $res['msg']=showMsg('error','Please select valid saved card!');
                        exit(json_encode($res));
                    }
                    $charge=$this->my_stripe->charge($this->data['mem_data']->mem_stripe_id,$method_row->method_token,$row->amount,"Charge for ".$this->data['mem_data']->mem_email);
                    if(empty($charge)){
                        $res['msg']=showMsg('error','Something went worng please try again later!');
                        exit(json_encode($res));
                    }
                    
                    
                }
                $this->lesson_model->save(array('tutor_noti'=>1,'status'=>2),$id);

                $txt='Your lesson with '.format_name($this->data["mem_data"]->mem_fname,$this->data["mem_data"]->mem_lname).'. has been confirmed! You can view your upcoming lesson in <a href="'.site_url('my-lessons').'">My Lessons</a>.';
                save_notificaiton($row->tutor_id,$this->session->mem_id,$txt);
                $txt='Lesson has been booked!';
                save_notificaiton($row->student_id,$row->tutor_id,$txt);

                $res['data'].='<div class="alertBlk accept">Lesson has been booked!</div>';
                $res['status'] = 1;
            }
            exit(json_encode($res));
        }
        else
            $this->load->view("payments/add-payment-method", $this->data);
    }

    function edit($id=''){
        $this->isMemLogged('member');
        $this->data['encoded_id']=$id;
        $id=intval(substr(doDecode($id),2));
        if($this->data['row']=$this->lesson_model->get_row_where(array('id'=>$id,'mem_id'=>$this->session->mem_id))){
            if($this->input->post()){
                $res=array();
                $res['hide_msg']=0;
                $res['scroll_to_msg']=1;
                $res['status'] = 0;
                $res['frm_reset'] = 0;
                $res['redirect_url'] = 0;

                $this->form_validation->set_message('integer', 'Please select a valid {field}');
                $this->form_validation->set_rules('title','Title','required');
                $this->form_validation->set_rules('genre1','Genre 1','required|integer',array('required'=>'Please select a {field}'));
                $this->form_validation->set_rules('genre2','Genre 2','integer');
                // $this->form_validation->set_rules('featured','featured','required|integer',array('required'=>'Please select a {field}'));
                // $this->form_validation->set_rules('status','Status','required|integer',array('required'=>'Please select a {field}'));
                $this->form_validation->set_rules('summary','Summary','required');
                // $this->form_validation->set_rules('price','Price','numeric');

                if($this->form_validation->run()===FALSE)
                {
                    $res['msg'] = validation_errors();
                }else{
                    $vals = html_escape($this->input->post());
                    if(!$this->master->getRow('categories',array('id'=>$vals['genre1'],'type'=>'lesson'))){
                        $res['msg'] = showMsg('error','Please select a valid Genre 1');
                        exit(json_encode($res));
                    }
                    if($vals['genre2']>0 && !$this->master->getRow('categories',array('id'=>$vals['genre2'],'type'=>'lesson'))){
                        $res['msg'] = showMsg('error','Please select a valid Genre 2');
                        exit(json_encode($res));
                    }

                    $parental_advisory=$vals['parental_advisory']?1:0;
                    $lesson_vals=array('cat_id'=>$vals['genre1'],'cat_id1'=>$vals['genre2'],'title'=>ucfirst($vals['title']),'summary'=>$vals['summary'],'parental_advisory'=>$parental_advisory);

                    if ($vals["thumbnail"]!= "" && $this->data['row']->thumbnail){
                        curl_call(SCONTENT_SITE.'ajax/remove_file',"image=".$this->data['row']->thumbnail."&pk_key=".doEncode($this->data['mem_data']->mem_token));
                        $lesson_vals['thumbnail']=$vals['thumbnail'];
                    }
                    $this->lesson_model->save($lesson_vals,$id);

                    $res['msg'] = showMsg('success','Comic has been saved successfully!');
                    $res['redirect_url'] = site_url('my-lessons');

                    $res['status'] = 1;
                    $res['frm_reset'] = 1;
                }
                exit(json_encode($res));
            }else{
                $this->data['page_title']='Edit Comic';
                $this->data['categories']=$this->category_model->get_active_categories('lesson');
                $this->load->view('account/create-lesson', $this->data);
            }
        }
        else
            show_404();
    }

    function join_lecture($encoded_id='') {
        $id=intval(substr(doDecode($encoded_id),4));
        $condition=array('mem_type<>'=>$this->session->mem_type,$this->session->mem_type.'_id'=>$this->session->mem_id,'l.status'=>2,'l.completed'=>0,'l.lesson_type'=>'online','l.video_lesson_status'=>0);
        if($this->data['lesson_row'] = $this->lesson_model->get_lesson($id,$condition)){


            $this->load->library("OpenTok/OpenTok");
            $OT = new OpenTok(OpenTok_API_KEY, OpenTok_SECRET_KEY);

            $this->data['member_id']   = $this->session->mem_id;
            $this->data['member_type'] = $this->session->mem_type;
            $this->data['member_name'] = format_name($this->data['mem_data']->mem_fname,$this->data['mem_data']->mem_lname);

            $where = array($this->session->mem_type.'_id'=>$this->session->mem_id);

            $this->data['socket_url']='';
            // $this->data['sessionData']=$this->member_model->getDetails('tbl_chat_video_class',$where);

            $socketdetails=$this->member_model->getDetails('tbl_sitecontent',array('type'=>'socket_url'));

            if(!empty($socketdetails))
                $this->data['socket_url'] = $socketdetails->code;
            if(empty($this->data['lesson_row']->video_session_id))
            {
                $OT->generate_session_id(array('mediaMode' => 'Routed'));
                $sessionid = (array)$OT->sessionId;
                $video_session_id = isset($sessionid[0])?$sessionid[0]:'';

                $end_time=date("H:i", strtotime('+'.hours_format($this->data['lesson_row']->hours)));

                $start_time=date('Y-m-d H:i');
                $date = new DateTime($start_time);
                $f_hours=hours_format($this->data['lesson_row']->hours);
                $f_hours=str_replace('h', 'hour', $f_hours);
                $date->modify('+'.$f_hours);
                $end_time=$date->format('Y-m-d H:i');

                // pr(array('video_session_id'=>$video_session_id,'video_start_time'=>$start_time,'video_end_time'=>$end_time));
                $this->lesson_model->save(array('video_session_id'=>$video_session_id,'video_start_time'=>$start_time,'video_end_time'=>$end_time),$id);
                $this->data['lesson_row']->video_end_time=$end_time;

            }
            $this->data['lecture_time']=get_time_difference($this->data['lesson_row']->video_end_time,date('Y-m-d H:i:00'));
            // pr($this->data['lecture_time']);

            // pr($socketdetails);
           
          //  $chats = $this->getChatMessage($this->data['sessionData']->student_id,$this->data['sessionData']->tutor_id);
         //   $this->data['chatMsg'] = $chats;
            $this->data['openTok_sessionId'] = $this->data['lesson_row']->video_session_id;
            $this->data['openTok_apiKey'] = OpenTok_API_KEY;
            $OT->generate_token($this->data['openTok_sessionId']);
            $this->data['openTok_token'] = isset($OT->token)?$OT->token:''; 
            $this->load->view("lessons/video-lecture",$this->data);
        }
        else
          show_404();
    }
}
?>