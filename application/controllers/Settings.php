<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Settings extends CI_Controller {

	function __construct() {

        parent::__construct();
       
        date_default_timezone_set('Asia/Taipei');

        
        
        //for reading.. retrieving
        $this->load->model('settings_model');
       $this->load->model('admin_management');


    }

	public function change_theme_color(){

		echo $settings_id = 1;
		

		echo $this->input->post('theme_color');
		$data = array(
			'theme_color' => $this->input->post('theme_color'),
		);

		//var_dump($this->input->post());


		$this->settings_model->update_settings($settings_id,$data);

        $this->session->set_flashdata('update_settings_success','System Information has been updated successfully');

        $name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "Edit System Information";

        $now = date('Y-m-d H:i:s');
		$data = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);

		$this->admin_management->insert_new_log($data);

        redirect('admin/settings');


	
		//echo "admin/index";
	}




	public function clinic_address_changer(){

		echo $settings_id = 1;
		

		//echo $this->input->post('theme_color');
		$data = array(
			'clinic_home_address' => $this->input->post('clinic_home_address'),
			'clinic_barangay_address' => $this->input->post('clinic_barangay_address'),
			'clinic_city_address' => $this->input->post('clinic_city_address'),
			'clinic_postal_id' => $this->input->post('clinic_postal_id'),
		);

		//var_dump($this->input->post());


		$this->settings_model->update_settings($settings_id,$data);

        $this->session->set_flashdata('update_settings_success','System Information has been updated successfully');


        $name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "Edit System Information";

        $now = date('Y-m-d H:i:s');
		$data = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);

		$this->admin_management->insert_new_log($data);

        redirect('admin/settings');


	
		//echo "admin/index";
	}


	public function aboutus_content_changer(){

		echo $settings_id = 1;
		

		//echo $this->input->post('theme_color');
		$data = array(
			'aboutus_content' => $this->input->post('aboutus_content'),
			
		);

		//var_dump($this->input->post());


		$this->settings_model->update_settings($settings_id,$data);

        $this->session->set_flashdata('update_settings_success','System Information has been updated successfully');

        $name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "Edit System Information";

        $now = date('Y-m-d H:i:s');
		$data = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);

		$this->admin_management->insert_new_log($data);

        redirect('admin/settings');


	
		//echo "admin/index";
	}



	public function clinic_email_changer(){

		echo $settings_id = 1;
		

		//echo $this->input->post('theme_color');
		$data = array(
			'clinic_email_address' => $this->input->post('clinic_email_address'),
			
		);

		//var_dump($this->input->post());


		$this->settings_model->update_settings($settings_id,$data);

        $this->session->set_flashdata('update_settings_success','System Information has been updated successfully');

        $name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "Edit System Information";

        $now = date('Y-m-d H:i:s');
		$data = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);

		$this->admin_management->insert_new_log($data);

        redirect('admin/settings');

	}



	public function veterinary_fee_changer(){

		echo $settings_id = 1;
		

		//echo $this->input->post('theme_color');
		$data = array(
			'vet_fee' => $this->input->post('vet_fee'),
			
		);

		//var_dump($this->input->post());


		$this->settings_model->update_settings($settings_id,$data);

        $this->session->set_flashdata('update_settings_success','System Information has been updated successfully');



        $name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "Edit System Information";

        $now = date('Y-m-d H:i:s');
		$data = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);

		$this->admin_management->insert_new_log($data);

        redirect('admin/settings');

	}




	


	

}
