<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Pet_Management_Model extends CI_Model {
      function __construct() {
        parent::__construct();
    }
    
    public function insert_new_pet($data){
        $this->db->insert('tbl_pets',$data);
    }


    public function insert_new_pettype($data){
        $this->db->insert('tbl_pettype',$data);
    }


    public function insert_new_pet_breed($data){
        $this->db->insert('tbl_petbreeds',$data);
    }


    public function change_state_pet($pet_table_id,$data){
      $this->db->where('pet_table_id', $pet_table_id);
      $this->db->update('tbl_pets', $data);
    }


    public function get_pet_by_id($id){
        $this->db->select('a.pet_id,a.pet_table_id,a.petname,a.birthdate,a.gender,a.pet_profile,b.pettype,b.pettype_id,c.pet_breed,c.breed_id,d.firstname,d.middlename,d.lastname,d.customer_id,d.customer_table_id');
        $this->db->from('tbl_pets a');
        $this->db->join('tbl_pettype b','a.pettype = b.pettype_id');
        $this->db->join('tbl_petbreeds c','a.breed = c.breed_id');
        $this->db->join('tbl_customers d','a.customer_table_id = d.customer_table_id');
        

        $this->db->where('pet_table_id',$id);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }


    //for pet mismo
   public function get_pet_by_id_2($id){

        $this->db->select('*');
        $this->db->from('tbl_pets');
        $this->db->where('pet_table_id',$id);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }



    public function update_pet($pet_table_id,$data){
      $this->db->where('pet_table_id', $pet_table_id);
      $this->db->update('tbl_pets', $data);
    }


    //pets with customer
    public function get_all_pet(){

        $this->db->select('a.pet_id,a.pet_table_id,a.petname,b.pettype,c.pet_breed,d.firstname,d.middlename,d.lastname,d.customer_id,d.customer_table_id');
        $this->db->from('tbl_pets a');
        $this->db->join('tbl_pettype b','a.pettype = b.pettype_id');
        $this->db->join('tbl_petbreeds c','a.breed = c.breed_id');
        $this->db->join('tbl_customers d','a.customer_table_id = d.customer_table_id');
        


        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }




    //for pet type and pet breed

    public function get_all_breed(){
        //not use
        $this->db->select('*');
        $this->db->from('tbl_petbreeds');
        
        //$this->db->where('is_active',$active);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }



    public function delete_breed($data){
        $this->db->delete('tbl_petbreeds', $data); 
    }


    public function get_all_pettype(){


        $this->db->select('*');
        $this->db->from('tbl_pettype');
        
        //$this->db->where('is_active',$active);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }

    public function get_all_pettype_active(){
        $this->db->select('*');
        $this->db->from('tbl_pettype');
        
        $this->db->where('pettype_status','Active');

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;        
    }



    public function update_pettype_status($pettype_id,$data){
      $this->db->where('pettype_id', $pettype_id);
      $this->db->update('tbl_pettype', $data);
    }


    //get all active pettype
    /*public function get_all_active_pettype(){

        $active = "Active";
        $this->db->select('*');
        $this->db->from('tbl_pettype');
        
        $this->db->where('pettype_status',$active);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }    */


    public function count_pets_by_pettype($pettype_id){
        $result_set = $this->db->query('SELECT COUNT(*) AS "count_all" FROM tbl_pets WHERE pettype = ' . $pettype_id);
        return $result_set->result();
    }


    public function count_pets_by_breed($breed_id){
        $result_set = $this->db->query('SELECT COUNT(*) AS "count_all" FROM tbl_pets WHERE breed = ' . $breed_id);
        return $result_set->result();
    }


    public function count_number_of_breeds_pettype($pettype_id){
         $result_set = $this->db->query('SELECT COUNT(*) AS "count_all" FROM tbl_petbreeds WHERE pettype_id = ' . $pettype_id);
        return $result_set->result();
    }    

    public function count_pet_of_customer($customer_id){
        $result_set = $this->db->query('SELECT COUNT(*) AS "count_all" FROM tbl_pets WHERE customer_table_id = ' . $customer_id);
        return $result_set->result();
    }


    public function count_all_pets(){
        $result_set = $this->db->query('SELECT COUNT(*) AS "count_all" FROM tbl_pets');
        return $result_set->result();
    }



    public function get_all_pet_by_customer_id($customer_table_id){
        $this->db->select('*');
        $this->db->from('tbl_pets');
        
        $this->db->where('customer_table_id',$customer_table_id);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }





    public function get_all_pet_details_by_customer_id($customer_table_id){
          $this->db->select('a.pet_id,a.pet_table_id,a.petname,a.birthdate,a.gender,a.pet_profile,b.pettype,b.pettype_id,c.pet_breed,c.breed_id,d.firstname,d.middlename,d.lastname,d.customer_id,d.customer_table_id');
        $this->db->from('tbl_pets a');
        $this->db->join('tbl_pettype b','a.pettype = b.pettype_id');
        $this->db->join('tbl_petbreeds c','a.breed = c.breed_id');
        $this->db->join('tbl_customers d','a.customer_table_id = d.customer_table_id');
        

        $this->db->where('a.customer_table_id',$customer_table_id);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }





    public function find_detail_using_pet_id($pet_id){
        $this->db->select('*');
        $this->db->from('tbl_pets');
        
        $this->db->where('pet_id',$pet_id);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }


    public function find_pettype_by_pettype_id($pettype_id){
        $this->db->select('*');
        $this->db->from('tbl_pettype');
        
        $this->db->where('pettype_id',$pettype_id);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }

    public function find_breed_by_breed_id($breed_id){
        $this->db->select('*');
        $this->db->from('tbl_petbreeds');
        
        $this->db->where('breed_id',$breed_id);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }




    //new functions for services
    public function add_service($data){
        $this->db->insert('tbl_services',$data);
    }


    public function update_service_detail($data,$service_id){
        $this->db->where('service_id', $service_id);
        $this->db->update('tbl_services',$data);
    }


    public function get_all_pet_services(){
        $this->db->select('*');
        $this->db->from('tbl_services');
        
        $this->db->order_by('service_id', 'DESC');

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;        
    }

    public function get_all_pet_services_active(){
        $this->db->select('*');
        $this->db->from('tbl_services');
        
        $this->db->order_by('service_id', 'DESC');
        $this->db->where('service_status','Active');
        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;        
    }

    public function get_all_pet_services_by_service_id($service_id){
        $this->db->select('*');
        $this->db->from('tbl_services');
        
        $this->db->order_by('service_id', 'DESC');
        $this->db->where('service_id',$service_id);
        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;        
    }


    public function get_all_services_for_specific_pet_age_and_active($pettype,$age){


        $this->db->select('*');
        $this->db->from('tbl_services');
        $this->db->where('for_what_pet',$pettype);
        $this->db->where('for_pet_ages',$age);
        $this->db->order_by('service_id', 'DESC');

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;         
    }







   /* public function get_all_services_for_specific_pet_age_and_active(){


        $this->db->select('*');
        $this->db->from('tbl_services');
        $this->db->order_by('service_id', 'DESC');
        $this->db->where('service_status','Active');;
        $this->db->where('for_pet_ages','young adult (11 months old and below)');
        $this->db->where('for_what_pet','cat');
        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;        
    }*/

    



    //pet diagnosis //checkup history
    public function add_checkup_detail($data){
        $this->db->insert('tbl_checkupdetails',$data);
    }

    public function update_checkup_detail($data,$checkup_id){
        $this->db->where('checkup_id', $service_id);
        $this->db->update('tbl_checkupdetails',$data);
    }


    public function check_is_service_is_done_by_appointment_table_id_and_service_id($appointment_id,$service_id){
        $this->db->select('*');
        $this->db->from('tbl_checkupdetails');
       
        $this->db->where('appointment_id',$appointment_id);
        $this->db->where('service_id',$service_id);
        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;

    }



    public function get_pet_service_by_appointment_id($appointment_id){
        $this->db->select('*');
        $this->db->from('tbl_checkupdetails');
       
        $this->db->where('appointment_id',$appointment_id);
        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }


    public function get_prescription_by_appointment_table_id($appointment_table_id){
        $this->db->select('*');
        $this->db->from('tbl_checkupdetails');
       
        $this->db->where('appointment_table_id',$appointment_table_id);
        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;    
    }






    public function get_pet_service_by_pet_id($pet_id){
        $this->db->select('*');
        $this->db->from('tbl_checkupdetails');
       
        $this->db->where('pet_id',$pet_id);
        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }


    




    public function add_service_rendered_data($data){
        $this->db->insert('tbl_service_rendered',$data);
    }



    public function get_services_by_checkup_id($checkup_id){
        $this->db->select('*');
        $this->db->from('tbl_service_rendered');
       
        $this->db->where('checkup_id',$checkup_id);
        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }







 /* remove previouse services */
 /*

    public function add_service_for_adult_dogs($data){
        $this->db->insert('tbl_adult_dogs_programs',$data);
    }


    public function edit_service_detail_for_dogs($dog_service_id,$data){
      $this->db->where('adult_dog_prog_id', $dog_service_id);
      $this->db->update('tbl_adult_dogs_programs', $data);
    }



    public function get_pet_services_for_adult_dogs(){
        $this->db->select('*');
        $this->db->from('tbl_adult_dogs_programs');
        
        //$this->db->where('is_active',$active);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }

    public function add_service_for_puppies($data){
        $this->db->insert('tbl_puppies_programs',$data);
    }


    public function edit_service_detail_for_puppies($puppy_service_id,$data){
      $this->db->where('puppies_prog_id', $puppy_service_id);
      $this->db->update('tbl_puppies_programs', $data);
    }

    public function get_pet_services_puppies(){
        $this->db->select('*');
        $this->db->from('tbl_puppies_programs');
        
        //$this->db->where('is_active',$active);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }



    public function add_service_for_cats($data){
        $this->db->insert('tbl_programs_for_cats',$data);
    }

    public function edit_service_detail_for_cats($cats_service_id,$data){
      $this->db->where('cats_prog_id', $cats_service_id);
      $this->db->update('tbl_programs_for_cats', $data);
    }

    public function get_pet_services_cats(){
        $this->db->select('*');
        $this->db->from('tbl_programs_for_cats');
        
        //$this->db->where('is_active',$active);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }



    public function add_service_for_kittens($data){
        $this->db->insert('tbl_kittens_programs',$data);
    }

    public function edit_service_detail_for_kittens($kitten_service_id,$data){
      $this->db->where('kittens_prog_id', $kitten_service_id);
      $this->db->update('tbl_kittens_programs', $data);
    }

    public function get_pet_services_kittens(){
        $this->db->select('*');
        $this->db->from('tbl_kittens_programs');
        
        //$this->db->where('is_active',$active);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }




    //searching of specific pet services

    public function get_services_for_dog_by_prog_id($prog_id){
        $this->db->select('*');
        $this->db->from('tbl_adult_dogs_programs');
        
        $this->db->where('adult_dog_prog_id',$prog_id);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }


    public function get_services_for_puppies_by_prog_id($prog_id){
        $this->db->select('*');
        $this->db->from('tbl_puppies_programs');
        
        $this->db->where('puppies_prog_id',$prog_id);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }   



    public function get_services_for_cats_by_prog_id($prog_id){
        $this->db->select('*');
        $this->db->from('tbl_programs_for_cats');
        
        $this->db->where('cats_prog_id',$prog_id);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }  



    public function get_services_for_kittens_by_prog_id($prog_id){
        $this->db->select('*');
        $this->db->from('tbl_kittens_programs');
        
        $this->db->where('kittens_prog_id',$prog_id);

        $query = $this->db->get();

        $result_set = $query->result();

        return $result_set;
    }       

/* remove previous servicess */



  
}
?>