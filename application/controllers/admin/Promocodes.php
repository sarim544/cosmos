<?php

class Promocodes extends Admin_Controller {

    public function __construct() {
        parent::__construct();
        $this->isLogged();
        $this->load->model('promocode_model');
    }

    public function index() {

        $this->data['enable_datatable'] = TRUE;
        $this->data['pageView'] = ADMIN . '/promocodes';
        
        $this->data['rows'] = $this->promocode_model->get_rows(array(), '', '', 'desc');
        $this->load->view(ADMIN . '/includes/siteMaster', $this->data);
    }
    
    function manage() {

        $this->data['enable_datatable'] = TRUE;
        $this->data['pageView'] = ADMIN . '/promocodes';
        
        if ($this->input->post()) {
            $save_data = $this->input->post();

            
            $save_data['expiry_date'] = db_format_date($save_data['expiry_date']);
            $save_data['amount'] = floatval($save_data['amount']);

            /*for($i=1;$i<=$post['codes'];$i++){
                $save_data['code']=randCode();
                while(true){
                    if(!$this->promocode_model->get_row_where(array('code'=>$save_data['code']))){
                        break;
                    }
                    $save_data['code']=randCode();
                }
                $this->promocode_model->save($save_data);
            }*/
            $this->promocode_model->save($save_data, $this->uri->segment(4));

            setMsg('success', 'Promo Code has been saved!');
            redirect(ADMIN . '/promocodes');
            exit;
        }
        $this->data['row'] = $this->promocode_model->get_promocode($this->uri->segment(4));

        $this->load->view(ADMIN . '/includes/siteMaster', $this->data);
    }

    function delete($id=0) {
        $id=intval($id);
        if($this->promocode_model->get_row_where(array('id' => $id))) {
            $this->promocode_model->delete($id);
            setMsg('success',"Promo Code has been deleted!");
            redirect(ADMIN . '/promocodes', 'refresh');
            exit;
        }
        else
            show_404();
    }
}

?>