<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Staff extends CI_Controller {

	function __construct() {

        parent::__construct();
       
        date_default_timezone_set('Asia/Taipei');

        
        
        //for reading.. retrieving
        $this->load->model('admin_management');
        $this->load->model('customer_management');
        $this->load->model('veterinarian_management');
        $this->load->model('staff_management');
        $this->load->model('settings_model');
        $this->load->model('inventory_management');
        $this->load->model('appointment_management');
        $this->load->model('pet_management_model');

        if(!$this->session->userdata('logged_in')){
				redirect('landing_page/login');
		}


        //$this->load->model('user_logs_model');
    }



    public function change_password(){
    	$settings_id = 1;
		$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);


		$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "Change Password";
		


		$now = date('Y-m-d H:i:s');
		$data2 = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);

		$data['title'] = "Vetopia";
		$this->load->view('staff/change_password',$data);
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
		$this->load->view('staff/pos',$data);
		//echo "admin/index";
	}


	public function appointments(){

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

		$today_now = date('Y-m-d');
		$data['all_customers'] = $this->customer_management->get_all_customer();
		$data['all_appointment'] = $this->appointment_management->get_all_appointment();
		$data['all_vets'] = $this->veterinarian_management->get_all_veterinarian();
		$data['time'] = $this->appointment_management->getScheduleTime();
		
		$data['title'] = "Vetopia";
		$this->load->view('staff/appointment',$data);
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

		$this->load->view('staff/customer',$data);

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

		$this->load->view('staff/pet',$data);
	}

	public function reports(){

			$data['title'] = "Vetopia";
			$this->load->view('staff/purchase_history',$data);
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
				$this->load->view('staff/customer_detail',$data);
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

		$this->load->view('staff/pet_detail',$data);
	}


	


}
