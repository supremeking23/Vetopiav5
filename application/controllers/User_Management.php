<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User_Management extends CI_Controller {

	function __construct() {

        parent::__construct();
       
        date_default_timezone_set('Asia/Taipei');

        
        
        //for reading.. retrieving
        $this->load->model('admin_management');
        $this->load->model('customer_management');
        $this->load->model('veterinarian_management');
        $this->load->model('staff_management');


        //$this->load->helper(array('form', 'url'));
        //library
        //$this->load->library('form_validation');
    }

	public function add_new_admin(){


            //for username and password
            $firstname = $this->input->post('first_name');
            $substring_firstname = substr($firstname, 0, 1);
            $lastname = $this->input->post('last_name');
            $username = $substring_firstname .''. $lastname;

            //password will be the user id
            $password = $this->input->post('admin_id');
            echo $hash_password = password_hash($password, PASSWORD_DEFAULT);
   
           //$username = $substring_firstname.''. $lastname .'_'. $this->input->post('birthdate');
           //echo $username;
            


		    $now = date('Y-m-d H:i:s');
            $data = array(
            'admin_id' => $this->input->post('admin_id'),
           
            'firstname' => $this->input->post('first_name'),
            'middlename' => $this->input->post('middle_name'),
            'lastname' => $this->input->post('last_name'),
            'gender' => $this->input->post('gender'),
            'birthdate' => $this->input->post('birthdate'),
            'contact' => $this->input->post('contact'),
            'email' => $this->input->post('email'),
            'homeAddress' => $this->input->post('homeAddress'),
            'barangayAddress' => $this->input->post('barangayAddress'),
            'email' =>$this->input->post('email'),
            'cityAddress' => $this->input->post('cityAddress'),

            'postalID'=> $this->input->post('postalID'),

           
            'admin_status' => "Active",
            'dateAdded' => $now,
            'admin_type' => "Admin",
            );

            $this->admin_management->insert_new_admin($data);


            //insert credentials

            $data_credentials = array(
                'user_type' => 'Admin',
                'user_id' =>$this->input->post('admin_id'),
                'username' => $username,
                'password' => $password,
                'hash_password' => $hash_password,
                'last_modified' => $now,
            );
            

            $this->admin_management->insert_username_password($data_credentials);

            $name = $this->session->userdata('complete_name');
            $log_usertype =  $this->session->userdata('account_type');
            $log_userID = $this->session->userdata("user_id");
            $log_action = "Add new Admin";
            


            $now = date('Y-m-d H:i:s');
            $data2 = array(
                "log_user" => $name,
                "log_usertype" => $log_usertype,
                "log_userID" => $log_userID,
                "log_action" => $log_action,
                "log_date" => $now,
            );



            $this->admin_management->insert_new_log($data2);           

            $this->session->set_flashdata('add_admin_success','New Admin has been added');
            redirect('Admin/Admins');

	}


    public function update_admin_details(){

        $now = date('Y-m-d H:i:s');
        $user_id_update =  $this->input->post('user_id_update');
        $password = $this->input->post('password');
        $username = $this->input->post('username');
        $user_id = $this->input->post('admin_id');

        $data = array(

            'firstname' => $this->input->post('firstname'),
            'middlename' => $this->input->post('middlename'),
            'lastname' => $this->input->post('lastname'),
            'gender' => $this->input->post('gender'),
            'birthdate' => $this->input->post('birthdate'),
            'contact' => $this->input->post('contact'),
            'homeAddress' => $this->input->post('homeAddress'),
            'barangayAddress' => $this->input->post('barangayAddress'),
            'cityAddress' => $this->input->post('cityAddress'),
            'postalID'=> $this->input->post('postalID'),
            'email' => $this->input->post('email'),

        );


        var_dump($data);

        


        $this->admin_management->update_admin($user_id_update,$data);

        $hash_password = password_hash($password, PASSWORD_DEFAULT);
        //insert credentials

        $data_credentials = array(
           
            'username' => $username,
            'password' => $password,
            'hash_password' => $hash_password,
            'last_modified' => $now,
        );
        

        $this->admin_management->update_credentials($user_id,$data_credentials);

        $this->session->set_flashdata('update_admin_success','Admin information has been updated successfully');
        redirect('Admin/Admin_details/'.$user_id_update);

    }


    public function update_profile_admin(){


        $user_id_update =  $this->input->post('user_id_update');


        //config for upload image \assets\images\profiles
        $config['upload_path']          = './assets/images/profiles/';
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
                    $default_image_name = $this->admin_management->get_admin_by_id($user_id_update);
                    foreach ($default_image_name as $default_image) {
                               $image = $default_image->profile; 
                    
                    }
                    


                   //$image ='';
                             
                   echo 12;      
                   echo "dsds"; 


                   //check for errors
                  /* $error = array('error' => $this->upload->display_errors());

                    $this->load->view('file_view', $error);*/
        }

        $data = array(

         
            'profile' =>$image,
    

        );


        var_dump($data);


            $this->admin_management->update_admin($user_id_update,$data);

            $this->session->set_flashdata('update_admin_success','Admin information has been updated successfully');
            redirect('Admin/Admin_details/'.$user_id_update);

    }



    //END ADMIN

    public function add_new_customer(){
            //for username and password
            $firstname = $this->input->post('first_name');
            $substring_firstname = substr($firstname, 0, 1);
            $lastname = $this->input->post('last_name');
            $username = $substring_firstname .''. $lastname;

            //password will be the user id
            $password = $this->input->post('customer_id');
            echo $hash_password = password_hash($password, PASSWORD_DEFAULT);



            $now = date('Y-m-d H:i:s');
            $data = array(
            'customer_id' => $this->input->post('customer_id'),
           
            'firstname' => $this->input->post('first_name'),
            'middlename' => $this->input->post('middle_name'),
            'lastname' => $this->input->post('last_name'),
            'gender' => $this->input->post('gender'),
            'birthdate' => $this->input->post('birthdate'),
            'contact' => $this->input->post('contact'),
            'homeAddress' => $this->input->post('homeAddress'),
            'barangayAddress' => $this->input->post('barangayAddress'),

            'cityAddress' => $this->input->post('cityAddress'),

            'postalID'=> $this->input->post('postalID'),

            'email' => $this->input->post('email'),
            'customer_status' => "Active",
            'dateAdded' => $now,
            );

            $this->customer_management->insert_new_customer($data);




           


            //insert credentials

            $data_credentials = array(
                'user_type' => 'Customer',
                'user_id' =>$this->input->post('customer_id'),
                'username' => $username,
                'password' => $password,
                'hash_password' => $hash_password,
                'last_modified' => $now,
            );
            

            $this->admin_management->insert_username_password($data_credentials);

            $name = $this->session->userdata('complete_name');
            $log_usertype =  $this->session->userdata('account_type');
            $log_userID = $this->session->userdata("user_id");
            $log_action = "Add new Customer";
            


            $now = date('Y-m-d H:i:s');
            $data2 = array(
                "log_user" => $name,
                "log_usertype" => $log_usertype,
                "log_userID" => $log_userID,
                "log_action" => $log_action,
                "log_date" => $now,
            );

            $this->admin_management->insert_new_log($data2);     
        


         
        
        //for email  uncomment if you are connected to the internet
        $config = array(
            'protocol' => 'smtp',
            'smtp_host' => 'ssl://smtp.googlemail.com',
            'smtp_port' => 465,
            'smtp_user' => 'vetopiaC@gmail.com',
            'smtp_pass' => 'vetopiaC123',
            'mailtype' => 'html',
            'charset' => 'iso-8859-1',
            'wordwrap' => TRUE

        );

       // $message = "Hello ivan";


        //email for passing username and password
      
        $this->load->library('email',$config);
        $this->email->set_newline("\r\n");
        $this->email->from('vetopiaC@gmail.com');
        $this->email->to($this->input->post('email'));
        $this->email->subject('Subject: Customer Registration');

        //$message = "Hi " . $this->input->post('first_name') . "!  here is your username and password   ".$username." : ".$password." ";
        $message = "Hi " . $this->input->post('first_name') . '! <br /> here is your username and password. <br /> ';
        $message .= 'Username: '.$username . ' <br /> Password: ' . $password;

        $this->email->message($message);

        if($this->email->send()){
            echo "email sent.";
        }else{
            show_error($this->email->print_debugger());
        }
        
    
        

        $this->session->set_flashdata('add_customer_success','New Customer has been added');
        redirect('Admin/Customers');
    }

    public function add_new_customer_staff_action(){
            //for username and password
            $firstname = $this->input->post('first_name');
            $substring_firstname = substr($firstname, 0, 1);
            $lastname = $this->input->post('last_name');
            $username = $substring_firstname .''. $lastname;

            //password will be the user id
            $password = $this->input->post('customer_id');
            echo $hash_password = password_hash($password, PASSWORD_DEFAULT);



            $now = date('Y-m-d H:i:s');
            $data = array(
            'customer_id' => $this->input->post('customer_id'),
           
            'firstname' => $this->input->post('first_name'),
            'middlename' => $this->input->post('middle_name'),
            'lastname' => $this->input->post('last_name'),
            'gender' => $this->input->post('gender'),
            'birthdate' => $this->input->post('birthdate'),
            'contact' => $this->input->post('contact'),
            'homeAddress' => $this->input->post('homeAddress'),
            'barangayAddress' => $this->input->post('barangayAddress'),

            'cityAddress' => $this->input->post('cityAddress'),

            'postalID'=> $this->input->post('postalID'),

            'email' => $this->input->post('email'),
            'customer_status' => "Active",
            'dateAdded' => $now,
            );

            $this->customer_management->insert_new_customer($data);




           


            //insert credentials

            $data_credentials = array(
                'user_type' => 'Customer',
                'user_id' =>$this->input->post('customer_id'),
                'username' => $username,
                'password' => $password,
                'hash_password' => $hash_password,
                'last_modified' => $now,
            );
            

            $this->admin_management->insert_username_password($data_credentials);

            $name = $this->session->userdata('complete_name');
            $log_usertype =  $this->session->userdata('account_type');
            $log_userID = $this->session->userdata("user_id");
            $log_action = "Add new Customer";
            


            $now = date('Y-m-d H:i:s');
            $data2 = array(
                "log_user" => $name,
                "log_usertype" => $log_usertype,
                "log_userID" => $log_userID,
                "log_action" => $log_action,
                "log_date" => $now,
            );

            $this->admin_management->insert_new_log($data2); 


             

            //for email uncomment if you are connected to the internet
            $config = array(
                'protocol' => 'smtp',
                'smtp_host' => 'ssl://smtp.googlemail.com',
                'smtp_port' => 465,
                'smtp_user' => 'vetopiaC@gmail.com',
                'smtp_pass' => 'vetopiaC123',
                'mailtype' => 'html',
                'charset' => 'iso-8859-1',
                'wordwrap' => TRUE

            );

           // $message = "Hello ivan";


            //email for passing username and password
          
            $this->load->library('email',$config);
            $this->email->set_newline("\r\n");
            $this->email->from('vetopiaC@gmail.com');
            $this->email->to($this->input->post('email'));
            $this->email->subject('Subject: Customer Registration');

            //$message = "Hi " . $this->input->post('first_name') . '! <br /> here is your username and password   '.$username.' : '.$password.' ';

            $message = "Hi " . $this->input->post('first_name') . '! <br /> here is your username and password. <br /> ';
            $message .= 'Username: '.$username . ' <br /> Password: ' . $password;

            $this->email->message($message);

            if($this->email->send()){
                echo "email sent.";
            }else{
                show_error($this->email->print_debugger());
            }

                               

            $this->session->set_flashdata('add_customer_success','New Customer has been added');
            redirect('Staff/Customers');
    }





    public function update_profile_customer_staff_action(){


     $user_id_update =  $this->input->post('user_id_update');


            //config for upload image \assets\images\profiles
            $config['upload_path']          = './assets/images/profiles/';
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
                        $default_image_name = $this->customer_management->get_customer_by_id($user_id_update);
                        foreach ($default_image_name as $default_image) {
                                   $image = $default_image->profile; 
                        
                        }
                        


                       //$image ='';
                                 
                       echo 12;      
                       echo "dsds"; 


                       //check for errors
                      /* $error = array('error' => $this->upload->display_errors());

                        $this->load->view('file_view', $error);*/
            }

            $data = array(

             
                'profile' =>$image,
        

            );


            var_dump($data);


                $this->customer_management->update_customer($user_id_update,$data);

                $this->session->set_flashdata('update_customer_success','Customer information has been updated successfully');
                redirect('Staff/Customer_details/'.$user_id_update);
    }




    public function update_customer_details(){


        $now = date('Y-m-d H:i:s');
        $user_id_update =  $this->input->post('user_id_update');
        $password = $this->input->post('password');
        $username = $this->input->post('username');
        $user_id = $this->input->post('customer_id');

        $data = array(

            'firstname' => $this->input->post('firstname'),
            'middlename' => $this->input->post('middlename'),
            'lastname' => $this->input->post('lastname'),
            'gender' => $this->input->post('gender'),
            'birthdate' => $this->input->post('birthdate'),
            'contact' => $this->input->post('contact'),
            'homeAddress' => $this->input->post('homeAddress'),
            'barangayAddress' => $this->input->post('barangayAddress'),
            'cityAddress' => $this->input->post('cityAddress'),
            'postalID'=> $this->input->post('postalID'),
            
            'email' => $this->input->post('email'),

        );


        var_dump($data);

        $hash_password = password_hash($password, PASSWORD_DEFAULT);
        //insert credentials

        $data_credentials = array(
           
            'username' => $username,
            'password' => $password,
            'hash_password' => $hash_password,
            'last_modified' => $now,
        );
        

        $this->admin_management->update_credentials($user_id,$data_credentials);


        $this->customer_management->update_customer($user_id_update,$data);

        $this->session->set_flashdata('update_customer_success','Customer information has been updated successfully');
        redirect('Admin/Customer_details/'.$user_id_update);

    }


    public function update_customer_details_staff_action(){


        $now = date('Y-m-d H:i:s');
        $user_id_update =  $this->input->post('user_id_update');
        $password = $this->input->post('password');
        $username = $this->input->post('username');
        $user_id = $this->input->post('customer_id');

        $data = array(

            'firstname' => $this->input->post('firstname'),
            'middlename' => $this->input->post('middlename'),
            'lastname' => $this->input->post('lastname'),
            'gender' => $this->input->post('gender'),
            'birthdate' => $this->input->post('birthdate'),
            'contact' => $this->input->post('contact'),
            'homeAddress' => $this->input->post('homeAddress'),
            'barangayAddress' => $this->input->post('barangayAddress'),
            'cityAddress' => $this->input->post('cityAddress'),
            'postalID'=> $this->input->post('postalID'),
            
            'email' => $this->input->post('email'),

        );


        var_dump($data);

        $hash_password = password_hash($password, PASSWORD_DEFAULT);
        //insert credentials

        $data_credentials = array(
           
            'username' => $username,
            'password' => $password,
            'hash_password' => $hash_password,
            'last_modified' => $now,
        );
        

        $this->admin_management->update_credentials($user_id,$data_credentials);


        $this->customer_management->update_customer($user_id_update,$data);

        $this->session->set_flashdata('update_customer_success','Customer information has been updated successfully');
        redirect('Staff/Customer_details/'.$user_id_update);

    }

    

    public function update_profile_customer(){


        $user_id_update =  $this->input->post('user_id_update');


        //config for upload image \assets\images\profiles
        $config['upload_path']          = './assets/images/profiles/';
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
                    $default_image_name = $this->customer_management->get_customer_by_id($user_id_update);
                    foreach ($default_image_name as $default_image) {
                               $image = $default_image->profile; 
                    
                    }
                    


                   //$image ='';
                             
                   echo 12;      
                   echo "dsds"; 


                   //check for errors
                  /* $error = array('error' => $this->upload->display_errors());

                    $this->load->view('file_view', $error);*/
        }

        $data = array(

         
            'profile' =>$image,
    

        );


        var_dump($data);


            $this->customer_management->update_customer($user_id_update,$data);

            $this->session->set_flashdata('update_customer_success','Customer information has been updated successfully');
            redirect('Admin/Customer_details/'.$user_id_update);

    }


    public function change_password_customer(){
        $old_password = $this->input->post('old_password');
        $new_password = $this->input->post('new_password');
        $confirm_password = $this->input->post('confirm_password');

        //check to see if the old password is correct
        $log_userID = $this->session->userdata("user_id");

        $check_correct = $this->admin_management->check_password_user_id_matched($log_userID,$old_password);

        if($check_correct){
            echo 'paedit na';
            //check to see if both new_password and confirm_password is match
            if($new_password ==$confirm_password){
                echo "match po";

                $hash_password = password_hash($new_password, PASSWORD_DEFAULT);
                $now = date('Y-m-d H:i:s');

                $update_password = array(
                    'password' => $new_password,
                    'hash_password' => $hash_password,
                    'last_modified' => $now,
                );

                $this->admin_management->update_credentials($log_userID,$update_password);
                $this->session->set_flashdata('update_customer_password','password has been updated successfully');
            }else{
                $this->session->set_flashdata('update_customer_password_mismatched','new password and confirm password doesnt matched');
            }
        }else{
            echo 'mali password mo boy';
            $this->session->set_flashdata('update_customer_password_failed','Pasword is incorrect');
            
        }



        redirect('Customer/Change_password');     
    }



    //END CUSTOMER



    public function add_new_vet(){
            $firstname = $this->input->post('first_name');
            $substring_firstname = substr($firstname, 0, 1);
            $lastname = $this->input->post('last_name');
            $username = $substring_firstname .''. $lastname;

            //password will be the user id
            $password = $this->input->post('vet_id');
            echo $hash_password = password_hash($password, PASSWORD_DEFAULT);

           $now = date('Y-m-d H:i:s');

            
            $data = array(
            'veterinarian_id' => $this->input->post('vet_id'),
           
            'firstname' => $this->input->post('first_name'),
            'middlename' => $this->input->post('middle_name'),
            'lastname' => $this->input->post('last_name'),
            'gender' => $this->input->post('gender'),
            'birthdate' => $this->input->post('birthdate'),
            'contact' => $this->input->post('contact'),
            'homeAddress' => $this->input->post('homeAddress'),
            'barangayAddress' => $this->input->post('barangayAddress'),
            'email'  => $this->input->post('email'),
            'cityAddress' => $this->input->post('cityAddress'),

            'postalID'=> $this->input->post('postalID'),

            
            'veterinarian_status' => "Active",
            'vetbio'  => $this->input->post('vetbio'),
            'dateAdded' => $now,
            );


            $this->veterinarian_management->insert_new_veterinarian($data);

            //insert credentials

            $data_credentials = array(
                'user_type' => 'Veterinarian',
                'user_id' =>$this->input->post('vet_id'),
                'username' => $username,
                'password' => $password,
                'hash_password' => $hash_password,
                'last_modified' => $now,
            );
            

            $this->admin_management->insert_username_password($data_credentials);

            $name = $this->session->userdata('complete_name');
            $log_usertype =  $this->session->userdata('account_type');
            $log_userID = $this->session->userdata("user_id");
            $log_action = "Add new Veterinarian";
            


            $now = date('Y-m-d H:i:s');
            $data2 = array(
                "log_user" => $name,
                "log_usertype" => $log_usertype,
                "log_userID" => $log_userID,
                "log_action" => $log_action,
                "log_date" => $now,
            );

            $this->admin_management->insert_new_log($data2); 

            $this->session->set_flashdata('add_vet_success','New Veterinarian has been added');
            redirect('Admin/Veterinarians');
    }


    public function update_vet_details(){


        $now = date('Y-m-d H:i:s');
        $user_id_update =  $this->input->post('user_id_update');
        $password = $this->input->post('password');
        $username = $this->input->post('username');
        $user_id = $this->input->post('veterinarian_id');

        $data = array(

            'firstname' => $this->input->post('firstname'),
            'middlename' => $this->input->post('middlename'),
            'lastname' => $this->input->post('lastname'),
            'gender' => $this->input->post('gender'),
            'birthdate' => $this->input->post('birthdate'),
            'contact' => $this->input->post('contact'),
            'homeAddress' => $this->input->post('homeAddress'),
            'barangayAddress' => $this->input->post('barangayAddress'),
            'cityAddress' => $this->input->post('cityAddress'),
            'postalID'=> $this->input->post('postalID'),
            'username'=> $this->input->post('username'),
            'password' =>$this->input->post('password'),
            'vetbio' => $this->input->post('vetbio'),
            'email' =>$this->input->post('email'),
    

        );


        var_dump($data);

        $hash_password = password_hash($password, PASSWORD_DEFAULT);
        //insert credentials

        $data_credentials = array(
           
            'username' => $username,
            'password' => $password,
            'hash_password' => $hash_password,
            'last_modified' => $now,
        );
        

        $this->admin_management->update_credentials($user_id,$data_credentials);

        $this->veterinarian_management->update_veterinarian($user_id_update,$data);

        $this->session->set_flashdata('update_vet_success','Veterinarian information has been updated successfully');
        redirect('Admin/Vet_details/'.$user_id_update);

    }


    

    public function update_profile_vet(){


        $user_id_update =  $this->input->post('user_id_update');


        //config for upload image \assets\images\profiles
        $config['upload_path']          = './assets/images/profiles/';
        //$config['upload_path']          = './uploads/';
        $config['allowed_types']        = 'gif|jpg|png|jpeg';
        //$config['max_size']             = 100;
        //$config['max_width']            = 761;
        //$config['max_height']           = 602;
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
                    $default_image_name = $this->veterinarian_management->get_veterinarian_by_id($user_id_update);
                    foreach ($default_image_name as $default_image) {
                               $image = $default_image->profile; 
                    
                    }
                    


                   //$image ='';
                             
                   echo 12;      
                   echo "dsds"; 


                   //check for errors
                  /* $error = array('error' => $this->upload->display_errors());

                    $this->load->view('file_view', $error);*/
        }

        $data = array(

         
            'profile' =>$image,
    

        );


        var_dump($data);


            $this->veterinarian_management->update_veterinarian($user_id_update,$data);

            $this->session->set_flashdata('update_vet_success','Veterinarian information has been updated successfully');
            redirect('Admin/Vet_details/'.$user_id_update);

    }



    public function change_password_veterinarian(){

        $old_password = $this->input->post('old_password');
        $new_password = $this->input->post('new_password');
        $confirm_password = $this->input->post('confirm_password');

        //check to see if the old password is correct
        $log_userID = $this->session->userdata("user_id");

        $check_correct = $this->admin_management->check_password_user_id_matched($log_userID,$old_password);

        if($check_correct){
            echo 'paedit na';
            //check to see if both new_password and confirm_password is match
            if($new_password ==$confirm_password){
                echo "match po";

                $hash_password = password_hash($new_password, PASSWORD_DEFAULT);
                $now = date('Y-m-d H:i:s');

                $update_password = array(
                    'password' => $new_password,
                    'hash_password' => $hash_password,
                    'last_modified' => $now,
                );

                $this->admin_management->update_credentials($log_userID,$update_password);
                $this->session->set_flashdata('update_vet_password','Veterinarian password has been updated successfully');
            }else{
                $this->session->set_flashdata('update_vet_password_mismatched','new password and confirm password doesnt matched');
            }
        }else{
            echo 'mali password mo boy';
            $this->session->set_flashdata('update_vet_password_failed','Pasword is incorrect');
            
        }



        redirect('Staff/Change_password');

    }


    //END VETERINARIAN




    public function add_new_staff(){

            $firstname = $this->input->post('first_name');
            $substring_firstname = substr($firstname, 0, 1);
            $lastname = $this->input->post('last_name');
            $username = $substring_firstname .''. $lastname;

            //password will be the user id
            $password = $this->input->post('staff_id');
            echo $hash_password = password_hash($password, PASSWORD_DEFAULT);
            $now = date('Y-m-d H:i:s');
            $data = array(
            'staff_id' => $this->input->post('staff_id'),
           
            'firstname' => $this->input->post('first_name'),
            'middlename' => $this->input->post('middle_name'),
            'lastname' => $this->input->post('last_name'),
            'gender' => $this->input->post('gender'),
            'birthdate' => $this->input->post('birthdate'),
            'contact' => $this->input->post('contact'),
            'homeAddress' => $this->input->post('homeAddress'),
            'barangayAddress' => $this->input->post('barangayAddress'),

            'cityAddress' => $this->input->post('cityAddress'),

            'postalID'=> $this->input->post('postalID'),
            'email' => $this->input->post('email'),
            
            'staff_status' => "Active",
            
            'dateAdded' => $now,
            );

            $this->staff_management->insert_new_staff($data);

            //insert credentials

            $data_credentials = array(
                'user_type' => 'Staff',
                'user_id' =>$this->input->post('staff_id'),
                'username' => $username,
                'password' => $password,
                'hash_password' => $hash_password,
                'last_modified' => $now,
            );
            

            $this->admin_management->insert_username_password($data_credentials);

            $name = $this->session->userdata('complete_name');
            $log_usertype =  $this->session->userdata('account_type');
            $log_userID = $this->session->userdata("user_id");
            $log_action = "Add new Staff";
            


            $now = date('Y-m-d H:i:s');
            $data2 = array(
                "log_user" => $name,
                "log_usertype" => $log_usertype,
                "log_userID" => $log_userID,
                "log_action" => $log_action,
                "log_date" => $now,
            );

            $this->admin_management->insert_new_log($data2); 

            $this->session->set_flashdata('add_staff_success','New Staff has been added');
            redirect('Admin/staffs');
    }




    public function update_staff_details(){


        $user_id_update =  $this->input->post('user_id_update');

        $now = date('Y-m-d H:i:s');
        $user_id_update =  $this->input->post('user_id_update');
        $password = $this->input->post('password');
        $username = $this->input->post('username');
        $user_id = $this->input->post('staff_id');

        $data = array(

            'firstname' => $this->input->post('firstname'),
            'middlename' => $this->input->post('middlename'),
            'lastname' => $this->input->post('lastname'),
            'gender' => $this->input->post('gender'),
            'birthdate' => $this->input->post('birthdate'),
            'contact' => $this->input->post('contact'),
            'homeAddress' => $this->input->post('homeAddress'),
            'barangayAddress' => $this->input->post('barangayAddress'),
            'cityAddress' => $this->input->post('cityAddress'),
            'postalID'=> $this->input->post('postalID'),
            'email' => $this->input->post('email'),
    

        );


        var_dump($data);

        $hash_password = password_hash($password, PASSWORD_DEFAULT);
        //insert credentials

        $data_credentials = array(
           
            'username' => $username,
            'password' => $password,
            'hash_password' => $hash_password,
            'last_modified' => $now,
        );
        

        $this->admin_management->update_credentials($user_id,$data_credentials);


        $this->staff_management->update_staff($user_id_update,$data);

        $this->session->set_flashdata('update_staff_success','Staff information has been updated successfully');
        redirect('Admin/Staff_details/'.$user_id_update);

    }


    public function update_profile_staff(){


        $user_id_update =  $this->input->post('user_id_update');


        //config for upload image \assets\images\profiles
        $config['upload_path']          = './assets/images/profiles/';
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
                    $default_image_name = $this->staff_management->get_staff_by_id($user_id_update);
                    foreach ($default_image_name as $default_image) {
                               $image = $default_image->profile; 
                    
                    }
                    


                   //$image ='';
                             
                   echo 12;      
                   echo "dsds"; 


                   //check for errors
                  /* $error = array('error' => $this->upload->display_errors());

                    $this->load->view('file_view', $error);*/
        }

        $data = array(

         
            'profile' =>$image,
    

        );


        var_dump($data);


            $this->staff_management->update_staff($user_id_update,$data);

            $this->session->set_flashdata('update_staff_success','Staff information has been updated successfully');
            redirect('Admin/Staff_details/'.$user_id_update);

    }


    public function change_password_staff(){


        $old_password = $this->input->post('old_password');
        $new_password = $this->input->post('new_password');
        $confirm_password = $this->input->post('confirm_password');

        //check to see if the old password is correct
        $log_userID = $this->session->userdata("user_id");

        $check_correct = $this->admin_management->check_password_user_id_matched($log_userID,$old_password);

        if($check_correct){
            echo 'paedit na';
            //check to see if both new_password and confirm_password is match
            if($new_password ==$confirm_password){
                echo "match po";

                $hash_password = password_hash($new_password, PASSWORD_DEFAULT);
                $now = date('Y-m-d H:i:s');

                $update_password = array(
                    'password' => $new_password,
                    'hash_password' => $hash_password,
                    'last_modified' => $now,
                );

                $this->admin_management->update_credentials($log_userID,$update_password);
                $this->session->set_flashdata('update_staff_password','password has been updated successfully');
            }else{
                $this->session->set_flashdata('update_staff_password_mismatched','new password and confirm password doesnt matched');
            }
        }else{
            echo 'mali password mo boy';
            $this->session->set_flashdata('update_staff_password_failed','Pasword is incorrect');
            
        }



        redirect('Staff/Change_password');

    }


            
    //END STAFF

    /*AJAX BASE STATUS CHANGER */

    public function change_status_admin(){
        $admin_table_id = $this->input->post("admin_table_id");
        $admin_id = $this->input->post("admin_id");
        $status = $this->input->post("status");
        $admin_name = $this->input->post("admin_name");

        $change_status = array(
            'admin_status' => $status,
        );

        $this->admin_management->update_admin($admin_table_id,$change_status);

        $name = $this->session->userdata('complete_name');
        $log_usertype =  $this->session->userdata('account_type');
        $log_userID = $this->session->userdata("user_id");
        $log_action = "Update status of Admin " . $admin_id . " to ". $status;
        

 
        $now = date('Y-m-d H:i:s');
        $data2 = array(
            "log_user" => $name,
            "log_usertype" => $log_usertype,
            "log_userID" => $log_userID,
            "log_action" => $log_action,
            "log_date" => $now,
        );



        $this->admin_management->insert_new_log($data2);

        $msg = "Admin status  has been updated";
        echo json_encode(['code'=>200, 'msg'=>$msg]);           
    }



    public function change_status_customer(){

        $customer_table_id = $this->input->post("customer_table_id");
        $customer_id = $this->input->post("customer_id");
        $status = $this->input->post("status");
        $customer_name = $this->input->post("customer_name");

        $change_status = array(
            'customer_status' => $status,
        );

        $this->customer_management->update_customer($customer_table_id,$change_status);

        $name = $this->session->userdata('complete_name');
        $log_usertype =  $this->session->userdata('account_type');
        $log_userID = $this->session->userdata("user_id");
        $log_action = "Update status of Customer " . $customer_id . " to ". $status;
        

 
        $now = date('Y-m-d H:i:s');
        $data2 = array(
            "log_user" => $name,
            "log_usertype" => $log_usertype,
            "log_userID" => $log_userID,
            "log_action" => $log_action,
            "log_date" => $now,
        );



        $this->admin_management->insert_new_log($data2);

        $msg = "Customer status  has been updated";
        echo json_encode(['code'=>200, 'msg'=>$msg]);     
    }


    public function change_status_staff(){

        $staff_table_id = $this->input->post("staff_table_id");
        $staff_id = $this->input->post("staff_id");
        $status = $this->input->post("status");
        $staff_name = $this->input->post("staff_name");

        $change_status = array(
            'staff_status' => $status,
        );

        $this->staff_management->update_staff($staff_table_id,$change_status);

        $name = $this->session->userdata('complete_name');
        $log_usertype =  $this->session->userdata('account_type');
        $log_userID = $this->session->userdata("user_id");
        $log_action = "Update status of Staff " . $staff_id . " to ". $status;
        

 
        $now = date('Y-m-d H:i:s');
        $data2 = array(
            "log_user" => $name,
            "log_usertype" => $log_usertype,
            "log_userID" => $log_userID,
            "log_action" => $log_action,
            "log_date" => $now,
        );



        $this->admin_management->insert_new_log($data2);

        $msg = "Staff status has been updated";
        echo json_encode(['code'=>200, 'msg'=>$msg]);
    }



    public function change_status_veterinarian(){

        $veterinarian_table_id = $this->input->post("veterinarian_table_id");
        $veterinarian_id = $this->input->post("veterinarian_id");
        $status = $this->input->post("status");
        $veterinarian_name = $this->input->post("veterinarian_name");

        $change_status = array(
            'veterinarian_status' => $status,
        );

        $this->veterinarian_management->update_veterinarian($veterinarian_table_id,$change_status);

        $name = $this->session->userdata('complete_name');
        $log_usertype =  $this->session->userdata('account_type');
        $log_userID = $this->session->userdata("user_id");
        $log_action = "Update status of Veterinarian " . $veterinarian_id . " to ". $status;
        

 
        $now = date('Y-m-d H:i:s');
        $data2 = array(
            "log_user" => $name,
            "log_usertype" => $log_usertype,
            "log_userID" => $log_userID,
            "log_action" => $log_action,
            "log_date" => $now,
        );



        $this->admin_management->insert_new_log($data2);

        $msg = "Veterinarian status has been updated";
        echo json_encode(['code'=>200, 'msg'=>$msg]);    
    }



    /* wala na to kasi nag ajax na tayo

    public function update_state_customer(){

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


            $this->customer_management->change_state_customer($change_state_user,$state_data);

            $this->session->set_flashdata('change_state_customer_success','Customer State has been successfully updated');
            redirect('admin/customers');

    }


    public function update_state_admin(){


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

            $this->session->set_flashdata('change_state_admin_success','Admin Status has been successfully updated');
            redirect('admin/admins');
            
   }




   public function update_state_vet(){


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


            $this->veterinarian_management->change_state_veterinarian($change_state_user,$state_data);

            $this->session->set_flashdata('change_state_veterinarian_success','Veterinarian Status has been successfully updated');
            redirect('admin/veterinarians');
            
   }


   public function update_state_staff(){


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


            $this->staff_management->change_state_staff($change_state_user,$state_data);

            $this->session->set_flashdata('change_state_staff_success','Staff Status has been successfully updated');
            redirect('admin/staffs');
            
   }

    */






  /////////Staff action


 /* public function add_new_customer_staff_action(){
        $now = date('Y-m-d H:i:s');
            $data = array(
            'customer_id' => $this->input->post('customer_id'),
           
            'firstname' => $this->input->post('first_name'),
            'middlename' => $this->input->post('middle_name'),
            'lastname' => $this->input->post('last_name'),
            'gender' => $this->input->post('gender'),
            'birthdate' => $this->input->post('birthdate'),
            'contact' => $this->input->post('contact'),
            'homeAddress' => $this->input->post('homeAddress'),
            'barangayAddress' => $this->input->post('barangayAddress'),

            'cityAddress' => $this->input->post('cityAddress'),

            'postalID'=> $this->input->post('postalID'),

            'username'=> $this->input->post('username'),
            'password' =>$this->input->post('password'),
            'is_active' => "Active",
            'dateAdded' => $now,
            );

            $this->customer_management->insert_new_customer($data);

            $this->session->set_flashdata('add_customer_success','New Customer has been added');
            redirect('staff/customers');
  }*/




}
