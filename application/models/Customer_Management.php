<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Customer_Management extends CI_Model {
      function __construct() {
        parent::__construct();
    }
    


   public function insert_new_customer($data){
        $this->db->insert('tbl_customers',$data);
    }


    public function change_state_customer($customer_table_id,$data){
      $this->db->where('customer_table_id', $customer_table_id);
      $this->db->update('tbl_customers', $data);
    }


   

    public function get_customer_by_id($data){
        $this->db->select('*');
        $this->db->from('tbl_customers');
        $this->db->where('customer_table_id',$data);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }


    public function get_customer_by_customer_id($customer_id){
        $this->db->select('*');
        $this->db->from('tbl_customers');
        $this->db->where('customer_id',$customer_id);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }


    public function update_customer($customer_table_id,$data){
      $this->db->where('customer_table_id', $customer_table_id);
      $this->db->update('tbl_customers', $data);
    }


    public function get_all_customer(){

        $this->db->select('*');
        $this->db->from('tbl_customers');
        
        //$this->db->where('is_active',$active);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }



    public function count_all_customers(){
        $result_set = $this->db->query('SELECT COUNT(*) AS "count_all" FROM tbl_customers');
        return $result_set->result();
    }




    public function login_customer($username,$password){
        $active = "Active";
        $this->db->select('*');
        $this->db->from('tbl_customers');
        $this->db->where('username',$username);
        $this->db->where('password',$password);
        $this->db->where('is_active',$active);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }



     public function insert_new_log($data){
         $this->db->insert('tbl_logs',$data);
    }

  
}
?>