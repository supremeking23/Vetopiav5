<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Landing_Page extends CI_Controller {


	function __construct() {

        parent::__construct();
       
        date_default_timezone_set('Asia/Taipei');

        
        
        //for reading.. retrieving
        $this->load->model('admin_management');
        $this->load->model('customer_management');
        $this->load->model('veterinarian_management');
        $this->load->model('staff_management');
       
        $this->load->model('settings_model');

        //$this->load->model('user_logs_model');
    }

	/*public function index()
	{
		
		$this->load->view('landing_page/index');
	}*/


	public function index(){

		$data['settings_content'] = $this->settings_model->get_all_settings_detail_by_settings_id(1);
		$data['staffs'] = $this->staff_management->get_all_staff_active();
		$data['veterinarians'] = $this->veterinarian_management->get_all_veterinarian_active();
		$this->load->view('landing_page/landing2',$data);
	}

	



	public function login()
	{
		$settings_id = 1;
		$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);


		$data['title'] = "Vetopia";
		
		$this->load->view('landing_page/login',$data);
	}




	/*public function login_action(){

		$username = $this->input->post('username');
		$password = $this->input->post('password');

		echo "username" . $username ."<br />";
		echo "password" . $password ."<br />";

		$substring_username = substr($username, 0, 1);

		if($username =="superadmin"){
			echo "username" . $username ."<br />";
			echo "password" . $password ."<br />";


			$find_admin = $this->admin_management->login_admin($username,$password);

			if($find_admin){
				foreach($find_admin as $admin_credentials){
						$user_table_id = $admin_credentials->admin_table_id;
						$user_id =  $admin_credentials->admin_id;
						$username = 	$admin_credentials->username;
						if($admin_credentials->admin_type == "Super Admin"){
							$admin_type = "Super Admin";
						}else{
							$admin_type = "Admin";
						}
						$user_type = $admin_type;
						$name = $admin_credentials->firstname .' '. $admin_credentials->middlename .' '. $admin_credentials->lastname;
						$profile = $admin_credentials->profile;
				}


				$user_data = array(
						'user_table_id' => $user_table_id,
						'user_id' => $user_id,
						'username' => $username,
						'logged_in' =>true,
						'account_type' =>$user_type,
						'complete_name' => $name,
						'profile' => $profile,

					);

					$this->session->set_userdata($user_data);


					//insert new log detail
					$now = date('Y-m-d H:i:s');
					$data = array(
						"log_user" => $name,
						"log_usertype" => $user_type,
						"log_userID" => $user_id,
						"log_action" => "User Login",
						"log_date" => $now,
					);

					$this->admin_management->insert_new_log($data);

					
					redirect("admin/dashboard");
					echo "tama poass";



			}else{
				$this->session->set_flashdata('login_failed','Username and Password is incorrect');
				redirect('landing_page/login');
			}



		}else{

			switch ($substring_username ) {
				case '0':
					# code...

				//find admin by username and password

				$find_admin = $this->admin_management->login_admin($username,$password);

				if($find_admin){

					foreach($find_admin as $admin_credentials){
						$user_table_id = $admin_credentials->admin_table_id;
						$user_id =  $admin_credentials->admin_id;
						$username = 	$admin_credentials->username;
						if($admin_credentials->admin_type == "Super Admin"){
							$admin_type = "Super Admin";
						}else{
							$admin_type = "Admin";
						}
						$user_type = $admin_type;
						$name = $admin_credentials->firstname .' '. $admin_credentials->middlename .' '. $admin_credentials->lastname;
						$profile = $admin_credentials->profile;
					}


					$user_data = array(
						'user_table_id' => $user_table_id,
						'user_id' => $user_id,
						'username' => $username,
						'logged_in' =>true,
						'account_type' =>$user_type,
						'complete_name' => $name,
						'profile' => $profile,

					);

					$this->session->set_userdata($user_data);


					//insert new log detail
					$now = date('Y-m-d H:i:s');
					$data = array(
						"log_user" => $name,
						"log_usertype" => $user_type,
						"log_userID" => $user_id,
						"log_action" => "User Login",
						"log_date" => $now,
					);

					$this->admin_management->insert_new_log($data);

					
					redirect("admin/dashboard");
					echo "tama poass";
				}else{

					echo "mail poass";
					$this->session->set_flashdata('login_failed','Username and Password is incorrect');
					redirect('landing_page/login');
				}

				echo "Admin ka";
					break;

				case '3':
					# code...
				$find_customer = $this->customer_management->login_customer($username,$password);

				if($find_customer){

					foreach($find_customer as $customer_credentials){
						$user_table_id = $customer_credentials->customer_table_id;
						$user_id =  $customer_credentials->customer_id;
						$username = 	$customer_credentials->username;
						$user_type = "Customer";
						$name = $customer_credentials->firstname .' '. $customer_credentials->middlename .' '. $customer_credentials->lastname;
						$profile = $customer_credentials->profile;
					}


					$user_data = array(
						'user_table_id' => $user_table_id,
						'user_id' => $user_id,
						'username' => $username,
						'logged_in' =>true,
						'account_type' =>"Customer",
						'complete_name' => $name,
						'profile' => $profile,

					);

					$this->session->set_userdata($user_data);


					//insert new log detail
					$now = date('Y-m-d H:i:s');
					$data = array(
						"log_user" => $name,
						"log_usertype" => $user_type,
						"log_userID" => $user_id,
						"log_action" => "User Login",
						"log_date" => $now,
					);

					$this->customer_management->insert_new_log($data);

					
					redirect("customer/request_appointment");
					echo "tama poass";
				}else{

					echo "mail poass";
					$this->session->set_flashdata('login_failed','Username and Password is incorrect');
					redirect('landing_page/login');
				}



				echo "Customer ka";
					break;


				case '1':
					# code...

				

				$find_vet = $this->veterinarian_management->login_vet($username,$password);

				if($find_vet){

					foreach($find_vet as $vet_credentials){
						$user_table_id = $vet_credentials->veterinarian_table_id;
						$user_id =  $vet_credentials->veterinarian_id;
						$username = 	$vet_credentials->username;
						$user_type = "Veterinarian";
						$name = $vet_credentials->firstname .' '. $vet_credentials->middlename .' '. $vet_credentials->lastname;
						$profile = $vet_credentials->profile;
					}


					$user_data = array(
						'user_table_id' => $user_table_id,
						'user_id' => $user_id,
						'username' => $username,
						'logged_in' =>true,
						'account_type' =>"Veterinarian",
						'complete_name' => $name,
						'profile' => $profile,

					);

					$this->session->set_userdata($user_data);


					//insert new log detail
					$now = date('Y-m-d H:i:s');
					$data = array(
						"log_user" => $name,
						"log_usertype" => $user_type,
						"log_userID" => $user_id,
						"log_action" => "User Login",
						"log_date" => $now,
					);

					$this->customer_management->insert_new_log($data);

					
					redirect("veterinarian/appointments");
					echo "tama poass";
				}else{

					echo "mail poass";
					$this->session->set_flashdata('login_failed','Username and Password is incorrect');
					redirect('landing_page/login');
				}

				echo "Vet ka";
					break;

				case '2':


				$find_staff = $this->staff_management->login_staff($username,$password);

				if($find_staff){

					foreach($find_staff as $staff_credentials){
						$user_table_id = $staff_credentials->staff_table_id;
						$user_id =  $staff_credentials->staff_id;
						$username = 	$staff_credentials->username;
						$user_type = "Staff";
						$name = $staff_credentials->firstname .' '. $staff_credentials->middlename .' '. $staff_credentials->lastname;
						$profile = $staff_credentials->profile;
					}


					$user_data = array(
						'user_table_id' => $user_table_id,
						'user_id' => $user_id,
						'username' => $username,
						'logged_in' =>true,
						'account_type' =>"Staff",
						'complete_name' => $name,
						'profile' => $profile,

					);

					$this->session->set_userdata($user_data);


					//insert new log detail
					$now = date('Y-m-d H:i:s');
					$data = array(
						"log_user" => $name,
						"log_usertype" => $user_type,
						"log_userID" => $user_id,
						"log_action" => "User Login",
						"log_date" => $now,
					);

					$this->customer_management->insert_new_log($data);

					
					redirect("staff/pos");
					echo "tama poass";
				}else{

					echo "mail poass";
					$this->session->set_flashdata('login_failed','Username and Password is incorrect');
					redirect('landing_page/login');
				}
					# code...
				echo "Staff ka";
					break;
				
				default:
					# code...

				echo "wala ka";
				$this->session->set_flashdata('login_failed','Username and Password is incorrect');
				redirect('landing_page/login');
				break;
			}

		}//last else

		

		

		//var_dump(substr($username, 0, 1));
	}*/



	public function login_action(){
		$username = $this->input->post('username');
		$password = $this->input->post('password');


		//check credentials from tbl_users
		$check_credentials = $this->admin_management->check_credentials($username,$password);

		if($check_credentials){
			//get user_id and user_type
			foreach($check_credentials as $cc){
				$user_id = $cc->user_id;
				$user_type = $cc->user_type;
			}

			switch ($user_type ) {
				case 'Admin':
					# code...

				//find admin by username and password login_admin($username,$password);
				//check to see if the user is active or not by their user_id
				$find_admin = $this->admin_management->check_status_by_user_id($user_id);

				if($find_admin){

					foreach($find_admin as $admin_credentials){
						$user_table_id = $admin_credentials->admin_table_id;
						$user_id =  $admin_credentials->admin_id;
						$username = 	$admin_credentials->username;
						if($admin_credentials->admin_type == "Super Admin"){
							$admin_type = "Super Admin";
						}else{
							$admin_type = "Admin";
						}
						$user_type = $admin_type;
						$name = $admin_credentials->firstname .' '. $admin_credentials->middlename .' '. $admin_credentials->lastname;
						$profile = $admin_credentials->profile;
					}


					$user_data = array(
						'user_table_id' => $user_table_id,
						'user_id' => $user_id,
						'username' => $username,
						'logged_in' =>true,
						'account_type' =>$user_type,
						'complete_name' => $name,
						'profile' => $profile,

					);

					$this->session->set_userdata($user_data);


					//insert new log detail
					$now = date('Y-m-d H:i:s');
					$data = array(
						"log_user" => $name,
						"log_usertype" => $user_type,
						"log_userID" => $user_id,
						"log_action" => "User Login",
						"log_date" => $now,
					);

					$this->admin_management->insert_new_log($data);

					
					redirect("admin/dashboard");
					echo "tama poass";
				}else{

					echo "mail poass";
					$this->session->set_flashdata('login_failed','Username and Password is incorrect');
					redirect('landing_page/login');
				}

				echo "Admin ka";
					break;

				case 'Customer':
					# code...
				//find admin by username and password login_admin($username,$password);
				//check to see if the user is active or not by their user_id
				$find_customer = $this->customer_management->check_status_by_user_id($user_id);

				if($find_customer){

					foreach($find_customer as $customer_credentials){
						$user_table_id = $customer_credentials->customer_table_id;
						$user_id =  $customer_credentials->customer_id;
						$username = 	$customer_credentials->username;
						$user_type = "Customer";
						$name = $customer_credentials->firstname .' '. $customer_credentials->middlename .' '. $customer_credentials->lastname;
						$profile = $customer_credentials->profile;
					}


					$user_data = array(
						'user_table_id' => $user_table_id,
						'user_id' => $user_id,
						'username' => $username,
						'logged_in' =>true,
						'account_type' =>"Customer",
						'complete_name' => $name,
						'profile' => $profile,

					);

					$this->session->set_userdata($user_data);


					//insert new log detail
					$now = date('Y-m-d H:i:s');
					$data = array(
						"log_user" => $name,
						"log_usertype" => $user_type,
						"log_userID" => $user_id,
						"log_action" => "User Login",
						"log_date" => $now,
					);

					$this->customer_management->insert_new_log($data);

					
					redirect("customer/request_appointment");
					echo "tama poass";
				}else{

					echo "mail poass";
					$this->session->set_flashdata('login_failed','Username and Password is incorrect');
					redirect('landing_page/login');
				}



				echo "Customer ka";
					break;


				case 'Veterinarian':
					# code...

				
				//find admin by username and password login_admin($username,$password);
				//check to see if the user is active or not by their user_id
				$find_vet = $this->veterinarian_management->check_status_by_user_id($user_id);				
				

				if($find_vet){

					foreach($find_vet as $vet_credentials){
						$user_table_id = $vet_credentials->veterinarian_table_id;
						$user_id =  $vet_credentials->veterinarian_id;
						$username = 	$vet_credentials->username;
						$user_type = "Veterinarian";
						$name = $vet_credentials->firstname .' '. $vet_credentials->middlename .' '. $vet_credentials->lastname;
						$profile = $vet_credentials->profile;
					}


					$user_data = array(
						'user_table_id' => $user_table_id,
						'user_id' => $user_id,
						'username' => $username,
						'logged_in' =>true,
						'account_type' =>"Veterinarian",
						'complete_name' => $name,
						'profile' => $profile,

					);

					$this->session->set_userdata($user_data);


					//insert new log detail
					$now = date('Y-m-d H:i:s');
					$data = array(
						"log_user" => $name,
						"log_usertype" => $user_type,
						"log_userID" => $user_id,
						"log_action" => "User Login",
						"log_date" => $now,
					);

					$this->customer_management->insert_new_log($data);

					
					redirect("veterinarian/appointments");
					echo "tama poass";
				}else{

					echo "mail poass";
					$this->session->set_flashdata('login_failed','Username and Password is incorrect');
					redirect('landing_page/login');
				}

				echo "Vet ka";
					break;

				case 'Staff':


				//find admin by username and password login_admin($username,$password);
				//check to see if the user is active or not by their user_id
				$find_staff = $this->staff_management->check_status_by_user_id($user_id);

				if($find_staff){

					foreach($find_staff as $staff_credentials){
						$user_table_id = $staff_credentials->staff_table_id;
						$user_id =  $staff_credentials->staff_id;
						$username = 	$staff_credentials->username;
						$user_type = "Staff";
						$name = $staff_credentials->firstname .' '. $staff_credentials->middlename .' '. $staff_credentials->lastname;
						$profile = $staff_credentials->profile;
					}


					$user_data = array(
						'user_table_id' => $user_table_id,
						'user_id' => $user_id,
						'username' => $username,
						'logged_in' =>true,
						'account_type' =>"Staff",
						'complete_name' => $name,
						'profile' => $profile,

					);

					$this->session->set_userdata($user_data);


					//insert new log detail
					$now = date('Y-m-d H:i:s');
					$data = array(
						"log_user" => $name,
						"log_usertype" => $user_type,
						"log_userID" => $user_id,
						"log_action" => "User Login",
						"log_date" => $now,
					);

					$this->customer_management->insert_new_log($data);

					
					redirect("staff/pos");
					echo "tama poass";
				}else{

					echo "mail poass";
					$this->session->set_flashdata('login_failed','Username and Password is incorrect');
					redirect('landing_page/login');
				}
					# code...
				echo "Staff ka";
					break;
				
				default:
					# code...

				echo "wala ka";
				$this->session->set_flashdata('login_failed','Username and Password is incorrect');
				redirect('landing_page/login');
				break;
			}

		}else{
				$this->session->set_flashdata('login_failed','Username and Password is incorrect');
				redirect('landing_page/login');
				exit;
		}
	}




	public function sign_out(){
		//$this->login();

		$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "User Logout";
		


		$now = date('Y-m-d H:i:s');
		$data = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);



		$this->admin_management->insert_new_log($data);


		$this->session->sess_destroy();
		redirect('landing_page/login');
	}
	
}
