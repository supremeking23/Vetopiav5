<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pet_Management extends CI_Controller {

	function __construct() {

        parent::__construct();
       
        date_default_timezone_set('Asia/Taipei');

        
        
        //for reading.. retrieving
        $this->load->model('admin_management');
        $this->load->model('customer_management');
        $this->load->model('veterinarian_management');
        $this->load->model('staff_management');
        $this->load->model('pet_management_model');
        $this->load->model('appointment_management');
        echo 1;
    }

	

    public function add_new_pet(){

         //config for upload image \assets\images\profiles
        $config['upload_path']          = './assets/images/pets/';
        //$config['upload_path']          = './uploads/';
        $config['allowed_types']        = 'gif|jpg|png|jpeg';
        //$config['max_size']             = 100;
        // $config['max_width']            = 1024;
        // $config['max_height']           = 768;
        $this->load->library('upload', $config);


        if($this->upload->do_upload('upload_image')){
                //get the file name of the uploaded file
                $uploadData = $this->upload->data();
                $image = $uploadData['file_name'];
                //echo 1;
                echo "ivan";
        }

            $now = date('Y-m-d H:i:s');
            $data = array(
            'pet_id' => $this->input->post('pet_id'),
            'customer_table_id' => $this->input->post('customer_id'),
            'petname' => $this->input->post('petname'),
            'pettype' => $this->input->post('pet_type'),
            'breed' => $this->input->post('breed'),
            'gender' => $this->input->post('gender'),
            'birthdate' => $this->input->post('birthdate'),
            'pet_profile' => $image,
            //'is_active' => "Active",
            
            'dateAdded' => $now,
            );

            $this->pet_management_model->insert_new_pet($data);

            $this->session->set_flashdata('add_pet_success','New Pet has been added');
            redirect('admin/pets');
    }



    public function add_pet_breed(){
        //var_dump($this->input->post());

        $pettype_id = $this->input->post("pet_type");

        $breed = $this->input->post("pet_breed");

        $breed_description = $this->input->post("breed_description");

        $pettype = "";
        if($pettype_id == 1){
            $pettype = "dog";
        }else{
            $pettype = "cat";
        }

        $data = array(
            'pettype_id' => $pettype_id,
            'pettype_code' => $pettype,
            'pet_breed' =>  $breed,
            'breed_description' =>  $breed_description, 
        );


        $this->pet_management_model->insert_new_pet_breed($data);

         $this->session->set_flashdata('add_pettype_success','New Pet type has been added');
            redirect('admin/pets');

        var_dump($data);
    }



    function show_breeds(){
        $output ='';

        $pet_breed = $this->pet_management_model->get_all_breed();

        foreach($pet_breed as $pb){
            $output .='
                        <tr>
                            <td><p>'.ucfirst($pb->pettype_code) .'</p></td>
                            <td><p>'.$pb->pet_breed.'</p></td>
                            <td><p>'.$pb->breed_description.'</p></td>
                            <td><button type="button" id="'.$pb->breed_id.'" class="romove_detail btn btn-flat btn-danger btn-sm">Remove</button></td>
                        </tr>
            ';
        }



        return $output;
    }


    function load_breed(){
        echo $this->show_breeds();
    }



    function delete_breed(){ 
        $data = array(
            'breed_id' => $this->input->post('breed_id'), 
            
        );
        $this->pet_management_model->delete_breed($data);
        echo $this->show_breeds();
    }



    public function update_pet_details(){


        $pet_id_update =  $this->input->post('pet_id_update');

        $data = array(

            'customer_table_id' => $this->input->post('customer_id'),
            'pettype' => $this->input->post('pet_type'),
            'breed' => $this->input->post('breed'),
            'gender' => $this->input->post('gender'),
            'birthdate' => $this->input->post('birthdate'),
            'petname' => $this->input->post('petname')
    

        );


        var_dump($data);

        $this->pet_management_model->update_pet($pet_id_update,$data);

        $this->session->set_flashdata('update_pet_success','Pet information has been updated successfully');
        redirect('admin/pet_details/'.$pet_id_update);
        
    }


    public function update_profile_pet(){


      $user_id_update =  $this->input->post('user_id_update');


        //config for upload image \assets\images\profiles
        $config['upload_path']          = './assets/images/pets/';
        //$config['upload_path']          = './uploads/';
        $config['allowed_types']        = 'gif|jpg|png|jpeg';
        //$config['max_size']             = 100;
        // $config['max_width']            = 1024;
        // $config['max_height']           = 768;
        $this->load->library('upload', $config);


        if($this->upload->do_upload('upload_image')){
                //get the file name of the uploaded file
                $uploadData = $this->upload->data();
                $image = $uploadData['file_name'];
                //echo 1;
                echo "ivan";
        }else{
                    //echo 'wala laman';
                    //set the image name to the previously upload image
                    $default_image_name = $this->pet_management_model->get_pet_by_id_2($user_id_update);
                    foreach ($default_image_name as $default_image) {
                               $image = $default_image->pet_profile; 
                    
                    }
                    


                   //$image ='';
                             
                   echo 12;      
                   echo "dsds"; 


                   //check for errors
                  /* $error = array('error' => $this->upload->display_errors());

                    $this->load->view('file_view', $error);*/
        }

        $data = array(

         
            'pet_profile' =>$image,
    

        );


        var_dump($data);


        $this->pet_management_model->update_pet($user_id_update,$data);

        $this->session->set_flashdata('update_pet_success','Pet information has been updated successfully');
        redirect('admin/pet_details/'.$user_id_update);

        
    }





    ///staff action
    public function add_new_pet_staff_action(){

         //config for upload image \assets\images\profiles
        $config['upload_path']          = './assets/images/pets/';
        //$config['upload_path']          = './uploads/';
        $config['allowed_types']        = 'gif|jpg|png|jpeg';
        //$config['max_size']             = 100;
        // $config['max_width']            = 1024;
        // $config['max_height']           = 768;
        $this->load->library('upload', $config);


        if($this->upload->do_upload('upload_image')){
                //get the file name of the uploaded file
                $uploadData = $this->upload->data();
                $image = $uploadData['file_name'];
                //echo 1;
                echo "ivan";
        }

            $now = date('Y-m-d H:i:s');
            $data = array(
            'pet_id' => $this->input->post('pet_id'),
            'customer_table_id' => $this->input->post('customer_id'),
            'petname' => $this->input->post('petname'),
            'pettype' => $this->input->post('pet_type'),
            'breed' => $this->input->post('breed'),
            'gender' => $this->input->post('gender'),
            'birthdate' => $this->input->post('birthdate'),
            
            //'is_active' => "Active",
            'pet_profile', $image,
            'dateAdded' => $now,
            );

            $this->pet_management_model->insert_new_pet($data);

            $this->session->set_flashdata('add_pet_success','New Pet has been added');
            redirect('staff/pets');
    }



    public function update_pet_details_staff_action(){


        $pet_id_update =  $this->input->post('pet_id_update');

        $data = array(

            'customer_table_id' => $this->input->post('customer_id'),
            'pettype' => $this->input->post('pet_type'),
            'breed' => $this->input->post('breed'),
            'gender' => $this->input->post('gender'),
            'birthdate' => $this->input->post('birthdate'),
            'petname' => $this->input->post('petname')
    

        );


        var_dump($data);

        $this->pet_management_model->update_pet($pet_id_update,$data);

        $this->session->set_flashdata('update_pet_success','Pet information has been updated successfully');
        redirect('staff/pet_details/'.$pet_id_update);
        
    }


    public function update_profile_pet_staff_action(){


      $user_id_update =  $this->input->post('user_id_update');


        //config for upload image \assets\images\profiles
        $config['upload_path']          = './assets/images/pets/';
        //$config['upload_path']          = './uploads/';
        $config['allowed_types']        = 'gif|jpg|png|jpeg';
        //$config['max_size']             = 100;
        // $config['max_width']            = 1024;
        // $config['max_height']           = 768;
        $this->load->library('upload', $config);


        if($this->upload->do_upload('upload_image')){
                //get the file name of the uploaded file
                $uploadData = $this->upload->data();
                $image = $uploadData['file_name'];
                //echo 1;
                echo "ivan";
        }else{
                    //echo 'wala laman';
                    //set the image name to the previously upload image
                    $default_image_name = $this->pet_management_model->get_pet_by_id_2($user_id_update);
                    foreach ($default_image_name as $default_image) {
                               $image = $default_image->pet_profile; 
                    
                    }
                    


                   //$image ='';
                             
                   echo 12;      
                   echo "dsds"; 


                   //check for errors
                  /* $error = array('error' => $this->upload->display_errors());

                    $this->load->view('file_view', $error);*/
        }

        $data = array(

         
            'pet_profile' =>$image,
    

        );


        var_dump($data);


        $this->pet_management_model->update_pet($user_id_update,$data);

        $this->session->set_flashdata('update_pet_success','Pet information has been updated successfully');
        redirect('staff/pet_details/'.$user_id_update);

        
    }



   


    public function update_state_pet_staff_action(){


            $change_state_user = $this->input->post('change_state_user');
            
            $current_state =  $this->input->post('current_state');

            if($current_state == "Active"){

                $new_state = "Not Active";
            }else{

                $new_state =  "Active";
            }

            //echo $change_state_user ;

            $state_data = array(
                'is_active' => $new_state,
            );


            var_dump($state_data);


            $this->admin_management->change_state_admin($change_state_user,$state_data);

            $this->session->set_flashdata('change_state_admin_success','Admin State has been successfully updated');
            redirect('staff/pets');
            
  }



    public function add_new_service(){
        $program_for = $this->input->post('program_for');
        $program_name = $this->input->post('program_name');
        $program_description = $this->input->post('program_description');
        $price = $this->input->post('price');

        $name = $this->session->userdata('complete_name');
        $log_usertype =  $this->session->userdata('account_type');
        $log_userID = $this->session->userdata("user_id");
        $log_action = "Add new pet service";
        


        $now = date('Y-m-d H:i:s');
        $data2 = array(
            "log_user" => $name,
            "log_usertype" => $log_usertype,
            "log_userID" => $log_userID,
            "log_action" => $log_action,
            "log_date" => $now,
        );



        $this->admin_management->insert_new_log($data2);

        switch ($program_for) {
            case 'Dogs':
                
                //insert in dogs tbl

                $data_dog = array(
                    'adult_dog_prog_name' =>$program_name,
                    'adult_dog_prog_description' => $program_description,
                    'adult_dog_prog_price' => $price,
                );


                $this->pet_management_model->add_service_for_adult_dogs($data_dog);

                $this->session->set_flashdata('add_service_success','Service Program has been added successfully');
                redirect('admin/services');

                break;


            case 'Cats':
                
                //insert in dogs tbl

                $data_cat = array(
                    'cats_prog_name' =>$program_name,
                    'cats_prog_description' => $program_description,
                    'cats_prog_price' => $price,
                );


                $this->pet_management_model->add_service_for_cats($data_cat);

                  $this->session->set_flashdata('add_service_success','Service Program has been added successfully');
                redirect('admin/services');

                break;

            case 'Puppies':
                
                //insert in dogs tbl

                $data_puppy = array(
                    'puppies_prog_name' =>$program_name,
                    'puppies_prog_description' => $program_description,
                    'puppies_prog_price' => $price,
                );


                $this->pet_management_model->add_service_for_puppies($data_puppy);

                  $this->session->set_flashdata('add_service_success','Service Program has been added successfully');
                redirect('admin/services');

                break;


            case 'Kittens':
                
                //insert in dogs tbl

                $data_kitten = array(
                    'kittens_prog_name' =>$program_name,
                    'kittens_prog_description' => $program_description,
                    'kittens_prog_price' => $price,
                );


                $this->pet_management_model->add_service_for_kittens($data_kitten);

                  $this->session->set_flashdata('add_service_success','Service Program has been added successfully');
                redirect('admin/services');

                break;
            
            default:
                # code...
                break;
        }
    }




    public function edit_service_dog(){
        $program_name = $this->input->post('program_name');
        $program_description = $this->input->post('program_description');
        $price = $this->input->post('price');
        $dog_service_id = $this->input->post('dog_service_id');

        $data = array(
            'adult_dog_prog_name' => $program_name,
            'adult_dog_prog_description' =>$program_description,
            'adult_dog_prog_price' => $price,

        );


        $this->pet_management_model->edit_service_detail_for_dogs($dog_service_id,$data);


        $name = $this->session->userdata('complete_name');
        $log_usertype =  $this->session->userdata('account_type');
        $log_userID = $this->session->userdata("user_id");
        $log_action = "Update Service Detail";
        


        $now = date('Y-m-d H:i:s');
        $data2 = array(
            "log_user" => $name,
            "log_usertype" => $log_usertype,
            "log_userID" => $log_userID,
            "log_action" => $log_action,
            "log_date" => $now,
        );

        $this->admin_management->insert_new_log($data2);


        $this->session->set_flashdata('update_service_success','Service Program detail has been updated successfully');

        redirect("admin/services");
    }


    public function edit_service_puppy(){

        $program_name = $this->input->post('program_name');
        $program_description = $this->input->post('program_description');
        $price = $this->input->post('price');
        $puppy_service_id = $this->input->post('puppy_service_id');

        $data = array(
            'puppies_prog_name' => $program_name,
            'puppies_prog_description' =>$program_description,
            'puppies_prog_price' => $price,

        );


        $this->pet_management_model->edit_service_detail_for_puppies($puppy_service_id,$data);


        $name = $this->session->userdata('complete_name');
        $log_usertype =  $this->session->userdata('account_type');
        $log_userID = $this->session->userdata("user_id");
        $log_action = "Update Service Detail";
        


        $now = date('Y-m-d H:i:s');
        $data2 = array(
            "log_user" => $name,
            "log_usertype" => $log_usertype,
            "log_userID" => $log_userID,
            "log_action" => $log_action,
            "log_date" => $now,
        );

        $this->admin_management->insert_new_log($data2);


        $this->session->set_flashdata('update_service_success','Service Program detail has been updated successfully');

        redirect("admin/services");
    }




    public function edit_service_cat(){

        $program_name = $this->input->post('program_name');
        $program_description = $this->input->post('program_description');
        $price = $this->input->post('price');
        $cat_service_id = $this->input->post('cat_service_id');

        $data = array(
            'cats_prog_name' => $program_name,
            'cats_prog_description' =>$program_description,
            'cats_prog_price' => $price,

        );


        $this->pet_management_model->edit_service_detail_for_cats($cat_service_id,$data);


        $name = $this->session->userdata('complete_name');
        $log_usertype =  $this->session->userdata('account_type');
        $log_userID = $this->session->userdata("user_id");
        $log_action = "Update Service Detail";
        


        $now = date('Y-m-d H:i:s');
        $data2 = array(
            "log_user" => $name,
            "log_usertype" => $log_usertype,
            "log_userID" => $log_userID,
            "log_action" => $log_action,
            "log_date" => $now,
        );

        $this->admin_management->insert_new_log($data2);


        $this->session->set_flashdata('update_service_success','Service Program detail has been updated successfully');

        redirect("admin/services");
    }



    public function edit_service_kitten(){

        $program_name = $this->input->post('program_name');
        $program_description = $this->input->post('program_description');
        $price = $this->input->post('price');
        $kitten_service_id = $this->input->post('kitten_service_id');

        $data = array(
            'kittens_prog_name' => $program_name,
            'kittens_prog_description' =>$program_description,
            'kittens_prog_price' => $price,

        );


        $this->pet_management_model->edit_service_detail_for_kittens($kitten_service_id,$data);


        $name = $this->session->userdata('complete_name');
        $log_usertype =  $this->session->userdata('account_type');
        $log_userID = $this->session->userdata("user_id");
        $log_action = "Update Service Detail";
        


        $now = date('Y-m-d H:i:s');
        $data2 = array(
            "log_user" => $name,
            "log_usertype" => $log_usertype,
            "log_userID" => $log_userID,
            "log_action" => $log_action,
            "log_date" => $now,
        );

        $this->admin_management->insert_new_log($data2);


        $this->session->set_flashdata('update_service_success','Service Program detail has been updated successfully');

        redirect("admin/services");
    }





  //ajax request for pet breed
  //ajax request not responding
    public function pet_breed($id){
        $id = $id;
        $result = $this->db->where("pettype_id",$id)->get("tbl_petbreeds")->result();
        echo json_encode($result);
    }



    //add diagnosis

    public function add_diagnosis(){

        

          $now = date('Y-m-d H:i:s');

          $assessment_date = $now;
          $date = $this->input->post("date");
          $time = $this->input->post("time");
          $appointment_id = $this->input->post("appointment_id");
          $veterinarian = $this->input->post("veterinarian");
          $vet_id = $this->input->post("vet_id");
          $pet_id = $this->input->post("pet_id");
          $pet_name = $this->input->post("pet_name");
          $age = $this->input->post("age");
          $complaints = $this->input->post("complaints");
          $treatment = $this->input->post("treatment");
          $prescription = $this->input->post("prescription");
          $service = $this->input->post("services");
          
          $pettype = $this->input->post("pettype");
          $is_adult = $this->input->post("is_adult");

          //get_service detail
          if($pettype == "Dog" || $is_adult == 1){
            echo "Dog";
            $get_dog_service = $this->pet_management_model->get_services_for_dog_by_prog_id($service);


            foreach ($get_dog_service as $d_service) {
                    echo $service_name = $d_service->adult_dog_prog_name;
                    echo $service_fee = $d_service->adult_dog_prog_price;
            }
          }else if($pettype == "Dog" || $is_adult == 0){
            echo "pups";

            $get_pups_service = $this->pet_management_model->get_services_for_puppies_by_prog_id($service);

            foreach ($get_pups_service as $p_service) {
                    echo  $service_name = $p_service->puppies_prog_name;
                    echo $service_fee = $p_service->puppies_prog_price;
            }

          }else if($pettype == "Cat" || $is_adult == 1){
            echo "cats";

            $get_cats_service = $this->pet_management_model->get_services_for_cats_by_prog_id($service);

            foreach ($get_cats_service as $c_service) {
                    echo $service_name = $c_service->cats_prog_name;
                    echo $service_fee = $c_service->cats_prog_price;
            }
          }else if($pettype == "Cat" || $is_adult == 0){
            echo "kittens";

             $get_kittens_service = $this->pet_management_model->get_services_for_kittens_by_prog_id($service);

            foreach ($get_kittens_service as $k_service) {
                    echo $service_name = $k_service->kittens_prog_name;
                    echo $service_fee = $k_service->kittens_prog_name;
            }
          }

          $total_fee = 150 + $service_fee;
          $lahat_service = "General Checkup, " . $service_name;

          $data = array(
            'assessment_date' => $assessment_date,
            'date' => $date,
            'time' => $time,
            'appointment_id' => $appointment_id,
            'veterinarian' => $veterinarian,
            'vet_id' => $vet_id,
            'pet_id' => $pet_id,
            'petname' => $pet_name,
            'age' => $age,
            'complaints' => $complaints,
            'treatment' => $treatment,
            'prescription' => $prescription,
            'all_services' => $lahat_service,
            'service_fee' =>$total_fee,
          );



          $data2 = array(
            'tapos_na' => 1,
          );


          $this->appointment_management->tapos_na_ung_checkup($appointment_id,$data2);


          $this->pet_management_model->add_checkup_detail($data);


          

          redirect('veterinarian/appointments');

    }






    public function add_service_to_pet(){
        echo "hi servoce";

        $checkBoxs = implode(',', $_POST['services']);
    }
}
