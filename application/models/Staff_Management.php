<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Staff_Management extends CI_Model {
      function __construct() {
        parent::__construct();
    }
    


   public function insert_new_staff($data){
        $this->db->insert('tbl_staffs',$data);
    }


  /*  public function change_state_staff($staff_table_id,$data){
      $this->db->where('staff_table_id', $staff_table_id);
      $this->db->update('tbl_staffs', $data);
    }
 */


    public function get_staff_by_id($data){
        $this->db->select('*');
        $this->db->from('tbl_staffs');
        $this->db->where('staff_table_id',$data);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }



    public function update_staff($staff_table_id,$data){
      $this->db->where('staff_table_id', $staff_table_id);
      $this->db->update('tbl_staffs', $data);
    }


    public function get_all_staff(){

        $this->db->select('*');
        $this->db->from('tbl_staffs');
        
        //$this->db->where('is_active',$active);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }


    public function get_all_staff_active(){

        $this->db->select('*');
        $this->db->from('tbl_staffs');
        
        $this->db->where('staff_status','Active');

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }


    public function count_all_staffs(){
        $result_set = $this->db->query('SELECT COUNT(*) AS "count_all" FROM tbl_staffs');
        return $result_set->result();
    }



    public function login_staff($username,$password){
        $active = "Active";
        $this->db->select('*');
        $this->db->from('tbl_staffs');
        $this->db->where('username',$username);
        $this->db->where('password',$password);
        $this->db->where('staff_status',$active);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }


    public function check_status_by_user_id($user_id){
        $active = "Active";
        $this->db->select('*');
        $this->db->from('tbl_staffs');
        $this->db->where('staff_id',$user_id);
        $this->db->where('staff_status',$active);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }


  public function insert_new_log($data){
         $this->db->insert('tbl_logs',$data);
    }

  
}
?>