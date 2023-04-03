<?php
class Subjects extends Admin_Controller {

    public function __construct() {
        parent::__construct();
        $this->isLogged();
        has_access(4);
        $this->load->model('subject_model');
    }

    function index() {
        $this->data['enable_datatable'] = TRUE;
        $this->data['pageView'] = ADMIN . '/subjects';
        $this->data['rows'] = $this->subject_model->get_subjects(0);
        $this->load->view(ADMIN.'/includes/siteMaster', $this->data);
    }

    function manage() {
        $this->data['pageView'] = ADMIN . '/subjects';
        if ($this->input->post()) {
            $vals = $this->input->post();

            $vals['slug'] = toSlugUrl($vals['name']);
            $id=$this->subject_model->save($vals, $this->uri->segment(4));
            $this->subject_model->save(array('encoded_id'=>doEncode('sub-'.$id)), $id);
            setMsg('success', 'Subject has been saved successfully.');
            redirect(ADMIN . '/subjects', 'refresh');
            exit;
        }
        $this->data['row'] = $this->subject_model->get_row($this->uri->segment('4'));
        $this->load->view(ADMIN.'/includes/siteMaster', $this->data);
    }

    function delete($id=0) {
        has_access(10);
        $id=intval($id);
        if($this->subject_model->get_row_where(array('id'=>$id,'parent_id'=>0))){
            $this->subject_model->delete($id);
            $this->subject_model->delete($id,'parent_id');
            setMsg('success', 'Subject has been deleted successfully.');
            redirect(ADMIN . '/subjects', 'refresh');
            exit;
        }
        else
            show_404();
    }

    /*** start sub subjects ***/

    function manage_subsubject($parent_id=0) {
        if($this->data['main_subject'] = $this->subject_model->get_row_where(array('id'=>$parent_id,'parent_id'=>0))){

            $this->data['pageView'] = ADMIN . '/sub-subjects';
            if ($this->input->post()) {
                $vals = $this->input->post();

                $vals['slug'] = toSlugUrl($vals['name']);
                $vals['parent_id']=$parent_id;
                $id=$this->subject_model->save($vals, $this->uri->segment(5));
                $this->subject_model->save(array('encoded_id'=>doEncode('sub-'.$id)), $id);
                setMsg('success', 'Sub Subject has been saved successfully.');
                redirect(ADMIN . '/subjects/sub/'.$parent_id, 'refresh');
                exit;
            }
            $this->data['row'] = $this->subject_model->get_row($this->uri->segment(5));
            $this->load->view(ADMIN.'/includes/siteMaster', $this->data);
        }
        else
            show_404();
    }

    function sub($id=0) {
        if($this->data['main_subject']=$this->subject_model->get_row($id)){
            $this->data['enable_datatable'] = TRUE;
            $this->data['pageView'] = ADMIN . '/sub-subjects';
            $this->data['rows'] = $this->subject_model->get_sub_subjects($id);
            $this->data['add_url'] = site_url(ADMIN . '/subjects/manage-subsubject/'.$id);
            $this->load->view(ADMIN . '/includes/siteMaster', $this->data);
        }
        else
            show_404();
    }

    function delete_subsubject($id=0) {
        has_access(10);
        $id=intval($id);
        if($this->subject_model->get_row_where(array('id'=>$id,'parent_id<>'=>0))){
            $this->subject_model->delete($id);
            setMsg('success', 'Sub Subject has been deleted successfully.');
            redirect(ADMIN . '/sub-subjects', 'refresh');
            exit;
        }
        else
            show_404();
    }

    /*** end sub subjects ***/
}
?>