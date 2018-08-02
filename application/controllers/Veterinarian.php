<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Veterinarian extends CI_Controller {

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

        $this->load->model('settings_model');
        //$this->load->model('user_logs_model');

        if(!$this->session->userdata('logged_in')){
				redirect('landing_page/login');
		}


		//echo $data['complete_name'] = $this->session->userdata('complete_name');

		 //$user_id = $this->session->userdata('user_id');
		


    }

	
	public function appointments(){

			$settings_id = 1;
			$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);


			$name = $this->session->userdata('complete_name');
			$log_usertype =  $this->session->userdata('account_type');
			$log_userID = $this->session->userdata("user_id");
			$log_action = "View Appointments";
			


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
			$data['my_appointment_this_day'] = $this->appointment_management->get_appointment_by_vet_id_and_today($log_userID ,$today_now);

			/*foreach ($my_appointment_this_day as $m_d) {
				echo $m_d->pet_name;
			}*/


			$data['get_pet_services_for_adult_dogs'] = $this->pet_management_model->get_pet_services_for_adult_dogs();

			$data['get_pet_services_puppies'] = $this->pet_management_model->get_pet_services_puppies();

			$data['get_pet_services_cats'] = $this->pet_management_model->get_pet_services_cats();

			$data['get_pet_services_kittens'] = $this->pet_management_model->get_pet_services_kittens();

			$data['title'] = "Vetopia";
			$this->load->view('veterinarian/appointment',$data);
		//echo "admin/index";
	}


	public function customer(){
			
			$data['title'] = "Vetopia";
			$this->load->view('veterinarian/pet_health_library',$data);
	}


	public function pets(){

			$settings_id = 1;
			$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);


			$name = $this->session->userdata('complete_name');
			$log_usertype =  $this->session->userdata('account_type');
			$log_userID = $this->session->userdata("user_id");
			$log_action = "View Appointments";
			


			$now = date('Y-m-d H:i:s');
			$data2 = array(
				"log_user" => $name,
				"log_usertype" => $log_usertype,
				"log_userID" => $log_userID,
				"log_action" => $log_action,
				"log_date" => $now,
			);



			$this->admin_management->insert_new_log($data2);


			$data['all_pets'] = $this->pet_management_model->get_all_pet();
			$data['title'] = "Vetopia";
			$this->load->view('veterinarian/pet',$data);

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

		$this->load->view('veterinarian/pet_detail',$data);
	}


	public function foods(){


		$settings_id = 1;
		$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);
		$data['title'] = "Vetopia";
		$data['all_foods'] = $this->inventory_management->get_all_food_with_number_of_supply();


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

		$this->load->view('veterinarian/food',$data);

	}

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

		$this->load->view('veterinarian/item',$data);
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


		$this->load->view('veterinarian/medicine',$data);

	}



	public function services(){

			$data['title'] = "Vetopia";
			$this->load->view('veterinarian/products',$data);
	}

	
	


}
