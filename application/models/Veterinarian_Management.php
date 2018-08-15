<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Veterinarian_Management extends CI_Model {
      function __construct() {
        parent::__construct();
    }
    


   public function insert_new_veterinarian($data){
        $this->db->insert('tbl_veterinarians',$data);
    }


    public function change_state_veterinarian($veterinarian_table_id,$data){
      $this->db->where('veterinarian_table_id', $veterinarian_table_id);
      $this->db->update('tbl_veterinarians', $data);
    }


    public function get_veterinarian_by_id($data){
        $this->db->select('*');
        $this->db->from('tbl_veterinarians');
        $this->db->where('veterinarian_table_id',$data);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }



    public function update_veterinarian($veterinarian_table_id,$data){
      $this->db->where('veterinarian_table_id', $veterinarian_table_id);
      $this->db->update('tbl_veterinarians', $data);
    }


    public function get_all_veterinarian(){

        $this->db->select('*');
        $this->db->from('tbl_veterinarians');
        
        //$this->db->where('is_active',$active);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }


    public function count_all_veterinarians(){
        $result_set = $this->db->query('SELECT COUNT(*) AS "count_all" FROM tbl_veterinarians');
        return $result_set->result();
    }


    public function login_vet($username,$password){
        $active = "Active";
        $this->db->select('*');
        $this->db->from('tbl_veterinarians');
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