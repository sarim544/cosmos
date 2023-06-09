<?php

class Owners extends Admin_Controller {

    public function __construct() {
        parent::__construct();
        $this->isLogged();
        has_access(1);
        $this->load->model('member_model');
    }

    public function index() {
        $this->data['enable_datatable'] = TRUE;
        $this->data['pageView'] = ADMIN . '/owners';
        $this->data['rows'] = $this->member_model->get_rows(array('mem_type'=>'owner'));
        $this->load->view(ADMIN . '/includes/siteMaster', $this->data);
    }

    function manage() {
        $this->data['pageView'] = ADMIN . '/owners';
        $this->data['row'] = $this->member_model->getMember($this->uri->segment('4'));
        if ($this->input->post()) {
            $vals = $this->input->post();
            $vals['mem_type']='owner';
            
            if($vals['mem_pswd']!='' && access(9))
                $vals['mem_pswd']=doEncode($vals['mem_pswd']);
            else
                unset($vals['mem_pswd']);

            if (($_FILES["mem_image"]["name"] != "")) {
                $image = upload_vfile('mem_image');
                if (!empty($image['file_name'])) 
                {
                    if(!empty($this->data['row']->mem_image))
                        remove_vfile($this->data['row']->mem_image);
                    $vals['mem_image'] = $image['file_name'];
                }
            }
            
            
            $this->member_model->save($vals, $this->uri->segment(4));
            setMsg('success', 'Owner has been saved successfully.');
            redirect(ADMIN . '/owners/manage/' . $this->uri->segment(4), 'refresh');
            exit;
        }
        
        $this->load->view(ADMIN . '/includes/siteMaster', $this->data);
    }

    function episodes($id=0) {
        if($this->data['comic_row']=$this->comic_model->get_row($id)){
            $this->data['enable_datatable'] = TRUE;
            $this->data['pageView'] = ADMIN . '/episodes';
            $this->data['rows'] = $this->episode_model->get_rows(array('comic_id'=>$id),'','','desc');
            $this->data['add_url'] = site_url(ADMIN . '/episodes/manage/'.$id);
            $this->load->view(ADMIN . '/includes/siteMaster', $this->data);
        }
        else
            show_404();
    }

    function active() {
        $mem_id = $this->uri->segment(4);
        $vals['mem_status'] = '1';
        $this->member_model->save($vals, $mem_id);
        setMsg('success', 'Owner has been activated successfully.');
        redirect(ADMIN . '/owners', 'refresh');
    }

    function inactive() {
        $mem_id = $this->uri->segment(4);
        $vals['mem_status'] = '0';
        $this->member_model->save($vals, $mem_id);
        setMsg('success', 'Owner has been deactivated successfully.');
        redirect(ADMIN . '/owners', 'refresh');
    }

    function delete() {
        has_access(10);
        $this->remove_file($this->uri->segment(4));
    // $this->remove_member_data($this->uri->segment(4));
        $this->member_model->delete($this->uri->segment('4'));
        setMsg('success', 'Owner has been deleted successfully.');
        redirect(ADMIN . '/owners', 'refresh');
    }

    function status() {
        echo $this->member_model->changeStatus($this->uri->segment('4'));
    }

    function remove_file($id, $type = '') {
        $arr = $this->member_model->getMember($id);
        $filepath = UPLOAD_PATH . "/owners/" . $arr->image;
        $filepath_thumb = UPLOAD_PATH . "/owners/thumb_" . $arr->image;
        $filepath_ico = UPLOAD_PATH . "/owners/ico_" . $arr->image;
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
    function chats($id=0){
        $id=intval($id);
        if($this->data['member_row'] = $this->member_model->getMember($id,array('mem_type'=>'owner')))
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
    function payment_methods($id=0){
        $id=intval($id);
        if($this->data['member_row'] = $this->member_model->getMember($id,array('mem_type'=>'owner')))
        {
            $this->load->model('payment_methods_model');
            $this->data['rows'] = $this->payment_methods_model->get_methods($id);
            $this->data['enable_datatable'] = TRUE;
            $this->data['pageView'] = ADMIN . '/payment-methods';
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