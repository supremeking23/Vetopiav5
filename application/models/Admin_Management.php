<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Admin_Management extends CI_Model {
      function __construct() {
        parent::__construct();
    }
    




    public function insert_new_admin($data){
        $this->db->insert('tbl_admins',$data);
    }


    /*public function change_state_admin($admin_table_id,$data){
      $this->db->where('admin_table_id', $admin_table_id);
      $this->db->update('tbl_admins', $data);
    }*/


    public function get_admin_by_id($data){
        $this->db->select('*');
        $this->db->from('tbl_admins');
        $this->db->where('admin_table_id',$data);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }


    public function get_admin_by_user_id($user_id){
        $this->db->select('*');
        $this->db->from('tbl_admins');
        $this->db->where('admin_id',$user_id);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }



    public function update_admin($admin_table_id,$data){
      $this->db->where('admin_table_id', $admin_table_id);
      $this->db->update('tbl_admins', $data);
    }


    public function get_all_admin(){

        $this->db->select('*');
        $this->db->from('tbl_admins');
        
        //$this->db->where('is_active',$active);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }



    public function count_all_admins(){
        $result_set = $this->db->query('SELECT COUNT(*) AS "count_all" FROM tbl_admins');
        return $result_set->result();
    }


    //to be continued
    public function get_all_admin_except_current_admin($currently_log_admin_id){

        $this->db->select('*');
        $this->db->from('tbl_admins');
        
        $this->db->where('admin_id',$currently_log_admin_id);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }





    public function login_admin($username,$password){
        $active = "Active";
        $this->db->select('*');
        $this->db->from('tbl_admins');
        $this->db->where('username',$username);
        $this->db->where('password',$password);
        $this->db->where('admin_status',$active);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }











    //for Logs



    public function insert_new_log($data){
         $this->db->insert('tbl_logs',$data);
    }


    public function get_all_logs(){
        $this->db->select('*');
        $this->db->from('tbl_logs');
        
        //$this->db->where('is_active',$active);
        $this->db->order_by('log_date', 'DESC');
        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }



    public function get_all_logs_by_id($user_id){
        $this->db->select('*');
        $this->db->from('tbl_logs');
        
        $this->db->where('log_userID',$user_id);
        $this->db->order_by('log_date', 'DESC');
        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }

  
}
?>