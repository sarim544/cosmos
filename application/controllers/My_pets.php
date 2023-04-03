<?php

class My_pets extends MY_Controller {

    function __construct() {
        parent::__construct();
        $this->isMemLogged($this->session->mem_type);
        $this->load->model('member_model');
        $this->load->model('pet_model');
        $this->load->model('breed_model');
    }

    function get_my_pets() {
        $pets = $this->pet_model->get_mem_pets(array("p.mem_id" => $this->session->mem_id), '', '', 'asc', 'p.name');
        if (count($pets) > 0) {
            $res['pets'] = $pets;
            $res['found'] = 1;
        } else {
            $res['msg'] = "No Result Found";
            $res['found'] = 0;
        }
        exit(json_encode($res));
    }

    function index() {
        $this->isMemLogged('owner');
        if($this->input->post()){
            $condition = array("p.mem_id" => $this->session->mem_id);
            $res['items'] = "";
            $res['reached'] = true;
            $res['found'] = 1;
            $res['load'] = 1;

            $page = intval($this->input->post('load'));
            $page = $page>0?$page:1;
            $per_page = 20;
            $total = $this->pet_model->total_mem_pets($condition);
            $total_pages = ceil($total/$per_page);
            $start = ($page-1)*$per_page;

            $res['reached'] = $total_pages>$page?false:true;


            $pets = $this->pet_model->get_mem_pets($condition, $start, $per_page);
            if (count($pets) > 0) {
                $res['found'] = 1;
                $res['load'] = $page+1;

                foreach ($pets as $key => $pet){
                    $res['items'] .=  '
                    <div class="jobBlk vwDtl hidden" data-store="'.$pet->encoded_id.'">
                        <ul class="lst">
                            <li>
                                <div class="icoBlk">
                                    <div class="ico"><img src="'.get_image_src($pet->image, 150, true).'" alt=""></div>
                                    <div class="name">'.$pet->name.' <em>'.$pet->breed.'</em></div>
                                </div>
                            </li>
                            <li class="price_bold">'.$pet->weight.'lbs</li>
                            <li class="date">'.$pet->age_year.' year and '.$pet->age_month.' months</li>
                            <!-- <li><span class="miniLbl green">Complete</span></li> -->
                        </ul>
                        <div class="dropDown">
                            <div class="more dropBtn"><span></span></div>
                            <ul class="dropCnt dropLst right">
                                <li><a href="javascript:void(0)" class="edtBtn">Edit</a></li>
                                <li><a href="'.site_url('delete-pet/'.$pet->id).'">Delete</a></li>
                            </ul>
                        </div>
                    </div>';
                }
            }
            else 
                $res['items'] = '<div class="jobBlk hidden"><ul class="lst"><li><p>No pet available</p></li></ul></div>';
            // $res['query'] = $this->db->last_query();
            exit(json_encode($res));
        }else{
            $this->data['pet_breeds'] = $this->breed_model->get_rows();
            $this->load->view("owner/pets", $this->data); 
        }
    }

    function add_new() {
        $this->isMemLogged('owner');
        if($this->input->post()){

            $res=array();
            $res['hide_msg']=0;
            $res['scroll_to_msg']=1;
            $res['status'] = 0;
            $res['frm_reset'] = 0;
            $res['redirect_url'] = 0;

            $this->form_validation->set_message('integer', 'Please select a valid {field}');
            $this->form_validation->set_rules('pet_type','Pet Type','required');
            $this->form_validation->set_rules('name','Name','required');
            $this->form_validation->set_rules('breed','Breed','required|integer',array('integer'=>'Please select valid {field}'));
            $this->form_validation->set_rules('weight','Breed','required|integer',array('integer'=>'Please enter valid {field}'));
            $this->form_validation->set_rules('age_year','Age (years)','required|integer',array('integer'=>'Please enter valid {field}'));
            $this->form_validation->set_rules('age_month','Age (months)','required|integer',array('integer'=>'Please enter valid {field}'));
            $this->form_validation->set_rules('gender','Gender','required');
            $this->form_validation->set_rules('neutered','Neutered','required|integer',array('integer'=>'Please Select {field}'));
            $this->form_validation->set_rules('micro_chipped','Micro-Chipped','required|integer',array('integer'=>'Please Select {field}'));
            $this->form_validation->set_rules('well_dogs','Along well with dogs','required|integer',array('integer'=>'Please Select {field}'));
            $this->form_validation->set_rules('well_cats','Along well with cats','required|integer',array('integer'=>'Please Select {field}'));
            $this->form_validation->set_rules('well_children','Along well with children','required|integer',array('integer'=>'Please Select {field}'));
            $this->form_validation->set_rules('house_trained','Along well with children','required|integer',array('integer'=>'Please Select {field}'));
            // $this->form_validation->set_rules('requirements','Special requirements','required');

            if($this->form_validation->run()===FALSE)
            {
                $res['msg'] = validation_errors();
            }else{
                $post = html_escape($this->input->post());
                if(!$this->breed_model->get_row($post['breed'])){
                    $res['msg'] = showMsg('error','Please select a valid Breed');
                    exit(json_encode($res));
                }
                if(!in_array($post['pet_type'], array('dog', 'cat'))){
                    $res['msg'] = showMsg('error','Please select a valid Pet Type');
                    exit(json_encode($res));
                }
                if(!in_array($post['gender'], array('male', 'female'))){
                    $res['msg'] = showMsg('error','Please select a valid Gender');
                    exit(json_encode($res));
                }
                if(!in_array($post['neutered'], array(1, 0))){
                    $res['msg'] = showMsg('error','Please select a valid Neutered');
                    exit(json_encode($res));
                }
                if(!in_array($post['micro_chipped'], array(1, 0))){
                    $res['msg'] = showMsg('error','Please select a valid Micro-Chipped');
                    exit(json_encode($res));
                }
                if(!in_array($post['well_dogs'], array(1, 0))){
                    $res['msg'] = showMsg('error','Please select a valid Along well with dogs?');
                    exit(json_encode($res));
                }
                if(!in_array($post['well_cats'], array(1, 0))){
                    $res['msg'] = showMsg('error','Please select a valid Along well with cats?');
                    exit(json_encode($res));
                }
                if(!in_array($post['well_children'], array(1, 0))){
                    $res['msg'] = showMsg('error','Please select a valid Along well with children?');
                    exit(json_encode($res));
                }
                if(!in_array($post['house_trained'], array(1, 0))){
                    $res['msg'] = showMsg('error','Please select a valid House-trained');
                    exit(json_encode($res));
                }
                if (count($post['images'])<1 || $post['images'][0]=='') {
                    $res['msg'] = showMsg('error', 'Please select images!');
                    exit(json_encode($res));
                }

                $save_data = array('mem_id' => $this->session->mem_id, 'pet_type' => $post['pet_type'], 'name' => $post['name'], 'breed_id' => $post['breed'], 'weight' => $post['weight'], 'age_year' => $post['age_year'], 'age_month' => $post['age_month'], 'gender' => $post['gender'], 'neutered' => $post['neutered'], 'micro_chipped' => $post['micro_chipped'], 'well_dogs' => $post['well_dogs'], 'well_cats' => $post['well_cats'], 'well_children' => $post['well_children'], 'house_trained' => $post['house_trained'], 'special_requirements' => $post['requirements'], 'status' => 1, 'date' => date("Y-m-d H:i:s"));

                $pet_id = $this->pet_model->save($save_data);
                if ($pet_id>0) {
                    $encoded_id=doEncode('pt-'.$pet_id);
                    $this->pet_model->save(array('encoded_id'=>$encoded_id),$pet_id);

                    $new_images = $this->master->getRows('gallery', array('ref_id' => null, 'ref_type' => 'pet'));
                    $counter = 0;
                    foreach ($new_images as $key => $img) {
                        if(in_array($img->image, $post['images'])){
                            $image_data = array('ref_id' => $pet_id);
                            if ($counter == 0)
                                $image_data['main'] = 1;
                            $this->master->save('gallery', $image_data, 'id', $img->id);
                            $counter++;
                        }
                    }

                    $res['msg'] = showMsg('success', 'Pet has been saved successfully!');
                    if (empty($post['bknrd']))
                        $res['redirect_url'] = site_url('my-pets');
                    $res['status'] = 1;
                    $res['frm_reset'] = 1;
                }
            }
            exit(json_encode($res));
        }
        else
            show_404();
    }

    function edit($id=''){
        $this->isMemLogged('owner');
        $id = intval(substr(doDecode($id), 3));
        // $id=intval(substr(doDecode($this->input->post('store')),3));
        if($this->pet_model->get_row_where(array('id' => $id, 'mem_id' => $this->session->mem_id)) && $this->input->post()){
            $res = array();
            $res['hide_msg'] = 0;
            $res['scroll_to_msg'] = 1;
            $res['status'] = 0;
            $res['frm_reset'] = 0;
            $res['redirect_url'] = 0;

            $post = html_escape($this->input->post());
            // pr($post);

            $this->form_validation->set_message('integer', 'Please select a valid {field}');
            $this->form_validation->set_rules('pet_type', 'Pet Type', 'required');
            $this->form_validation->set_rules('name', 'Name', 'required');
            $this->form_validation->set_rules('breed', 'Breed', 'required|integer',array('integer'=>'Please select valid {field}'));
            $this->form_validation->set_rules('weight', 'Breed', 'required|integer',array('integer'=>'Please enter valid {field}'));
            $this->form_validation->set_rules('age_year', 'Age (years)', 'required|integer',array('integer'=>'Please enter valid {field}'));
            $this->form_validation->set_rules('age_month', 'Age (months)', 'required|integer',array('integer'=>'Please enter valid {field}'));
            $this->form_validation->set_rules('gender', 'Gender', 'required');
            $this->form_validation->set_rules('neutered', 'Neutered', 'required|integer',array('integer'=>'Please Select {field}'));
            $this->form_validation->set_rules('micro_chipped', 'Micro-Chipped', 'required|integer',array('integer'=>'Please Select {field}'));
            $this->form_validation->set_rules('well_dogs', 'Along well with dogs', 'required|integer',array('integer'=>'Please Select {field}'));
            $this->form_validation->set_rules('well_cats', 'Along well with cats', 'required|integer',array('integer'=>'Please Select {field}'));
            $this->form_validation->set_rules('well_children', 'Along well with children', 'required|integer',array('integer'=>'Please Select {field}'));
            $this->form_validation->set_rules('house_trained', 'Along well with children', 'required|integer',array('integer'=>'Please Select {field}'));
            // $this->form_validation->set_rules('requirements', 'Special requirements', 'required');

            if($this->form_validation->run()===FALSE)
                $res['msg'] = validation_errors();
            $post = html_escape($this->input->post());
            if(!$this->breed_model->get_row($post['breed']))
                $res['msg'] .= showMsg('error', 'Please select a valid Breed');
                
            if(!in_array($post['pet_type'], array('dog', 'cat')))
                $res['msg'] .= showMsg('error', 'Please select a valid Pet Type');
                
            if(!in_array($post['gender'], array('male', 'female')))
                $res['msg'] .= showMsg('error', 'Please select a valid Gender');
                
            if(!in_array($post['neutered'], array(1, 0)))
                $res['msg'] .= showMsg('error', 'Please select a valid Neutered');
                
            if(!in_array($post['micro_chipped'], array(1, 0)))
                $res['msg'] .= showMsg('error', 'Please select a valid Micro-Chipped');
                
            if(!in_array($post['well_dogs'], array(1, 0)))
                $res['msg'] .= showMsg('error', 'Please select a valid Along well with dogs?');
                
            if(!in_array($post['well_cats'], array(1, 0)))
                $res['msg'] .= showMsg('error', 'Please select a valid Along well with cats?');
                
            if(!in_array($post['well_children'], array(1, 0)))
                $res['msg'] .= showMsg('error', 'Please select a valid Along well with children?');
                
            if(!in_array($post['house_trained'], array(1, 0)))
                $res['msg'] .= showMsg('error', 'Please select a valid House-trained');
            

            $save_data = array('pet_type' => $post['pet_type'], 'name' => $post['name'], 'breed_id' => $post['breed'], 'weight' => $post['weight'], 'age_year' => $post['age_year'], 'age_month' => $post['age_month'], 'gender' => $post['gender'], 'neutered' => $post['neutered'], 'micro_chipped' => $post['micro_chipped'], 'well_dogs' => $post['well_dogs'], 'well_cats' => $post['well_cats'], 'well_children' => $post['well_children'], 'house_trained' => $post['house_trained'], 'special_requirements' => $post['requirements']);


            $new_images = $this->master->getRows('gallery', array('ref_id' => null, 'ref_type' => 'pet'));
            $mem_images = $this->master->getRows('gallery', array('ref_id' => $id, 'ref_type' => 'pet'));
            if (count($post['images'])<1 || $post['images'][0]=='' || count($mem_images)<1)
                $res['msg'] .= showMsg('error', 'Please select images!');

            if (!empty($res['msg']))
                exit(json_encode($res));

            $pet_id = $this->pet_model->save($save_data, $id);
            $this->master->update('gallery', array('main' => 0), array('ref_id' => $pet_id, 'ref_type' => 'pet'));
            $counter = 0;
            foreach ($new_images as $key => $img) {
                if(in_array($img->image, $post['images'])) {
                    $image_data = array('ref_id' => $pet_id);
                    if ($counter === 0 && count($mem_images)<1)
                        $image_data['main'] = 1;
                    $this->master->save('gallery', $image_data, 'id', $img->id);
                    $counter++;
                }
            }
            foreach ($mem_images as $key => $img) {
                if(!in_array($img->image, $post['images'])) {
                    $this->master->delete('gallery', 'id' , $img->id);
                    remove_vfile($img->image);
                }
            }

            $res['msg'] = showMsg('success','Pet has been saved successfully!');
            $res['redirect_url'] = site_url('my-pets');
            $res['status'] = 1;
            $res['frm_reset'] = 1;
            exit(json_encode($res));
        }
        else
            show_404();
    }

    function delete($id){
        $this->isMemLogged('owner');
        $id = intval($id);
        if ($this->pet_model->get_pet($id, array('p.mem_id' => $this->session->mem_id))) {
            $this->pet_model->delete($id);
            remove_gellary_vfile($id, 'pet');
            setMsg('success', 'Pet has been deleted!');
            redirect('my-pets');
            exit;
        }
        else
            show_404();
    }

    function get_pet(){
        $this->isMemLogged('owner');
        $id=intval(substr(doDecode($this->input->post('store')),3));
        if($row = $this->pet_model->get_pet($id,array('p.mem_id' => $this->session->mem_id))) {
            $row->images = $this->master->getRows('gallery', array('ref_id' => $row->id, 'ref_type' => 'pet', 'main' => 0));
            $res['data'] = '
                <div class="crosBtn"></div>
                <h2>Pet Detail</h2>
                <ul class="list">
                    <li>
                        <div>Name:</div>
                        <div>'.$row->name.'</div>
                    </li>
                    <li>
                        <div>Dog breed:</div>
                        <div>'.$row->breed.'</div>
                    </li>
                    <li>
                        <div>Age</div>
                        <div>'.$row->age_year.' years and '.$row->age_month.' months</div>
                    </li>
                    <li>
                        <div>Weight:</div>
                        <div>'.$row->weight.'lbs</div>
                    </li>
                    <li>
                        <div>Gender:</div>
                        <div>'.ucfirst($row->gender).'</div>
                    </li>
                    <!-- 
                    <li>
                        <div>Tracking Chip:</div>
                        <div>'.$row->micro_chipped.'</div>
                    </li>
                    -->
                    <li>
                        <div>Neutered:</div>
                        <div>'.get_yes_no($row->neutered).'</div>
                    </li>
                    <li>
                        <div>House Trained:</div>
                        <div>'.get_yes_no($row->house_trained).'</div>
                    </li>
                    <li>
                        <div>Well with dogs:</div>
                        <div>'.get_yes_no($row->well_dogs).'</div>
                    </li>
                    <li>
                        <div>Well with cats:</div>
                        <div>'.get_yes_no($row->well_cats).'</div>
                    </li>
                    <li>
                        <div>With children:</div>
                        <div>'.get_yes_no($row->well_children).'</div>
                    </li>
                    <li>
                        <div>Special requirements:</div>
                        <div>'.$row->special_requirements.'</div>
                    </li>
                </ul>
                <hr>
                <h4>Photos</h4>
                <ul id="gallery" class="imgLst flex">';
                    $res['data'] .= '<li data-src="'.get_image_src($row->image,300,true).'">
                        <div class="image"><img src="'.get_image_src($row->image,300,true).'" alt=""></div>
                    </li>';
                    foreach ($row->images as $key => $img) {
                        $res['data'] .= '<li data-src="'.get_image_src($img->image,300,true).'">
                            <div class="image"><img src="'.get_image_src($img->image,300,true).'" alt=""></div>
                        </li>';
                    }
                $res['data'] .= '</ul>';
            $res['status']=1;
            exit(json_encode($res));
        }
        exit('access denied!');
    }

    function detail(){
        // $id=intval(substr(doDecode($id),3));
        $id = intval(substr(doDecode($this->input->post('store')),3));
        if ($row = $this->pet_model->get_pet($id, array('status' => 1))) {
            $row->images = $this->master->getRows('gallery', array('ref_id' => $row->id, 'ref_type' => 'pet', 'main' => 0));
            /*$res['data'] .= '<li data-src="'.get_image_src($row->image,300,true).'">
                        <div class="image"><img src="'.get_image_src($row->image,300,true).'" alt=""></div>
                    </li>';
                    foreach ($row->images as $key => $img) {
                        $res['data'] .= '<li data-src="'.get_image_src($img->image,300,true).'">
                            <div class="image"><img src="'.get_image_src($img->image,300,true).'" alt=""></div>
                        </li>';
                    }*/
            exit(json_encode($row));
        }
        else
            show_404();
    }
}
?>