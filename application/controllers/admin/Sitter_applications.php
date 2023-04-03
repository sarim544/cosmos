<?php

class Sitter_applications extends Admin_Controller {

    function __construct() {
        parent::__construct();
        $this->isLogged();
        has_access(3);
        $this->load->model('member_model');
    }

    function index() {
        $this->data['enable_datatable'] = TRUE;
        $this->data['pageView'] = ADMIN . '/sitter-applications';
        $this->data['rows'] = $this->member_model->get_rows(array('mem_type'=>'sitter','mem_sitter_application'=>1,'mem_sitter_verified<>'=>1));
        $this->load->view(ADMIN . '/includes/siteMaster', $this->data);
    }

    function view() {
        $this->load->model('service_model');
        $this->data['pageView'] = ADMIN . '/sitter-applications';
        if($this->data['row'] = $this->member_model->getMember($this->uri->segment('4'),array('mem_type'=>'sitter','mem_sitter_application'=>1,'mem_sitter_verified<>'=>1))){

            if ($this->input->post()) {
                $post = $this->input->post();
                $vals = $post;
                
                $vals['mem_sitter_verified']=1;
                $vals['mem_dob'] = db_format_date($post['mem_dob']);
                $vals['mem_has_home'] = intval($post['mem_has_home']);
                $vals['mem_has_fenced_yard'] = intval($post['mem_has_fenced_yard']);
                $vals['mem_allow_furniture'] = intval($post['mem_allow_furniture']);
                $vals['mem_allow_bed'] = intval($post['mem_allow_bed']);
                $vals['mem_non_smoke_house'] = intval($post['mem_non_smoke_house']);
                $vals['mem_not_dog'] = intval($post['mem_not_dog']);
                $vals['mem_not_cat'] = intval($post['mem_not_cat']);
                $vals['mem_one_client'] = intval($post['mem_one_client']);
                $vals['mem_caged_pet'] = intval($post['mem_caged_pet']);
                $vals['mem_children'] = $post['mem_children'];
                $vals['mem_puppy_care'] = intval($post['mem_puppy_care']);
                $vals['mem_cat_care'] = intval($post['mem_cat_care']);
                $vals['mem_play_dates'] = intval($post['mem_play_dates']);
                $vals['mem_first_aid_certified'] = intval($post['mem_first_aid_certified']);
                $vals['mem_apse_member'] = intval($post['mem_apse_member']);
                $vals['mem_petsit_member'] = intval($post['mem_petsit_member']);
                $vals['mem_volunteer_member'] = intval($post['mem_volunteer_memberr']);

                if($vals['mem_pswd']!='')
                    $vals['mem_pswd']=doEncode($vals['mem_pswd']);

                if (($_FILES["mem_image"]["name"] != "")) {
                    $image = upload_vfile('mem_image');
                    if (!empty($image['file_name'])) 
                    {
                        if(!empty($this->data['row']->mem_image))
                            remove_vfile($this->data['row']->mem_image);
                        $vals['mem_image'] = $image['file_name'];
                    }
                }
                unset($vals['days'], $vals['start_time'], $vals['end_time'], $vals['services'], $vals['prices'], $vals['service_for1'], $vals['available_spaces1'], $vals['full_time_home1'], $vals['potty_break1'], $vals['flex_availability1'], $vals['service_for2'], $vals['travel_radius2'], $vals['per_day_visits2'], $vals['per_day_walks2'], $vals['dog_walk_time2'], $vals['dropin_visits_time2'], $vals['potty_break2'], $vals['house_cancel_policy2'], $vals['dropin_cancel_policy2'], $vals['service_for3'], $vals['travel_radius3'], $vals['per_day_visits3'], $vals['per_day_walks3'], $vals['staying_at_client3'], $vals['dog_walk_time3'], $vals['dropin_visits_time3'], $vals['potty_break3'], $vals['house_cancel_policy3'], $vals['dropin_cancel_policy3'], $vals['dog_size4'], $vals['host_cat4'], $vals['host_puppy_under_one4'], $vals['neutered_dog4'], $vals['crate_trained4'], $vals['dog_size5'], $vals['accept_cat5'], $vals['host_puppy_under_one5']);

                $mem_id = $this->member_model->save($vals, $this->uri->segment(4));

                $this->master->delete('mem_services', 'mem_id', $mem_id );
                foreach ($post['services'] as $key => $service) {
                    $data = array('mem_id' => $mem_id , 'service_id' => $service, 'price' => $post['prices'][$key]);
                    switch ($service) {
                        case 1:
                            $data['service_for'] = $post['service_for1'];
                            $data['available_spaces'] = intval($post['available_spaces1']);
                            $data['full_time_home'] = intval($post['full_time_home1']);
                            $data['potty_break'] = $post['potty_break1'];
                            $data['flex_availability'] = intval($post['flex_availability1']);
                            break;
                        case 2:
                            $data['service_for'] = $post['service_for2'];
                            $data['travel_radius'] = floatval($post['travel_radius2']);
                            $data['per_day_visits'] = intval($post['per_day_visits2']);
                            $data['per_day_walks'] = intval($post['per_day_walks2']);
                            $data['dog_walk_time'] = $post['dog_walk_time2'];
                            $data['dropin_visits_time'] = $post['dropin_visits_time2'];
                            $data['potty_break'] = $post['potty_break2'];
                            $data['house_cancel_policy'] = $post['house_cancel_policy2'];
                            $data['dropin_cancel_policy'] = $post['dropin_cancel_policy2'];

                            break;
                        case 3:
                            $data['service_for'] = $post['service_for3'];
                            $data['travel_radius'] = floatval($post['travel_radius3']);
                            $data['per_day_visits'] = intval($post['per_day_visits3']);
                            $data['per_day_walks'] = intval($post['per_day_walks3']);
                            $data['staying_at_client'] = intval($post['staying_at_client3']);
                            $data['dog_walk_time'] = $post['dog_walk_time3'];
                            $data['dropin_visits_time'] = $post['dropin_visits_time3'];
                            $data['potty_break'] = $post['potty_break3'];
                            $data['house_cancel_policy'] = $post['house_cancel_policy3'];
                            $data['dropin_cancel_policy'] = $post['dropin_cancel_policy3'];

                            break;
                        case 4:
                            $data['dog_size'] = $post['dog_size4'];
                            $data['host_cat'] = intval($post['host_cat4']);
                            $data['host_puppy_under_one'] = intval($post['host_puppy_under_one4']);
                            $data['neutered_dog'] = intval($post['neutered_dog4']);
                            $data['crate_trained'] = intval($post['crate_trained4']);

                            break;
                        case 5:
                            $data['dog_size'] = $post['dog_size5'];
                            $data['accept_cat'] = intval($post['accept_cat5']);
                            $data['host_puppy_under_one'] = intval($post['host_puppy_under_one5']);

                            break;
                        default:
                            # code...
                            break;
                    }
                    $this->master->save('mem_services',$data);
                }

                $this->master->delete('sitter_timings','mem_id',$mem_id);
                $week_days=get_week_days();
                foreach ($week_days as $day_key=> $day) {
                    $available=$post['days'][$day_key]!=''?1:0;
                    $start_time=$post['start_time'][$day_key]?get_full_time($post['start_time'][$day_key]):'';
                    $end_time=$post['end_time'][$day_key]?get_full_time($post['end_time'][$day_key]):'';

                    $this->master->save('sitter_timings',array('mem_id'=>$mem_id,'day'=>$day,'start_time'=>$start_time,'end_time'=>$end_time,'available'=>$available));
                }

                $mem_data = array('name' => $this->data['row']->mem_fname.' '.$this->data['row']->mem_lname, "email" => $this->data['row']->mem_email);

                if ($vals['mem_sitter_verified']==1) {
                    send_site_email($mem_data,'approved_sitter');
                    setMsg('success', 'Sitter Application has been Approved successfully!');
                }elseif ($vals['mem_sitter_verified']==2) {
                    send_site_email($mem_data,'declined_sitter');
                    setMsg('success', 'Sitter Application has been declined successfully!');
                }else{
                    setMsg('success', 'Sitter Application has saved successfully!');
                }

                redirect(ADMIN . '/sitter-applications', 'refresh');
                exit;
            }
            $this->data['enable_editor'] = TRUE;
            $this->data['services'] = $this->service_model->get_rows();
            $this->data['sitter_timings'] = $this->master->getRows('sitter_timings', array('mem_id' => $this->uri->segment('4')));
            $this->load->view(ADMIN . '/includes/siteMaster', $this->data);
        }
        else
            show_404();
    }

    function declince($id=0) {
        $mem_id = intval($id);
        if($mem_row=$this->member_model->getMember($mem_id,array('mem_type'=>'sitter','mem_sitter_application'=>1,'mem_sitter_verified'=>0))){

            $this->member_model->save(array('mem_sitter_verified'=>2), $mem_id);

            $mem_data=array('name'=>$mem_row->mem_fname.' '.$mem_row->mem_lname,"email"=>$mem_row->mem_email);
            send_site_email($mem_data,'declined_sitter');

            setMsg('success', 'Sitter Application has been declined successfully.');
            redirect(ADMIN . '/sitter-applications/view/'.$mem_id, 'refresh');
            // redirect(ADMIN . '/sitter-applications', 'refresh');
            exit;
        }
        else
            show_404();
    }
}
?>