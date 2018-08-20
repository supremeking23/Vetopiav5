<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

	function __construct() {

        parent::__construct();
       
        date_default_timezone_set('Asia/Taipei');

        
        
        //for reading.. retrieving
        $this->load->model('admin_management');
        $this->load->model('customer_management');
        $this->load->model('veterinarian_management');
        $this->load->model('staff_management');
        $this->load->model('appointment_management');

        $this->load->model('pet_management_model');

        $this->load->model('pos_management');

        $this->load->model('inventory_management');

        $this->load->model('article_model');

        $this->load->model('settings_model');
        //$this->load->model('user_logs_model');

        if(!$this->session->userdata('logged_in')){
				redirect('landing_page/login');
		}



		//echo $data['complete_name'] = $this->session->userdata('complete_name');

		 $user_id = $this->session->userdata('user_id');
		 $find_admin = $this->admin_management->get_admin_by_user_id($user_id);

		 foreach ($find_admin as $f_admin) {
		 		 $profile = $f_admin->profile;
		 	 	$complete_name = $f_admin->firstname .' '. $f_admin->middlename .' '. $f_admin->lastname;
		 }



    }



    //testing lang
    public function add_health_care(){

    	//config for upload image \assets\images\profiles
        $config['upload_path']          = './assets/images/library/';
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




    	$data = array(
    		'article_image' => $image,
    		'title' => $this->input->post('title'),
    		'content' => $this->input->post('content'),
    	);


    	$this->admin_management->add_article($data);
    	$this->session->set_flashdata('add_article_success','Article has been added to library');
    	redirect("admin/settings");
    }


    


   /** public function notifications(){
    	//echo "ivans";
    	$data['count_appointment_pending'] = $this->appointment_management->count_appointment_pending();

    	//return $data['count_appointment_pending'];
    }*/

	public function dashboard(){
		$settings_id = 1;
		$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);

		//$data['complete_name'] = $this->session->userdata('complete_name');

		$data['title'] = "Vetopia";

		$data['count_admins'] = $this->admin_management->count_all_admins();


		$data['count_vets'] = $this->veterinarian_management->count_all_veterinarians();

		$data['count_staffs'] = $this->staff_management->count_all_staffs();
		

		$data['count_customers'] = $this->customer_management->count_all_customers();



		$data['count_pets'] = $this->pet_management_model->count_all_pets();

		$data['all_products'] = $this->inventory_management->get_all_products();

		$data['count_products'] = $this->inventory_management->get_count_all_products();



		$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "View Dashboard";
		


		$now = date('Y-m-d H:i:s');
		$data2 = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);



		$this->admin_management->insert_new_log($data2);


		
		//notifications
		//$this->notifications(); 
		$data['count_appointment_pending'] = $this->appointment_management->count_appointment_pending();
		


		$this->load->view('admin/dashboard',$data);
		//echo "admin/index";
	}



	public function pos(){
		

		$settings_id = 1;
		$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);


		$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "View POS";
		


		$now = date('Y-m-d H:i:s');
		$data2 = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);



		$this->staff_management->insert_new_log($data2);


		$data['all_product'] = $this->inventory_management->get_all_products();

		$data['all_customer'] = $this->customer_management->get_all_customer();

		$data['title'] = "Vetopia";
		$this->load->view('admin/pos',$data);
	}


	public function appointments(){

		


		$settings_id = 1;
		$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);
		$data['title'] = "Vetopia";


		$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "View Todays Appointment";
		




		$now = date('Y-m-d H:i:s');
		$data2 = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);



		$this->admin_management->insert_new_log($data2);




		$today_now = date('Y-m-d');
		$data['all_customers'] = $this->customer_management->get_all_customer();
		$data['all_appointment'] = $this->appointment_management->get_all_appointment();
		$data['all_vets'] = $this->veterinarian_management->get_all_veterinarian();

		$data['time'] = $this->appointment_management->getScheduleTime();
		$this->load->view('admin/appointment',$data);

	}


	public function todays_appointment(){
		$settings_id = 1;
		$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);
		$data['title'] = "Vetopia";


		$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "View Todays Appointment";
		




		$now = date('Y-m-d H:i:s');
		$data2 = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);



		$this->admin_management->insert_new_log($data2);

		$today_now = date('Y-m-d');
		$data['todays_appointment'] = $this->appointment_management->get_appointment_today($today_now);

		$data['title'] = "Vetopia";
		$this->load->view('admin/appointment',$data);

	}


	public function old_appointment(){
		$settings_id = 1;
		$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);
		$data['title'] = "Vetopia";



		$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "View Old Appointment";
		


		$now = date('Y-m-d H:i:s');
		$data2 = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);



		$this->admin_management->insert_new_log($data2);

		$this->load->view('admin/old_appointment',$data);
	}







	public function customers(){
		$data['title'] = "Vetopia";

		$settings_id = 1;
		$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);

		$data['all_customers'] = $this->customer_management->get_all_customer();



		$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "View Customer list";
		


		$now = date('Y-m-d H:i:s');
		$data2 = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);



		$this->admin_management->insert_new_log($data2);

		$this->load->view('admin/customer',$data);
	}


	public function pets(){
		$data['title'] = "Vetopia";

		$settings_id = 1;
		$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);

		$data['all_pets'] = $this->pet_management_model->get_all_pet();	
		$data['all_pettype'] = $this->pet_management_model->get_all_pettype();
		$data['all_customers'] = $this->customer_management->get_all_customer();

		$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "View Pet List";
		


		$now = date('Y-m-d H:i:s');
		$data2 = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);



		$this->admin_management->insert_new_log($data2);

		$this->load->view('admin/pet',$data);
	}





	public function view_pettype(){
		$data['title'] = "Vetopia";

		$settings_id = 1;
		$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);

		$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "View Pet Type List";
		


		$now = date('Y-m-d H:i:s');
		$data2 = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);



		$this->admin_management->insert_new_log($data2);


		$data['pettype_list'] = $this->pet_management_model->get_all_pettype();



		$this->load->view('admin/view_pettype',$data);
	}


	public function view_petbreed(){
		$data['title'] = "Vetopia";

		$settings_id = 1;
		$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);	


		$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "View Pet Breed List";
		


		$now = date('Y-m-d H:i:s');
		$data2 = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);


		$data['all_pettype'] = $this->pet_management_model->get_all_pettype();
		$data['breed_list'] = $this->pet_management_model->get_all_breed();
		$this->admin_management->insert_new_log($data2);

		$this->load->view('admin/view_petbreed',$data);
	}






	//ajax request nagamit
    public function pet_breed($id){
        $id = $id;
        $result = $this->db->where("pettype_id",$id)->get("tbl_petbreeds")->result();
        echo json_encode($result);
    }


    //not sure pero wag nalang tanggalin
    public function customers_pets($customer_table_id){
        $customer_table_id = $customer_table_id;
        $result = $this->db->where("customer_table_id",$customer_table_id)->get("tbl_pets")->result();
        echo json_encode($result);
    }



    /* papalitan ng bago
	public function services(){
		$settings_id = 1;
		$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);
		$data['title'] = "Vetopia";

		$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "View Clinic Services";
		


		$now = date('Y-m-d H:i:s');
		$data2 = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);



		$this->admin_management->insert_new_log($data2);


		//load services

		$data['get_pet_services_for_adult_dogs'] = $this->pet_management_model->get_pet_services_for_adult_dogs();



		$data['get_pet_services_puppies'] = $this->pet_management_model->get_pet_services_puppies();



		$data['get_pet_services_cats'] = $this->pet_management_model->get_pet_services_cats();


		$data['get_pet_services_kittens'] = $this->pet_management_model->get_pet_services_kittens();

		

		


		$this->load->view('admin/service',$data);
	}*/


	public function services(){
		$data['title'] = "Vetopia";


		$settings_id = 1;
		$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);
		
		//$data['all_vets'] = $this->veterinarian_management->get_all_veterinarian();
		$data['all_pettype'] = $this->pet_management_model->get_all_active_pettype();

		$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "View Services";	

		$now = date('Y-m-d H:i:s');
		$data2 = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);		

		$this->admin_management->insert_new_log($data2);


		$data['get_all_pet_services'] = $this->pet_management_model->get_all_pet_services();
		
		$this->load->view('admin/services',$data);
	}


	public function products(){
		$settings_id = 1;
		$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);
		$data['title'] = "Vetopia";

		$this->load->view('admin/product',$data);
	}


	public function veterinarians(){
		$data['title'] = "Vetopia";


		$settings_id = 1;
		$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);
		
		$data['all_vets'] = $this->veterinarian_management->get_all_veterinarian();


		$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "View Veterinarian list";
		


		$now = date('Y-m-d H:i:s');
		$data2 = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);



		$this->admin_management->insert_new_log($data2);

		$this->load->view('admin/veterinarian',$data);
	}

	public function staffs(){
		$data['title'] = "Vetopia";


		$settings_id = 1;
		$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);

		$data['all_staff']  = $this->staff_management->get_all_staff();


		$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "View Staff List";
		


		$now = date('Y-m-d H:i:s');
		$data2 = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);



		$this->admin_management->insert_new_log($data2);
		
		$this->load->view('admin/staff',$data);
	}	

	public function admins(){
		$data['title'] = "Vetopia";

		$user_id = $this->session->userdata('user_id');

		$settings_id = 1;
		$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);

		$data['all_admin'] = $this->admin_management->get_all_admin();
		//$data['all_admin'] = $this->admin_management->get_all_admin_except_current_admin($user_id);


		//get all admin except the currently login admin

		$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "View Admin list";
		


		$now = date('Y-m-d H:i:s');
		$data2 = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);



		$this->admin_management->insert_new_log($data2);


		$this->load->view('admin/administrator',$data);
	}


	public function logs(){

		$settings_id = 1;
		$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);
		$data['title'] = "Vetopia";

		$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "View logs";
		


		$now = date('Y-m-d H:i:s');
		$data2 = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);



		$this->admin_management->insert_new_log($data2);



		$data['all_logs'] = $this->admin_management->get_all_logs();

		$this->load->view('admin/logs',$data);
	}



	public function inbox(){
		$data['title'] = "Vetopia";
		$this->load->view('admin/inbox',$data);
	}

	

	public function customer_details(){
		
				/*
					*	The segment numbers would be this:
					*  	1 news
						2 local
						3 metro
						4 crime_is_up
				*/

				$id = $this->uri->segment(3);
				$data['id'] = $id;

				$settings_id = 1;
				$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);

				$data['numberofpets'] = $this->pet_management_model->count_pet_of_customer($id);
				$data['customer_details'] = $this->customer_management->get_customer_by_id($id);
				$data['all_pettype'] = $this->pet_management_model->get_all_pettype();
				//retrieve pets of this customer

				$name = $this->session->userdata('complete_name');
				$log_usertype =  $this->session->userdata('account_type');
				$log_userID = $this->session->userdata("user_id");
				$log_action = "View Customer details";
				


				$now = date('Y-m-d H:i:s');
				$data2 = array(
					"log_user" => $name,
					"log_usertype" => $log_usertype,
					"log_userID" => $log_userID,
					"log_action" => $log_action,
					"log_date" => $now,
				);



				$this->admin_management->insert_new_log($data2);

				$data['title'] = "Vetopia";



				$search_user_id = $this->customer_management->get_customer_by_id($id);

				foreach ($search_user_id as $searched_user_id) {
						$customer_id = $searched_user_id->customer_id;
				}
				$data['user_logs'] = $this->admin_management->get_all_logs_by_id($customer_id);

				$data['customers_pet'] = $this->pet_management_model->get_all_pet_details_by_customer_id($id);
				$this->load->view('admin/customer_detail',$data);
	}


	public function admin_details(){
		
				/*
					*	The segment numbers would be this:
					*  	1 news
						2 local
						3 metro
						4 crime_is_up
				*/

				$settings_id = 1;
				$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);

				$id = $this->uri->segment(3);
				$data['id'] = $id;

				$data['admin_details'] = $this->admin_management->get_admin_by_id($id);

				//search for the user_id of the uri

				


				$data['title'] = "Vetopia";


				$name = $this->session->userdata('complete_name');
				$log_usertype =  $this->session->userdata('account_type');
				$log_userID = $this->session->userdata("user_id");
				$log_action = "View Admin details";
				


				$now = date('Y-m-d H:i:s');
				$data2 = array(
					"log_user" => $name,
					"log_usertype" => $log_usertype,
					"log_userID" => $log_userID,
					"log_action" => $log_action,
					"log_date" => $now,
				);



				$this->admin_management->insert_new_log($data2);


				//$
				$search_user_id = $this->admin_management->get_admin_by_id($id);

				foreach ($search_user_id as $searched_user_id) {
						$admin_id = $searched_user_id->admin_id;
				}
				$data['user_logs'] = $this->admin_management->get_all_logs_by_id($admin_id);

				

				$this->load->view('admin/admin_detail',$data);
	}



	public function admin_profile(){
		
				/*
					*	The segment numbers would be this:
					*  	1 news
						2 local
						3 metro
						4 crime_is_up
				*/

				$settings_id = 1;
				$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);

				 $user_table_id = $this->session->userdata('user_table_id');


				$data['admin_details'] = $this->admin_management->get_admin_by_id($user_table_id);



				$data['title'] = "Vetopia";


				$name = $this->session->userdata('complete_name');
				$log_usertype =  $this->session->userdata('account_type');
				$log_userID = $this->session->userdata("user_id");
				$log_action = "View Admin profile";
				


				$now = date('Y-m-d H:i:s');
				$data2 = array(
					"log_user" => $name,
					"log_usertype" => $log_usertype,
					"log_userID" => $log_userID,
					"log_action" => $log_action,
					"log_date" => $now,
				);



				$this->admin_management->insert_new_log($data2);



				$data['user_logs'] = $this->admin_management->get_all_logs_by_id($log_userID);

				$this->load->view('admin/admin_profile',$data);
	}


	public function vet_details(){
		
				/*
					*	The segment numbers would be this:
					*  	1 news
						2 local
						3 metro
						4 crime_is_up
				*/

				$settings_id = 1;
				$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);

				$id = $this->uri->segment(3);
				$data['id'] = $id;

				$data['vet_details'] = $this->veterinarian_management->get_veterinarian_by_id($id);



				$data['title'] = "Vetopia";


				$name = $this->session->userdata('complete_name');
				$log_usertype =  $this->session->userdata('account_type');
				$log_userID = $this->session->userdata("user_id");
				$log_action = "View Veterinarian details";
				


				$now = date('Y-m-d H:i:s');
				$data2 = array(
					"log_user" => $name,
					"log_usertype" => $log_usertype,
					"log_userID" => $log_userID,
					"log_action" => $log_action,
					"log_date" => $now,
				);



				$this->admin_management->insert_new_log($data2);


				$search_user_id = $this->veterinarian_management->get_veterinarian_by_id($id);

				foreach ($search_user_id as $searched_user_id) {
						$veterinarian_id = $searched_user_id->veterinarian_id;
				}
				$data['user_logs'] = $this->admin_management->get_all_logs_by_id($veterinarian_id);

				$this->load->view('admin/vet_detail',$data);
	}


	public function staff_details(){
		
				/*
					*	The segment numbers would be this:
					*  	1 news
						2 local
						3 metro
						4 crime_is_up
				*/

				$settings_id = 1;
		        $data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);

				$id = $this->uri->segment(3);
				$data['id'] = $id;

				$data['staff_details'] = $this->staff_management->get_staff_by_id($id);



				$data['title'] = "Vetopia";


				$name = $this->session->userdata('complete_name');
				$log_usertype =  $this->session->userdata('account_type');
				$log_userID = $this->session->userdata("user_id");
				$log_action = "View Staff Details";
				


				$now = date('Y-m-d H:i:s');
				$data2 = array(
					"log_user" => $name,
					"log_usertype" => $log_usertype,
					"log_userID" => $log_userID,
					"log_action" => $log_action,
					"log_date" => $now,
				);



				$this->admin_management->insert_new_log($data2);



				$search_user_id = $this->staff_management->get_staff_by_id($id);

				foreach ($search_user_id as $searched_user_id) {
						$staff_id = $searched_user_id->staff_id;
				}
				$data['user_logs'] = $this->admin_management->get_all_logs_by_id($staff_id);


				$this->load->view('admin/staff_detail',$data);
	}


	

	public function pet_details(){

		$settings_id = 1;
		$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);
		
		$id = $this->uri->segment(3);
		$data['id'] = $id;


		$data['all_pettype'] = $this->pet_management_model->get_all_pettype();
		$data['all_customers'] = $this->customer_management->get_all_customer();
		$data['pet_details'] = $this->pet_management_model->get_pet_by_id($id);

		$data['title'] = "Vetopia";



		$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "View Pet details";
		


		$now = date('Y-m-d H:i:s');
		$data2 = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);



		$this->admin_management->insert_new_log($data2);

		$this->load->view('admin/pet_detail',$data);
	}



	/****************** PRODUCTS ****************************/

	public function items(){


		$settings_id = 1;
		$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);
		$data['title'] = "Vetopia";
		$data['all_items'] = $this->inventory_management->get_all_items_with_number_of_supply();

		$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "View Products List (Items/Accessories)";
		


		$now = date('Y-m-d H:i:s');
		$data2 = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);



		$this->admin_management->insert_new_log($data2);

		$this->load->view('admin/item',$data);
	}


	public function item_details(){

		$settings_id = 1;
		$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);
		$data['title'] = "Vetopia";

		$id = $this->uri->segment(3);
		$data['id'] = $id;

		//$data['all_items'] = $this->inventory_management->get_all_items_with_number_of_supply();


		$data['item_details'] = $this->inventory_management->get_item_detail_by_id($id);

		$product_id_in_tblproduct = $this->inventory_management->get_item_detail_by_id($id);

		foreach($product_id_in_tblproduct as $product_id_in_product){
			$product_id = $product_id_in_product->product_id;
		}

		
		$data['item_inventory_detail'] = $this->inventory_management->get_item_inventory_detail_by_item_table_id($product_id);

		$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "View Product Details (Items)";
		


		$now = date('Y-m-d H:i:s');
		$data2 = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);



		$this->admin_management->insert_new_log($data2);

		$this->load->view('admin/item_detail',$data);
	}


	public function foods(){


		$settings_id = 1;
		$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);
		$data['title'] = "Vetopia";
		$data['all_foods'] = $this->inventory_management->get_all_food_with_number_of_supply();
		$data['all_pets'] =$this->pet_management_model->get_all_pettype();

		$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "View Products List (Foods)";
		


		$now = date('Y-m-d H:i:s');
		$data2 = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);



		$this->admin_management->insert_new_log($data2);

		$this->load->view('admin/food',$data);

	}

	public function food_details(){


		$settings_id = 1;
		$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);

		$data['title'] = "Vetopia";

		$id = $this->uri->segment(3);
		$data['id'] = $id;

		//$data['all_items'] = $this->inventory_management->get_all_items_with_number_of_supply();


		$data['food_details'] = $this->inventory_management->get_food_detail_by_id($id);
		$data['all_pets'] =$this->pet_management_model->get_all_pettype();
		//product id use for searching in inventory

		$product_id_in_tblproduct = $this->inventory_management->get_food_detail_by_id($id);

		foreach($product_id_in_tblproduct as $product_id_in_product){
			$product_id = $product_id_in_product->product_id;
		}

		$data['food_inventory_detail'] = $this->inventory_management->get_food_inventory_detail_by_food_table_id($product_id);

		//echo 1;


		$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "View Products Detail (Food)";
		


		$now = date('Y-m-d H:i:s');
		$data2 = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);



		$this->admin_management->insert_new_log($data2);

		$this->load->view('admin/food_detail',$data);

	}

	public function medicines(){


		$settings_id = 1;
		$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);

		$data['title'] = "Vetopia";
		$data['all_meds'] = $this->inventory_management->get_all_medicine_with_number_of_supply();


		$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "View Products List (Medicines)";
		


		$now = date('Y-m-d H:i:s');
		$data2 = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);

		

		$this->admin_management->insert_new_log($data2);


		$this->load->view('admin/medicine',$data);

	}

	public function medicine_details(){


		$settings_id = 1;
		$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);

		$data['title'] = "Vetopia";
		$id = $this->uri->segment(3);


		$data['id'] = $id;


		$data['medicine_details'] = $this->inventory_management->get_medicine_detail_by_id($id);

		//product id use for searching in inventory

		$product_id_in_tblproduct = $this->inventory_management->get_medicine_detail_by_id($id);

		foreach($product_id_in_tblproduct as $product_id_in_product){
			$product_id = $product_id_in_product->product_id;
		}

		$data['med_inventory_detail'] = $this->inventory_management->get_medicine_inventory_detail_by_medicine_table_id($product_id);



		$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "View Products Details (Medicine)";
		


		$now = date('Y-m-d H:i:s');
		$data2 = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);



		$this->admin_management->insert_new_log($data2);


		
		$this->load->view('admin/medicine_detail',$data);		
	}



	


	/****************** PRODUCTS ****************************/


	public function sales(){

		$settings_id = 1;
		$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);
		$data['title'] = "Vetopia";

		$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "View Sales Report";
		


		$now = date('Y-m-d H:i:s');
		$data2 = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);



		$data['all_sales'] = $this->pos_management->get_all_sales();


		$this->admin_management->insert_new_log($data2);
		$this->load->view('admin/sales',$data);

	}

	public function inventory(){


		$settings_id = 1;
		$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);
		$data['title'] = "Vetopia";

		$data['all_inventory'] = $this->inventory_management->get_all_inventory();


		$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "View Inventory";
		


		$now = date('Y-m-d H:i:s');
		$data2 = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);



		$this->admin_management->insert_new_log($data2);
		$this->load->view('admin/inventory',$data);
	}



	public function pet_health_care_library(){

		$settings_id = 1;
		$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);
		$data['title'] = "Vetopia";


		$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "View Pet Health Care Library";
		


		$now = date('Y-m-d H:i:s');
		$data2 = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);




		$this->admin_management->insert_new_log($data2);


		$data['articles'] = $this->article_model->get_all_articles();

		$this->load->view('admin/pet_health_care_library',$data);


	}




	public function library_article_detail(){
		$settings_id = 1;
		$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);
		$data['title'] = "Vetopia";


		 $id = $this->uri->segment(3);

		 $data['find_library_article'] = $this->article_model->find_article_from_library_by_library_id($id);
		 $data['find_article_contents'] = $this->article_model->find_article_content_by_library_id($id);
		 $data['find_article_links'] =$this->article_model->find_library_link_by_librarru_id($id);


		$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "View Inventory";
		


		$now = date('Y-m-d H:i:s');
		$data2 = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);



		$this->admin_management->insert_new_log($data2);
		$this->load->view('admin/library_article_detail',$data);

	}

	public function settings(){


		$data['title'] = "Vetopia";

		$settings_id = 1;
		$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);
		//echo $skin_color = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);
		//$data['all_inventory'] = $this->inventory_management->get_all_inventory();


		$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "View Settings";
		


		$now = date('Y-m-d H:i:s');
		$data2 = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);



		$this->admin_management->insert_new_log($data2);



		//get banners
		$data['banners'] = $this->settings_model->load_banners();

		$this->load->view('admin/setting',$data);
		//echo  "settings";
	}
}
