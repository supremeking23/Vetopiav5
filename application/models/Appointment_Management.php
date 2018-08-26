<?php 
class Appointment_Management extends CI_Model
{

   public function __construct(){
       parent::__construct();

       //optional
       //$this->db = $this->load->database('default', TRUE);


   }


   public function getScheduleTime(){

   		 $this->db->select('*');
         $this->db->from('tbl_timeschedule');
         $query = $this->db->get();
         $result_set = $query->result();
         return $result_set;
   }



   public function add_appointment($data){
      $this->db->insert('tbl_appointments',$data);
   }


   public function search_appointment_by_id($appointment_table_id){
        $this->db->select('*');
        $this->db->from('tbl_appointments');
        $this->db->where('appointment_table_id',$appointment_table_id);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
   }



   public function get_appointment_detail_by_appointment_data_id($appointment_id){
        $this->db->select('*');
        $this->db->from('tbl_appointments');
        $this->db->where('appointment_id',$appointment_id);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;  
   }


  public function get_services_by_appointment_table_id($appointment_table_id){
        $this->db->select('*');
        $this->db->from('tbl_service_rendered');
       
        $this->db->where('appointment_table_id',$appointment_table_id);
        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;    
    }


   public function update_appointment_detail_by_appointment_data_id($appointment_id,$data){
      $this->db->where('appointment_id', $appointment_id);
      $this->db->update('tbl_appointments', $data);
    }



   public function get_appointment_today($now){
        $this->db->select('*');
        $this->db->from('tbl_appointments');
        $this->db->where('preferredDate',$now);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
   }


   //
   public function get_appointment_by_vet_id_and_today($vet_id,$now){
      $this->db->select('*');
      $this->db->from('tbl_appointments');
      $this->db->where('preferredDate',$now);
      $this->db->where('vet_id',$vet_id);
      $this->db->where('cancel_date',"0000-00-00 00:00:00");
      $query = $this->db->get();

      $result_set = $query->result();

        return $result_set;
   }


   public function get_all_appointment(){
        $this->db->select('*');
        $this->db->from('tbl_appointments');
        $this->db->order_by('appointment_table_id',"desc");
       // $this->db->order_by('preferredDate',"desc");
        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
   }


   //customer_user)id
  public function get_all_appointment_by_customer_id($customer_id){
        $this->db->select('*');
        $this->db->from('tbl_appointments');
        $this->db->order_by('appointment_table_id',"desc");
        $this->db->where('customer_id',$customer_id);
        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
   }



   public function update_appointment_detail($appointment_table_id,$data){
      $this->db->where('appointment_table_id', $appointment_table_id);
      $this->db->update('tbl_appointments', $data);
    }



    public function tapos_na_ung_checkup($appointment_id,$data){
      $this->db->where('appointment_id', $appointment_id);
      $this->db->update('tbl_appointments', $data);
    }



    public function get_all_appointment_by_pet_id($pet_id){
        $this->db->select('*');
        $this->db->from('tbl_appointments');
        $this->db->order_by('appointment_table_id',"desc");
        $this->db->where('pet_id',$pet_id);
        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
   }





   //status base
   public function count_appointment_pending(){
        $result_set = $this->db->query('SELECT COUNT(*) AS "count_all" FROM tbl_appointments  WHERE appointment_status ="Pending" ');
        return $result_set->result();
   }



 }