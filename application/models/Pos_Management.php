<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Pos_Management extends CI_Model {
      function __construct() {
        parent::__construct();
    }
    


   public function insert_new_pos_record($data){
        $this->db->insert('tbl_sales',$data);
    }




    public function insert_new_sales_detail_record($data){
        $this->db->insert('tbl_salesdetails',$data);
    }



     public function find_sales_detail_by_sales_id($sales_id){
        $this->db->select('*');
        $this->db->from('tbl_salesdetails');
        $this->db->where('sales_id',$sales_id);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }



    public function get_product_by_product_id($product_id){
        $this->db->select('*');
        $this->db->from('tbl_products');
        $this->db->where('product_id',$product_id);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }

    public function find_sales_by_sales_id($sales_id){
        $this->db->select('*');
        $this->db->from('tbl_sales');
        $this->db->where('sales_id',$sales_id);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }




    public function get_all_sales(){
        $this->db->select('*');
        $this->db->from('tbl_sales');
        //$this->db->where('sales_id',$sales_id);
         $this->db->order_by('sales_date', 'DESC');
        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }


    public function sum_total_sales(){
       // $now = date('Y-m-d');
        $result_set = $this->db->query('SELECT SUM(total_amount) AS "total_sales" FROM tbl_sales;');
        return $result_set->result();   
   }


    //customer user id
    public function get_all_sales_by_customer_id($customer_id){
        $this->db->select('*');
        $this->db->from('tbl_sales');
        $this->db->where('customer_id',$customer_id);
         $this->db->order_by('sales_date', 'DESC');
        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }






   

  
}
?>