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
        $this->load->model('settings_model');
        //echo 1;
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
        'pet_profile' => $image,
        //'is_active' => "Active",
        
        'dateAdded' => $now,
        );

        $this->pet_management_model->insert_new_pet($data);

        $this->session->set_flashdata('add_pet_success','New Pet has been added');
        redirect('staff/pets');
    }



    //pag nasa customer side
    public function add_pet_ajax(){

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
        'customer_table_id' => $this->input->post('customer_table_id'),
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

        $name = $this->session->userdata('complete_name');
        $log_usertype =  $this->session->userdata('account_type');
        $log_userID = $this->session->userdata("user_id");
        $log_action = "Add New Pet";
        


        $now = date('Y-m-d H:i:s');
        $data2 = array(
            "log_user" => $name,
            "log_usertype" => $log_usertype,
            "log_userID" => $log_userID,
            "log_action" => $log_action,
            "log_date" => $now,
        );



        $this->admin_management->insert_new_log($data2);

        $msg = "New Pet has been added successfully";

        echo json_encode(['code'=>200, 'msg'=>$msg]);

    }


    public function add_pettype(){
        $pettype_code = strtolower($this->input->post("pettype"));
        $pettype = ucfirst($this->input->post("pettype"));
        $status = "Active";

        $add_pettype = array(
            'pettype_code' => $pettype_code,
            'pettype' => $pettype,
            'pettype_status' => $status,
        );

        $this->pet_management_model->insert_new_pettype($add_pettype);

        $name = $this->session->userdata('complete_name');
        $log_usertype =  $this->session->userdata('account_type');
        $log_userID = $this->session->userdata("user_id");
        $log_action = "Add New Pet Type ";
        


        $now = date('Y-m-d H:i:s');
        $data2 = array(
            "log_user" => $name,
            "log_usertype" => $log_usertype,
            "log_userID" => $log_userID,
            "log_action" => $log_action,
            "log_date" => $now,
        );



        $this->admin_management->insert_new_log($data2);

        $msg = "New Pet Type has been added successfully";

        echo json_encode(['code'=>200, 'msg'=>$msg]);
    }

   /* public function add_pet_breed(){
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
    }*/


    //ajax base add_pet_breed
    public function add_pet_breed(){
        $pettype_id = $this->input->post("pet_type");
        $get_pettype_code = $this->pet_management_model->find_pettype_by_pettype_id($pettype_id);
        foreach($get_pettype_code as $gpc){
            $code = $gpc->pettype_code;
        }

        $breed = $this->input->post("pet_breed");
        $description = $this->input->post("breed_description");

        $breed_status = "Active";


        $add_petbreed = array(
            'pettype_id' => $pettype_id,
            'pettype_code' => $code,
            'pet_breed' => $breed,
            'breed_description' => $description,
            'breed_status' => $breed_status,
        );


        var_dump($add_petbreed);


        $this->pet_management_model->insert_new_pet_breed($add_petbreed);



        $name = $this->session->userdata('complete_name');
        $log_usertype =  $this->session->userdata('account_type');
        $log_userID = $this->session->userdata("user_id");
        $log_action = "Add New Pet Breed ";
        
        $now = date('Y-m-d H:i:s');
        $data2 = array(
            "log_user" => $name,
            "log_usertype" => $log_usertype,
            "log_userID" => $log_userID,
            "log_action" => $log_action,
            "log_date" => $now,
        );



        $this->admin_management->insert_new_log($data2);

        $msg = "New Pet Breed has been added successfully";

        echo json_encode(['code'=>200, 'msg'=>$msg]);

    }


    //ajax load ... i  think this will not be use???
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




    //we will set breed to inactive
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
   /* public function add_new_pet_staff_action(){

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
    }*/



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


    //gago
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




   //services
    public function add_new_service(){
        $for_what_pet = $this->input->post("for_what_pet");
        $for_pet_ages = $this->input->post("for_pet_ages");
        $service_name = $this->input->post("service_name");
        $service_description = $this->input->post("service_description");
        $service_fee = $this->input->post("service_fee");
        $service_status = "Active";


        $add_service = array(
            'for_what_pet' => $for_what_pet,
            'for_pet_ages' => $for_pet_ages,
            'service_name' => $service_name,
            'service_description' => $service_description,
            'service_fee' => $service_fee,
            'service_status' => $service_status,
        );


        $this->pet_management_model->add_service($add_service);
       

        $name = $this->session->userdata('complete_name');
        $log_usertype =  $this->session->userdata('account_type');
        $log_userID = $this->session->userdata("user_id");
        $log_action = "Add new Pet Service";  

        $now = date('Y-m-d H:i:s');
        $data2 = array(
            "log_user" => $name,
            "log_usertype" => $log_usertype,
            "log_userID" => $log_userID,
            "log_action" => $log_action,
            "log_date" => $now,
        );      

        $this->admin_management->insert_new_log($data2);


        $msg = "New Pet Service has been added successfully";
        echo json_encode(['code'=>200, 'msg'=>$msg]); 

    }

    //change status 
    public function change_status_service(){
        $status = $this->input->post("status");
        $service_id = $this->input->post("service_id");
        $service_name = $this->input->post("service_name");


        $data = array(
            'service_status' => $status,

        );

        $this->pet_management_model->update_service_detail($data,$service_id);



        $name = $this->session->userdata('complete_name');
        $log_usertype =  $this->session->userdata('account_type');
        $log_userID = $this->session->userdata("user_id");
        $log_action = "Change Status of  service " . $service_name . " to " . $status;
        
        $now = date('Y-m-d H:i:s');
        $logs = array(
            "log_user" => $name,
            "log_usertype" => $log_usertype,
            "log_userID" => $log_userID,
            "log_action" => $log_action,
            "log_date" => $now,
        );



        $this->admin_management->insert_new_log($logs);


        $msg = "Service status has been updated";
        echo json_encode(['code'=>200, 'msg'=>$msg]);
    }


    public function edit_service_detail(){
        $for_what_pet = $this->input->post("for_what_pet");
        $for_pet_ages = $this->input->post("for_pet_ages");
        $service_name = $this->input->post("service_name");
        $service_description = $this->input->post("service_description");
        $service_fee = $this->input->post("service_fee");

        $service_id = $this->input->post("service_id");

        $edit_service = array(
            'for_what_pet' => $for_what_pet,
            'for_pet_ages' => $for_pet_ages,
            'service_name' => $service_name,
            'service_description' => $service_description,
            'service_fee' => $service_fee,
         
        );


        $this->pet_management_model->update_service_detail($edit_service,$service_id);

        $name = $this->session->userdata('complete_name');
        $log_usertype =  $this->session->userdata('account_type');
        $log_userID = $this->session->userdata("user_id");
        $log_action = "Update  Pet Service Details";  

        $now = date('Y-m-d H:i:s');
        $data2 = array(
            "log_user" => $name,
            "log_usertype" => $log_usertype,
            "log_userID" => $log_userID,
            "log_action" => $log_action,
            "log_date" => $now,
        );      

        $this->admin_management->insert_new_log($data2);


        $msg = "Pet Service detail has been updated successfully";
        echo json_encode(['code'=>200, 'msg'=>$msg]); 

    }

/* luma to

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



    // will not be use kasi papalitan natin ung sa services -------
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

    ///will not be use kasi papalitan natin ung sa services -------
    */


  //ajax request for pet breed
  //ajax request not responding
    public function pet_breed($id){
        $id = $id;
        $result = $this->db->where("pettype_id",$id)->get("tbl_petbreeds")->result();
        echo json_encode($result);
    }



    //add diagnosis

   /* public function add_diagnosis(){

        

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

    }*/


    //add diagnosos_ajax
    public function add_diagnosis_ajax(){

        

          $now = date('Y-m-d H:i:s');

          $assessment_date = $now;
         /* $date = $this->input->post("date");
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
          $veterinary_fee = $this->settings_model->get_all_settings_detail_by_settings_id(1);
          foreach($veterinary_fee as $vet_fee){
            $v_fee = $vet_fee->vet_fee;
          }

         

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
           
          );

          $this->pet_management_model->add_checkup_detail($data);
          $checkup_id = $this->db->insert_id();

          $nagastos_nababayaran = 0;
          for($count =0;$count<count($this->input->post("service_id"));$count++){
            //$this->input->post("content")[$count];
            $array_insert_service_rendered = array(
                'checkup_id' => $checkup_id,
                'service_id' =>$this->input->post("service_id")[$count],
            );

            $this->pet_management_model->add_service_rendered_data($array_insert_service_rendered);  
            $nagastos = $this->pet_management_model->get_all_pet_services_by_service_id($this->input->post("service_id")[$count]);

            foreach($nagastos as $total){
                $nagastos_nababayaran = $nagastos_nababayaran + $total->service_fee;
            }
            
          }


          //compute sa total na nagastos
          $total_service_fee = $v_fee = $nagastos_nababayaran;

          $update_total_fee = array(
            'service_fee' => $total_service_fee,
          );

          $this->pet_management_model->update_checkup_detail($update_total_fee,$checkup_id);

          

          //redirect('veterinarian/appointments');

          */

             /*$time = $this->input->post("ivan");
            $appointment_id = $this->input->post("appointment_id");
            echo 'ivsa' . $this->input->post("ivan");*/




          /*echo $this->input->post("date");
          echo "<br />";
          echo $this->input->post("time");
          echo "<br />";
          echo $this->input->post("appointment_id");
          echo "<br />";
          echo $this->input->post("veterinarian");
          echo "<br />";
          echo $this->input->post("vet_id");
          echo "<br />";
          echo $this->input->post("pet_id");
          echo "<br />";
          echo $this->input->post("age");
          echo "<br />";
          echo $this->input->post("pettype");*/
          echo "<br />";
          echo $this->input->post("is_adult");
          echo "<br />";
          //echo $this->input->post("pet_name");
          echo $this->input->post('pet_data_id');
          //var_dump($this->input->post());
          echo "<br />";
          echo $this->input->post("pet_name");
          echo "<br />";
          echo $this->input->post("complaints");
          echo "<br />";
          echo $this->input->post("treatment");

          echo "<br />";
          echo $this->input->post("prescription");


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
           
          );



          $this->pet_management_model->add_checkup_detail($data);
          $checkup_id = $this->db->insert_id();


          //get_service detail
          $veterinary_fee = $this->settings_model->get_all_settings_detail_by_settings_id(1);
          foreach($veterinary_fee as $vet_fee){
            $v_fee = $vet_fee->vet_fee;
          }

          if (empty($this->input->post("service_id"))) {
              echo "wala laman";
          }

          $nagastos_nababayaran = 0;
          for($count =0;$count<count($this->input->post("service_id"));$count++){
            echo "check up id is" . $checkup_id;
            echo $this->input->post("service_id")[$count];
            $service_id = $this->input->post("service_id");

            $reference_service_id = 0;

            if(empty($this->input->post("service_id"))){
                $reference_service_id;
            }else{
                $reference_service_id = $this->input->post("service_id")[$count];
            }

            $service_detail = $this->pet_management_model->get_all_pet_services_by_service_id($reference_service_id[$count]);




            foreach($service_detail as $sd){
                $service_name = $sd->service_name;
                if($sd->service_name == " "){
                    $service_name = "none";
                }else{
                    $service_name = $sd->service_name;
                }

                $service_fee = $sd->service_fee;
            }
            $array_insert_service_rendered = array(
                'checkup_id' => $checkup_id,
                'service_id' =>$this->input->post("service_id")[$count],
                'service_name' => $service_name,
                'service_fees' => $service_fee,
            );





            $this->pet_management_model->add_service_rendered_data($array_insert_service_rendered);  
            $nagastos = $this->pet_management_model->get_all_pet_services_by_service_id($this->input->post("service_id")[$count]);

            foreach($nagastos as $total){
                $nagastos_nababayaran = $nagastos_nababayaran + $total->service_fee;
            }
            
          }//end count


        //compute sa total na nagastos
        /*  $total_service_fee = $v_fee = $nagastos_nababayaran;

          $update_total_fee = array(
            'service_fee' => $total_service_fee,
          );

          echo "<br />  total na nagastos is " .  $total_service_fee;

          $this->pet_management_model->update_checkup_detail($update_total_fee,$checkup_id);*/


    }


    public function add_diagnosis_record_vet_action(){


          echo $this->input->post("date");
          echo "<br />";
          echo $this->input->post("time");
          echo "<br />";
          echo $this->input->post("appointment_id");
          echo "<br />";
          echo $this->input->post("veterinarian");
          echo "<br />";
          echo $this->input->post("vet_id");
          echo "<br />";
          echo $this->input->post("pet_id");
          echo "<br />";
          echo $this->input->post("age");
          echo "<br />";
          echo $this->input->post("pettype");
          echo "<br />";
          echo $this->input->post("is_adult");
          echo "<br />";
          //echo $this->input->post("pet_name");
          echo $this->input->post('pet_data_id');
          //var_dump($this->input->post());
          echo "<br />";
          echo $this->input->post("pet_name");
          echo "<br />";
          echo $this->input->post("complaints");
          echo "<br />";
          echo $this->input->post("treatment");

          echo "<br />";
          echo $this->input->post("prescription");



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
          $pettype = $this->input->post("pettype");
          $is_adult = $this->input->post("is_adult");
          $appointment_table_id = $this->input->post("appointment_table_id");



          $checkup_data = array(
                'assessment_date' => $assessment_date,
                'date' => $date,
                'time' => $time,
                'appointment_id' => $appointment_id,
                'appointment_table_id' => $appointment_table_id,
                'veterinarian' => $veterinarian,
                'vet_id' => $vet_id,
                'pet_id' => $pet_id,
                'petname' => $pet_name,
                'age' => $age,
                'complaints' => $complaints,
                'treatment' => $treatment,
                'prescription' => $prescription,
               
          );


        $this->pet_management_model->add_checkup_detail($checkup_data);


        $checkup_id = $this->db->insert_id();

        $service = $this->input->post('service_id');

        $veterinary_fee = $this->settings_model->get_all_settings_detail_by_settings_id(1);
          foreach($veterinary_fee as $vet_fee){
            $v_fee = $vet_fee->vet_fee;
        }

        $services = "";
        for($count = 0; $count<count($_POST["service_id"]); $count++)
        {
            //echo $_POST["service_id"][$count] .'<br />';

            if($_POST["service_id"][$count] != 0){
                $service_detail = $this->pet_management_model->get_all_pet_services_by_service_id($_POST["service_id"][$count]);
                foreach($service_detail as $s){
                    $services = $s->service_name;
                    $service_fee = $s->service_fee;
                }
            }else{
                $services = "General Checkup";
                $service_fee = $v_fee;
            }

            $data_insert_services = array(
                'checkup_id' => $checkup_id,
                'service_id' => $_POST["service_id"][$count],
                'service_name' => $services,
                'service_fees' => $service_fee,
                'appointment_table_id' => $appointment_table_id,
            );

            echo $services;

            $this->pet_management_model->add_service_rendered_data($data_insert_services);
        }





        //is finished will be 1 na

        $update_finish = array(
            'is_finished' => 1,
        );

        $this->appointment_management->update_appointment_detail($appointment_table_id,$update_finish);



        redirect('veterinarian/appointments');

        //var_dump($data);
    }//end code block

 /*  public function add_diagnosis_record_vet_action(){

          echo $this->input->post("date");
          echo "<br />";
          echo $this->input->post("time");
          echo "<br />";
          echo $this->input->post("appointment_id");
          echo "<br />";
          echo $this->input->post("veterinarian");
          echo "<br />";
          echo $this->input->post("vet_id");
          echo "<br />";
          echo $this->input->post("pet_id");
          echo "<br />";
          echo $this->input->post("age");
          echo "<br />";
          echo $this->input->post("pettype");
          echo "<br />";
          echo $this->input->post("is_adult");
          echo "<br />";
          //echo $this->input->post("pet_name");
          echo $this->input->post('pet_data_id');
          //var_dump($this->input->post());
          echo "<br />";
          echo $this->input->post("pet_name");
          echo "<br />";
          echo $this->input->post("complaints");
          echo "<br />";
          echo $this->input->post("treatment");

          echo "<br />";
          echo $this->input->post("prescription");



          $now = date('Y-m-d H:i:s');

          $assessment_date = $now;

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
          $pettype = $this->input->post("pettype");
          $is_adult = $this->input->post("is_adult");
          $appointment_table_id = $this->input->post("appointment_table_id");


          $service_id = $this->input->post("service_id");


          $veterinary_fee = $this->settings_model->get_all_settings_detail_by_settings_id(1);
          foreach($veterinary_fee as $vet_fee){
            $v_fee = $vet_fee->vet_fee;
          }


         //$service_id = 0;
          $service_name ="";
          $service_fee = 0;


          if(empty($service_id)){
            echo "wala nga laman";
            $service_id = 0;
            $service_name = "General Checkup";
            $service_fee = $v_fee;
          }


          $get_service_detail = $this->pet_management_model->get_all_pet_services_by_service_id($service_id);



          foreach($get_service_detail as $sd){
            echo $service_name = $sd->service_name;
            echo $service_fee =  $sd->service_fee;
          }



          //check to see if the service is already been catered

          $check_service_done = $this->pet_management_model->check_is_service_is_done_by_appointment_table_id_and_service_id($appointment_id,$service_id);


        if($check_service_done){
            //meron na
                   
            $this->session->set_flashdata('save_record_already','Service has already been done');
            redirect('veterinarian/appointments');
            echo  "<br />meron na";
            exit;
        }else{



                 $checkup_data = array(
                'assessment_date' => $assessment_date,
                'date' => $date,
                'time' => $time,
                'appointment_id' => $appointment_id,
                'appointment_table_id' => $appointment_table_id,
                'veterinarian' => $veterinarian,
                'vet_id' => $vet_id,
                'pet_id' => $pet_id,
                'petname' => $pet_name,
                'age' => $age,
                'complaints' => $complaints,
                'treatment' => $treatment,
                'prescription' => $prescription,
                'service_id' => $service_id,
                'service_name' => $service_name,
                'service_fee' => $service_fee,
              );


              //insert to tbl checkup
              $this->pet_management_model->add_checkup_detail($checkup_data);

              //var_dump($checkup_data);

             
              /*
              //vet fee === plus the service fee
              $total_payment = $v_fee + $service_fee;

              //get appointment detail by appointment data id

              $appointment_detail = $this->appointment_management->get_appointment_detail_by_appointment_data_id($appointment_id);

              foreach($appointment_detail as $ap){
                $total_payment_recent = $ap->total_payment;
                $complaints_recent = $ap->complaints;
              }


              $new_total_payment = 0;
              if($total_payment_recent == 0){
                $new_total_payment = $total_payment;
              }else{

                //meron na.. dagdagan nalang
                 $new_total_payment = $total_payment_recent + $total_payment;
              }



              $additonal_complaints = $complaints_recent .'<br />'.$complaints;


              //update total payment to appointment table
              $update_total_payment = array(
                'total_payment' => $new_total_payment,
                'complaints' => $additonal_complaints,
              );


              $this->appointment_management->update_appointment_detail_by_appointment_data_id($appointment_id,$update_total_payment);

              

            $this->session->set_flashdata('save_record_success','New Record has been added successfully');
            redirect('veterinarian/appointments');
        } 

          




    }*/




    public function service_lang(){

          $nagastos_nababayaran = 0;
          for($count =0;$count<count($this->input->post("service_id"));$count++){
             echo $this->input->post("service_id")[$count];
          }//end coun


          for($count =0;$count<count($this->input->post("content"));$count++){
             echo $this->input->post("content")[$count];
          }//end coun
    }




    public function add_service_to_pet(){
        echo "hi servoce";

        $checkBoxs = implode(',', $_POST['services']);
    }



    public function print_prescription(){

    }
}
