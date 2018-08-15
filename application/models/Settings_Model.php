<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Settings_Model extends CI_Model {
      function __construct() {
        parent::__construct();
    }
    


  


    public function update_settings($settings_id,$data){
      $this->db->where('settings_id', $settings_id);
      $this->db->update('tbl_settings', $data);
    }


    public function get_all_settings_detail_by_settings_id($settings_id){

        $this->db->select('*');
        $this->db->from('tbl_settings');
        
        $this->db->where('settings_id',$settings_id);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }



   public function add_banner($data){
    $this->db->insert('tbl_bannerimages',$data);
   }



   public function load_banners(){
        $this->db->select('*');
        $this->db->from('tbl_bannerimages');
        
        //$this->db->where('settings_id',$settings_id);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
   }
  
}
?>