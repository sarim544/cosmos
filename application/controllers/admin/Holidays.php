<?php

class Holidays extends Admin_Controller {

    public function __construct() {
        parent::__construct();
        $this->isLogged();
    }

    public function index() {
        $this->data['enable_datatable'] = TRUE;
        $this->data['pageView'] = ADMIN . '/holidays';
        $this->data['rows'] = $this->master->getRows('holidays', '', '', '', 'desc');
        $this->load->view(ADMIN . '/includes/siteMaster', $this->data);
    }

    function manage() {

        $this->data['enable_editor'] = TRUE;
        $this->data['pageView'] = ADMIN . '/holidays';
        if ($this->input->post()) {
            $vals = $this->input->post();
            $this->master->save('holidays', $vals, 'id', $this->uri->segment(4));

            setMsg('success', 'Block Date has been saved successfully.');
            redirect(ADMIN . '/holidays', 'refresh');
            exit();
        }
        $this->data['row'] = $this->master->getRow('holidays', array('id' => $this->uri->segment('4')));
        $dates_row = $this->master->fetch_row("SELECT GROUP_CONCAT(CONCAT(YEAR(CURDATE()),'-',month,'-', date)) as dates FROM `tbl_holidays` where month >= MONTH(CURDATE())");
        // $dates_row = $this->master->fetch_row("SELECT GROUP_CONCAT(date) as dates FROM `tbl_holidays` where date >= CURDATE()");
        $this->data['dates'] = $dates_row->dates!=''?explode(',', $dates_row->dates):array();

        $this->load->view(ADMIN . '/includes/siteMaster', $this->data);
    }

    function delete() {
        $this->master->delete('holidays','id',$this->uri->segment('4'));
        setMsg('success', 'Block Date has been deleted successfully.');
        redirect(ADMIN . '/holidays', 'refresh');
    }

}

?>