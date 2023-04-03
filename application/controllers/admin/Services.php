<?php

class Services extends Admin_Controller {

    public function __construct() {
        parent::__construct();
        $this->isLogged();
        has_access(6);
        $this->load->model('service_model');
    }

    public function index() {
        $this->data['enable_datatable'] = TRUE;
        $this->data['pageView'] = ADMIN . '/services';
        
        $this->data['rows'] = $this->service_model->get_rows();
        $this->load->view(ADMIN . '/includes/siteMaster', $this->data);
    }

    function manage() {
        $this->data['enable_editor'] = TRUE;
        $this->data['pageView'] = ADMIN . '/services';
        if ($this->input->post()) {
            $vals = $this->input->post();

            if (($_FILES["image"]["name"] != "")) {
                $image = upload_file(UPLOAD_PATH . "services/", 'image');
                if (!empty($image['file_name'])) {
                    $this->remove_file($this->uri->segment(4));
                    $vals['image'] = $image['file_name'];
                } else {
                    setMsg('errorMsg', 'Please upload a valid image file >> ' . strip_tags($image['error']));
                    redirect(ADMIN . '/services/manage/' . $this->uri->segment(4), 'refresh');
                    exit;
                }
            }

            $this->service_model->save($vals, $this->uri->segment(4));
            setMsg('success', 'Service has been saved successfully.');
            redirect(ADMIN . '/services', 'refresh');
        }

        $this->data['row'] = $this->service_model->get_row($this->uri->segment('4'));
        $this->load->view(ADMIN . '/includes/siteMaster', $this->data);
    }

    /*
    function delete() {
        has_access(10);
        $this->remove_file($this->uri->segment(4));
        $this->service_model->delete($this->uri->segment('4'));
        setMsg('success', 'Service has been deleted successfully.');
        redirect(ADMIN . '/services', 'refresh');
    }
    */

    private function remove_file($id) {
        $arr = $this->service_model->get_row($id);

        $filepath = UPLOAD_PATH . "/services/" . $arr->image;
        if (is_file($filepath))
            unlink($filepath);
        return;
    }

}

?>