<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Customer extends CI_Controller {


	function __construct() {

        parent::__construct();
       
        date_default_timezone_set('Asia/Taipei');

        
         // Load Pagination library
		$this->load->library('pagination');


        //for reading.. retrieving
        $this->load->model('admin_management');
        $this->load->model('customer_management');
        //$this->load->model('veterinarian_management');
        //$this->load->model('staff_management');
        $this->load->model('appointment_management');

        $this->load->model('pet_management_model');

        $this->load->model('pet_library_model');

        $this->load->model('settings_model');
        $this->load->model('pos_management');

        $this->load->model('article_model');


        if(!$this->session->userdata('logged_in')){
				redirect('landing_page/login');
		}


		//echo $data['complete_name'] = $this->session->userdata('complete_name');


    }


	
	public function my_pets(){

		$settings_id = 1;
		$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);

		 $id = $this->session->userdata('user_table_id');


		$data['customers_pet'] = $this->pet_management_model->get_all_pet_by_customer_id($id);



		$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "View My Pets Section";
		


		$now = date('Y-m-d H:i:s');
		$data2 = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);


		$this->customer_management->insert_new_log($data2);

		$data['title'] = "Vetopia";
		$this->load->view('Customer/My_pet',$data);
		//echo "admin/index";
	}


	public function pet_health_library(){


			redirect('Customer/Load_library');
	}


	public function load_library($rowno=0){
		$settings_id = 1;
		$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);
		$data['title'] = "Vetopia";


		// Search text
		$search_text = "";
		if($this->input->post('submit') != NULL ){
			$search_text = $this->input->post('search');
			$this->session->set_userdata(array("search"=>$search_text));
		}else{
			if($this->session->userdata('search') != NULL){
				$search_text = $this->session->userdata('search');
			}
		}

		// Row per page
		$rowperpage = 5;

		// Row position
		if($rowno != 0){
			$rowno = ($rowno-1) * $rowperpage;
		}
      	
      	// All records count
      	$allcount = $this->pet_library_model->getrecordCount($search_text);

      	// Get  records
      	$users_record = $this->pet_library_model->getData($rowno,$rowperpage,$search_text);
      	
      	// Pagination Configuration
      	//$config['base_url'] = base_url().'index.php/User/loadRecord';
      	$config['base_url'] = site_url().'customer/load_library';
      	$config['use_page_numbers'] = TRUE;
		$config['total_rows'] = $allcount;
		$config['per_page'] = $rowperpage;
		/*$config['last_tag_open'] = '<div class="pagination">';
		$config['last_tag_close'] = '</div>';*/
		// Initialize
		$this->pagination->initialize($config);

		$data['pagination'] = $this->pagination->create_links();
		$data['result'] = $users_record;
		$data['row'] = $rowno;
		$data['search'] = $search_text;


		$this->load->view('customer/pet_health_library',$data);


	}


	public function library_article_detail(){
		$settings_id = 1;
		$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);
		$data['title'] = "Vetopia";


		 $id = $this->uri->segment(3);

		 $data['find_library_article'] = $this->article_model->find_article_from_library_by_library_id($id);
		 $data['find_article_contents'] = $this->article_model->find_article_content_by_library_id($id);
		 $data['find_article_links'] =$this->article_model->find_library_link_by_library_id($id);
		  $data['find_related_article'] = $this->article_model->find_related_article_by_library_id($id);


		$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "Read Article";
		


		$now = date('Y-m-d H:i:s');
		$data2 = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);



		$this->admin_management->insert_new_log($data2);
		$this->load->view('customer/library_article_detail',$data);

	}




	///mawawawala na to .... parang ikaw
	public function health_detail(){
		$settings_id = 1;
		$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);

		$data['title'] = "Vetopia";


		$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "View Pet Health Library";
		


		$now = date('Y-m-d H:i:s');
		$data2 = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);



		$id = $this->uri->segment(3);
		$data['id'] = $id;

		$this->customer_management->insert_new_log($data2);

		//kennel_data
		if($id ==17){
			$this->load->view('customer/health_library_assets/health_detail_kennel',$data);
		}else if($id == 18){
			$this->load->view('customer/health_library_assets/health_detail_ibuprofen',$data);
		}else if($id == 19){
			$this->load->view('customer/health_library_assets/health_detail_influenza',$data);
		}else if($id == 20){
			$this->load->view('customer/health_library_assets/health_detail_tremoring',$data);
		}else if($id == 21){
			$this->load->view('customer/health_library_assets/health_detail_xylitol',$data);
		}else if($id == 22){
			$this->load->view('customer/health_library_assets/health_detail_chemical_injury',$data);
		}else if($id == 23){
			$this->load->view('customer/health_library_assets/health_detail_alcohol_ethanol_poisoning',$data);
		}else if($id == 24){
			$this->load->view('customer/health_library_assets/health_detail_epistaxis',$data);
		}else if($id == 25){
			$this->load->view('customer/health_library_assets/health_detail_azulfidine',$data);
		}else if($id == 26){
			$this->load->view('customer/health_library_assets/health_detail_colitis',$data);
		}else if($id == 27){
			$this->load->view('customer/health_library_assets/health_detail_sporonox',$data);
		}else if($id == 28){
			$this->load->view('customer/health_library_assets/health_detail_zantac',$data);
		}else if($id == 29){
			$this->load->view('customer/health_library_assets/health_detail_tagamet',$data);
		}else if($id == 30){
			$this->load->view('customer/health_library_assets/health_detail_blastomycosis',$data);
		}else if($id == 31){
			$this->load->view('customer/health_library_assets/health_detail_diarrhea_and_vomiting',$data);
		}else if($id == 32){
			$this->load->view('customer/health_library_assets/health_detail_dehydration',$data);
		}else if($id == 33){
			$this->load->view('customer/health_library_assets/health_detail_grapiprant',$data);
		}else if($id == 34){
			$this->load->view('customer/health_library_assets/health_detail_azulfidine',$data);
		}else if($id == 35){
			$this->load->view('customer/health_library_assets/health_detail_colitis',$data);
		}


		

		


	}


	public function pet_details(){

		$settings_id = 1;
		$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);



		$id = $this->uri->segment(3);
		$data['id'] = $id;

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


		$this->customer_management->insert_new_log($data2);

		$data['pet_details'] = $this->pet_management_model->get_pet_by_id($id);

		$this->load->view('customer/pet_detail',$data);
	}


	public function request_appointment(){
			$settings_id = 1;
		    $data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);
			$data['title'] = "Vetopia";


			$data['time'] = $this->appointment_management->getScheduleTime();

			 $id = $this->session->userdata('user_table_id');
			 $user_id = $this->session->userdata('user_id');

			$data['my_petsdata'] = $this->pet_management_model->get_all_pet_details_by_customer_id($id);


			$data['all_appointment_of_this_customer'] = $this->appointment_management->get_all_appointment_by_customer_id($user_id);


			$this->load->view('customer/request_appointment',$data);




	}

	public function purchase_history(){

			$settings_id = 1;
		    $data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);
			$data['title'] = "Vetopia";

			$id = $this->session->userdata('user_table_id');
			$user_id = $this->session->userdata('user_id');
			$data['sales'] = $this->pos_management->get_all_sales_by_customer_id($user_id);
			$this->load->view('customer/purchase_history',$data);
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
		$this->load->view('customer/change_password',$data);
	}

	


}
