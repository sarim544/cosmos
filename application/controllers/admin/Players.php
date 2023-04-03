<?php

class Players extends Admin_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->isLogged();
        has_access(2);
        $this->load->model('member_model');
    }

    public function index() {
        $this->data['enable_datatable'] = TRUE;
        $this->data['pageView'] = ADMIN . '/players';
        $this->data['rows'] = $this->member_model->get_rows(array('mem_type' => 'player', 'mem_player_verified' => 1));
        $this->load->view(ADMIN . '/includes/siteMaster', $this->data);
    }

    function player_registrations()
    {
        $this->data['enable_datatable'] = TRUE;
        $this->data['pageView'] = ADMIN . '/player_registrations';
        $this->data['rows'] = $this->member_model->get_rows(array('mem_type' => 'player', 'mem_player_verified' => 0, 'mem_player_application' => 0));
        $this->load->view(ADMIN . '/includes/siteMaster', $this->data);
    }

    function manage()
    {
        $this->load->model('service_model');
        $this->data['pageView'] = ADMIN . '/players';
        $row = $this->member_model->getMember($this->uri->segment('4'));
        // pr($row);
        if ($this->input->post()) {
            $post = $this->input->post();
            $vals = $post;

            $vals['mem_dob'] = db_format_date($post['mem_dob']);
            $vals['mem_type'] = 'player';
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
                $vals['mem_pswd'] = doEncode($vals['mem_pswd']);
            else
                unset($vals['mem_pswd']);

            if (($_FILES["mem_image"]["name"] != "")) {
                $image = upload_vfile('mem_image');
                if (!empty($image['file_name'])) {
                    if(!empty($row->mem_image))
                        remove_vfile($row->mem_image);
                    $vals['mem_image'] = $image['file_name'];
                }
            }
            if (($_FILES["mem_video"]["name"] != "")) {
                $image = upload_vfile('mem_video', 'video');
                if (!empty($image['file_name'])) {
                    if(!empty($row->mem_video))
                        remove_vfile($row->mem_video, 'att');
                    $vals['mem_video'] = $image['file_name'];
                }
            }
            
            unset($vals['dlt_images'], $vals['days'], $vals['start_time'], $vals['end_time'], $vals['services'], $vals['prices'], $vals['service_for1'], $vals['available_spaces1'], $vals['full_time_home1'], $vals['potty_break1'], $vals['flex_availability1'], $vals['service_for2'], $vals['travel_radius2'], $vals['per_day_visits2'], $vals['per_day_walks2'], $vals['dog_walk_time2'], $vals['dropin_visits_time2'], $vals['potty_break2'], $vals['house_cancel_policy2'], $vals['dropin_cancel_policy2'], $vals['service_for3'], $vals['travel_radius3'], $vals['per_day_visits3'], $vals['per_day_walks3'], $vals['staying_at_client3'], $vals['dog_walk_time3'], $vals['dropin_visits_time3'], $vals['potty_break3'], $vals['house_cancel_policy3'], $vals['dropin_cancel_policy3'], $vals['dog_size4'], $vals['host_cat4'], $vals['host_puppy_under_one4'], $vals['neutered_dog4'], $vals['crate_trained4'], $vals['dog_size5'], $vals['accept_cat5'], $vals['host_puppy_under_one5']);
            // pr($vals);
            $mem_id = $this->member_model->save($vals, $this->uri->segment(4));
            foreach ($_FILES['upload_files']['name'] as $key => $file_name) {
                $_FILES['image_file']['name'] = $file_name;
                $_FILES['image_file']['type'] = $_FILES['upload_files']['type'][$key];
                $_FILES['image_file']['tmp_name'] = $_FILES['upload_files']['tmp_name'][$key];
                $_FILES['image_file']['error'] = $_FILES['upload_files']['error'][$key];
                $_FILES['image_file']['size'] = $_FILES['upload_files']['size'][$key];
                if($_FILES['image_file']['name']!=''){
                    $image = upload_vfile('image_file');
                    if (!empty($image['file_name'])) {
                        $this->master->save('gallery', array('ref_id' => $mem_id,'image' => $image['file_name'], 'ref_type' => 'member', 'admin' => 1, 'date' => date('Y-m-d H:i:s')));
                    }
                }
            }
            foreach ($post['dlt_images'] as $key => $dlt_img) {
                remove_vfile($dlt_img);
                $this->master->delete_where('gallery', array('ref_id' => $mem_id, 'ref_type' => 'member', 'image' => $dlt_img, 'admin' => 1));
            }
            // print_query();

            $this->master->delete('mem_services', 'mem_id', $mem_id);
            foreach ($post['services'] as $key => $service) {
                $data = array('mem_id' => $mem_id, 'service_id' => $service, 'price' => $post['prices'][$key]);
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

            $this->master->delete('player_timings','mem_id',$mem_id);
            $week_days=get_week_days();
            foreach ($week_days as $day_key=> $day) {
                $available=$post['days'][$day_key]!=''?1:0;
                $start_time=$post['start_time'][$day_key]?get_full_time($post['start_time'][$day_key]):'';
                $end_time=$post['end_time'][$day_key]?get_full_time($post['end_time'][$day_key]):'';

                $this->master->save('player_timings',array('mem_id'=>$mem_id,'day'=>$day,'start_time'=>$start_time,'end_time'=>$end_time,'available'=>$available));
            }


            setMsg('success', 'Sitter has been saved successfully.');
            redirect(ADMIN . '/players/manage/' . $this->uri->segment(4), 'refresh');
            exit;
        }
        $this->data['enable_editor'] = TRUE;
        $this->data['services'] = $this->service_model->get_rows();
        $this->data['player_timings'] = $this->master->getRows('player_timings',array('mem_id' => $this->uri->segment('4')));
        $this->data['row'] = $this->member_model->getMember($this->uri->segment('4'));
        $this->data['row']->images = $this->master->getRows('gallery', array('ref_id' => $this->uri->segment('4'), 'ref_type' => 'member', 'admin' => 1));
        $this->load->view(ADMIN . '/includes/siteMaster', $this->data);
    }

    function active() {
        $mem_id = $this->uri->segment(4);
        $vals['mem_status'] = '1';
        $this->member_model->save($vals, $mem_id);
        setMsg('success', 'Sitter has been activated successfully.');
        redirect(ADMIN . '/players', 'refresh');
    }

    function inactive() {
        $mem_id = $this->uri->segment(4);
        $vals['mem_status'] = '0';
        $this->member_model->save($vals, $mem_id);
        setMsg('success', 'Sitter has been deactivated successfully.');
        redirect(ADMIN . '/players', 'refresh');
    }

    function delete() {
        has_access(10);
        $this->remove_file($this->uri->segment(4));
// $this->remove_member_data($this->uri->segment(4));
        $this->member_model->delete($this->uri->segment('4'));
        setMsg('success', 'Sitter has been deleted successfully.');
        redirect(ADMIN . '/players', 'refresh');
    }

    function status() {
        echo $this->member_model->changeStatus($this->uri->segment('4'));
    }

    function remove_file($id, $type = '') {
        $arr = $this->member_model->getMember($id);
        $filepath = UPLOAD_PATH . "/players/" . $arr->image;
        $filepath_thumb = UPLOAD_PATH . "/players/thumb_" . $arr->image;
        $filepath_ico = UPLOAD_PATH . "/players/ico_" . $arr->image;
        if (is_file($filepath)) {
            unlink($filepath);
        }
        if (is_file($filepath_thumb)) {
            unlink($filepath_thumb);
        }
        if (is_file($filepath_ico)) {
            unlink($filepath_ico);
        }
        return;
    }

    function transactions($id=0){
        if($this->data['member_row'] = $this->member_model->getMember($id))
        {
            $this->load->model('transaction_model');
            $this->data['rows'] = $this->transaction_model->get_rows(array('mem_id'=>$id),'','','desc');
            $this->data['enable_datatable'] = TRUE;
            $this->data['pageView'] = ADMIN . '/transactions';
            $this->load->view(ADMIN . '/includes/siteMaster', $this->data);
        }
        else
            show_404();

    }
    /*function withdraws($id=0){
        if($this->data['member_row'] = $this->member_model->getMember($id))
        {
            $this->load->model('transaction_model');
            $this->data['rows'] = $this->transaction_model->get_player_withdraws($id);
            $this->data['enable_datatable'] = TRUE;
            $this->data['pageView'] = ADMIN . '/withdraw-requests';
            $this->load->view(ADMIN . '/includes/siteMaster', $this->data);
        }
        else
            show_404();

    }*/
    function chats($id=0)
    {
        if($this->data['member_row'] = $this->member_model->getMember($id,array('mem_type'=>'player')))
        {
            $this->load->model('chat_model');
            $this->data['rows'] = $this->chat_model->get_mem_msgs_list($id);
            $this->data['enable_datatable'] = TRUE;
            $this->data['pageView'] = ADMIN . '/chats';
            $this->load->view(ADMIN . '/includes/siteMaster', $this->data);
        }
        else
            show_404();
        
    }
    
    function bank_accounts($id=0)
    {
        $id=intval($id);
        if($this->data['member_row'] = $this->member_model->getMember($id, array('mem_type' => 'player')))
        {
            $this->load->model('payment_methods_model');
            $this->data['rows'] = $this->payment_methods_model->get_methods($id, true);
            $this->data['enable_datatable'] = TRUE;
            $this->data['pageView'] = ADMIN . '/bank-accounts';
            $this->load->view(ADMIN . '/includes/siteMaster', $this->data);
        }
        else
            show_404();
    }

/*function remove_member_data($id) {
$gigs_rows=$this->comic_model->get_gigs(array('mem_id'=>$id));
foreach ($gigs_rows as $key => $gig) {
$this->db->query("delete from `tbl_favorites` where ref_type='gig' and ref_id=".$gig->id);
$thumbpath = UPLOAD_IMAGES . "/gigs/" . $gig->thumbnail;
if (is_file($thumbpath)) {
unlink($thumbpath);
}
foreach ($gig->images as $key => $gimage) {
$filepath = UPLOAD_PATH . "/gigs/" . $gimage->image;
if (is_file($filepath)) {
unlink($filepath);
}
$this->comic_model->delete_image($image->id);
}
$this->comic_model->delete($gig->id);
}
$rows=$this->product_model->get_products(array('mem_id'=>$id));
foreach ($rows as $key => $product) {
$thumbpath = UPLOAD_IMAGES . "/products/" . $product->thumbnail;
if (is_file($thumbpath)) {
unlink($thumbpath);
}
foreach ($product->images as $key => $image) {
$filepath = UPLOAD_PATH . "/products/" . $image->image;
if (is_file($filepath)) {
unlink($filepath);
}
$this->product_model->delete_image($image->id);
}
$this->db->query("delete from `tbl_favorites` where ref_type='product' and ref_id=".$product->id);
$this->product_model->delete($product->id);
}
}*/
}
?>