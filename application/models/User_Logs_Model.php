<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User_Logs_Model extends CI_Controller {
    function __construct() {
        parent::__construct();
    }

	public function insert_new_log($data){
         $this->db->insert('tbl_logs',$data);
	}

    public function get_all_logs(){
        $this->db->select('*');
        $this->db->from('tbl_logs');
        
        //$this->db->where('is_active',$active);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }


}




  



   



     


    

