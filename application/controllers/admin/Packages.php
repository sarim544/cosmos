<?php

class Packages extends Admin_Controller {

    public function __construct() {
        parent::__construct();
        $this->isLogged();
        has_access(6);
        $this->load->model('package_model');
    }

    public function index() {
        $this->data['enable_datatable'] = TRUE;
        $this->data['pageView'] = ADMIN . '/packages';
        
        $this->data['rows'] = $this->package_model->get_rows();
        $this->load->view(ADMIN . '/includes/siteMaster', $this->data);
    }

    function manage() {
        $this->data['enable_editor'] = TRUE;
        $this->data['pageView'] = ADMIN . '/packages';
        if ($this->input->post()) {
            $vals = $this->input->post();
            if ($vals['type']=='sitter' && !empty($vals['one_time']))
                $vals['monthly_price']=$vals['monthly_price']=0;

            /*if (($_FILES["image"]["name"] != "")) {
                $image = upload_file(UPLOAD_PATH . "packages/", 'image');
                if (!empty($image['file_name'])) {
                    $this->remove_file($this->uri->segment(4));
                    $vals['image'] = $image['file_name'];
                } else {
                    setMsg('errorMsg', 'Please upload a valid image file >> ' . strip_tags($image['error']));
                    redirect(ADMIN . '/packages/manage/' . $this->uri->segment(4), 'refresh');
                    exit;
                }
            }*/
            $items = array();
            foreach ($vals['list_item'] as $key => $item) {
                $items[$key]->list_item = $item;
                $items[$key]->list_item_tip = $vals['list_item_tip'][$key];
            }
            // pr($vals);
            // pr($items);
            $vals['detail'] = serialize($items);
            // exit($vals['detail']);
            unset($vals['list_item_tip'], $vals['list_item']);

            $this->package_model->save($vals, $this->uri->segment(4));
            setMsg('success', 'Package has been saved successfully.');
            redirect(ADMIN . '/packages', 'refresh');
        }

        $this->data['row'] = $this->package_model->get_row($this->uri->segment('4'));
        $this->load->view(ADMIN . '/includes/siteMaster', $this->data);
    }

    function delete() {
        has_access(10);
        // $this->remove_file($this->uri->segment(4));
        $this->package_model->delete($this->uri->segment('4'));
        setMsg('success', 'Package has been deleted successfully.');
        redirect(ADMIN . '/packages', 'refresh');
    }

    /*private function remove_file($id) {
        $arr = $this->package_model->get_row($id);

        $filepath = UPLOAD_PATH . "/packages/" . $arr->image;
        if (is_file($filepath))
            unlink($filepath);
        return;
    }*/
}

?>