<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Appointment extends CI_Controller {

	function __construct() {

		parent::__construct();
		date_default_timezone_set('Asia/Taipei');



		$this->load->model('appointment_management');
		$this->load->model('pet_management_model');
		$this->load->model('customer_management');
		$this->load->model('veterinarian_management');
        //$this->load->model('staff_management');
        $this->load->model('admin_management');
		//echo 1;

		$this->load->model('settings_model');
		
	}


	public function scheduleTimeTable(){

		$scheduleTime = $this->appointment_model->getScheduleTime();

		echo json_encode($scheduleTime);
		
	}



	public function send_appointment_request(){


		echo $preferredDate = $this->input->post('preferredDate');
		echo "<br />";
		echo $preferredtime = $this->input->post('preferredtime');

		$complaints =  $this->input->post('complaints');

		 $pet_id = $this->input->post('pet_id');

		$find_pet_detail = $this->pet_management_model->find_detail_using_pet_id($pet_id);

		foreach ($find_pet_detail as $a) {
				$pet_name =  $a->petname;
				echo $pettype = $a->pettype;
				echo $petbreed = $a->breed;
				$pet_birthdate = $a->birthdate;
		}


		$temp_age = floor((time() - strtotime($pet_birthdate)) / 31556926);

		if($temp_age > 0 ){
			//adult
			$is_adult = 1;
		}else{
			$is_adult = 0;
		}



		//comp for age
		$dob = strtotime($pet_birthdate);
                                   

	      $current_time = time();

	      $age_years = date('Y',$current_time) - date('Y',$dob);
	      $age_months = date('m',$current_time) - date('m',$dob);
	      $age_days = date('d',$current_time) - date('d',$dob);

	       if ($age_days<0) {
	          $days_in_month = date('t',$current_time);
	          $age_months--;
	          $age_days= $days_in_month+$age_days;
	      }

	      if ($age_months<0) {
	          $age_years--;
	          $age_months = 12+$age_months;
	      }

	      $age =0;
	      if($age_years  == 0){
	         $age =  $age_months . " Months old";
	      }else{
	        $age = $age_years ." Years old";
	      }



		$find_pettype = $this->pet_management_model->find_pettype_by_pettype_id($pettype);

		foreach ($find_pettype as $pettype) {
			echo $pet_type = $pettype->pettype;
		}


		$find_petbreed = $this->pet_management_model->find_breed_by_breed_id($petbreed);

		foreach ($find_petbreed as $breed) {
			echo $pet_breed = $breed->pet_breed;
		}


		$name = $this->session->userdata('complete_name');
		$log_userID = $this->session->userdata('user_id');

		$appointment_id = '#'.date("ymdhis") . abs(rand('0','9'));


		$now = date('Y-m-d H:i:s');
		$data = array(
			'appointment_id' => $appointment_id,
			'customer_id' => $log_userID,
			'customer_name' => $name,
			'preferredDate' => $preferredDate,
			'preferredtime' => $preferredtime,
			'pet_name'  => $pet_name,
			'pet_id' => $pet_id,
			'pettype' => $pet_type,
			'petbreed' => $pet_breed,
			'appointment_status' => "Pending",
			'date_requested' => $now,
			'complaints' => $complaints,
			'age' =>$age,
			'is_adult' => $is_adult,
		);

		$this->appointment_management->add_appointment($data);


		$appointment_table_id  = $this->db->insert_id();
 
		$_SESSION['appointment_table_id'] =  $appointment_table_id;
		//insert log

		$user_type = "Customer";
		$data2 = array(
					"log_user" => $name,
					"log_usertype" => $user_type,
					"log_userID" => $log_userID,
					"log_action" => "User Login",
					"log_date" => $now,
				);

		$this->customer_management->insert_new_log($data2);



		$this->session->set_flashdata('send_request_success','Appointment Request has been sent');
		redirect("customer/request_appointment");

	}


	//approved
	public function set_veterinarian(){
		echo $vet_table_id = $this->input->post('veterinarian');
		echo $appointment_table_id =  $this->input->post('appointment_table_id');

		//table_id
		$find_vet = $this->veterinarian_management->get_veterinarian_by_id($vet_table_id);
		foreach($find_vet as $vet){
			$vet_name = $vet->firstname .' '. $vet->middlename .' '. $vet->lastname;
			$vet_id = $vet->veterinarian_id;
		}

		echo $vet_name;

		$data = array(
			'vet_in_charge' => $vet_name,
			'vet_id' => $vet_id,
			'appointment_status' => "Approved",
		);

		$this->appointment_management->update_appointment_detail($appointment_table_id,$data);

		$this->session->set_flashdata('assigned_vet','A veterinarian has been assigned to this appointment');

		redirect('admin/appointments');
		//assign vet
	}


	public function cancel_appointment(){
		$cancel_reason = $this->input->post('cancel_reason');
		$appointment_table_id = $this->input->post('appointment_table_id');
		$now = date('Y-m-d H:i:s');

		$data = array(
			'cancel_date' => $now,
			'cancel_reason' => $cancel_reason,
			'appointment_status' => "Cancelled",
		);


		$this->appointment_management->update_appointment_detail($appointment_table_id,$data);

		$this->session->set_flashdata('cancel_appointment','An appointment has been cancelled');

		redirect('admin/appointments');
	}



	public function done_appointment(){

		$appointment_table_id = $this->input->post('appointment_table_id');
		$data = array(
			
			'appointment_status' => "Done",
		);


		$this->appointment_management->update_appointment_detail($appointment_table_id,$data);


		//$this->session->set_flashdata('schedule_appointment','');

		redirect('admin/appointments');

	}

	//admin
	public function set_appointment(){
		//var_dump($this->input->post());

		$customer_table_id = $this->input->post('customerName');
		$pet_table_id = $this->input->post('pets');
		$veterinarian_table_id = $this->input->post('veterinarian');

		$preferredDate = $this->input->post('scheduleDate');
		$preferredtime =  $this->input->post('scheduleTime');
		$now = date('Y-m-d H:i:s');
		$appointment_id = '#'.date("ymdhis") . abs(rand('0','9'));

		$complaints = $this->input->post('complaints');


		//get customer details
		$customer_details = $this->customer_management->get_customer_by_id($customer_table_id);

		foreach ($customer_details as $c_detail) {
			echo	$customer_name = $c_detail->firstname.' '.$c_detail->middlename.' '. $c_detail->lastname;
			echo	$customer_id = $c_detail->customer_id;

		}


		//get pet details

		echo  "<br/>";

		$pet_details = $this->pet_management_model->get_pet_by_id($pet_table_id);

		foreach($pet_details as $p_detail){
			echo	$petname = $p_detail->petname;
			echo	$breed = $p_detail->pet_breed;
			echo	$pettype = $p_detail->pettype;
			echo 	$pet_id = $p_detail->pet_id; 
			$pet_birthdate = $p_detail->birthdate;
		}


		$temp_age = floor((time() - strtotime($pet_birthdate)) / 31556926);

		if($temp_age > 0 ){
			//adult
			$is_adult = 1;
		}else{
			$is_adult = 0;
		}



		//comp for age
		$dob = strtotime($pet_birthdate);
                                   

	      $current_time = time();

	      $age_years = date('Y',$current_time) - date('Y',$dob);
	      $age_months = date('m',$current_time) - date('m',$dob);
	      $age_days = date('d',$current_time) - date('d',$dob);

	       if ($age_days<0) {
	          $days_in_month = date('t',$current_time);
	          $age_months--;
	          $age_days= $days_in_month+$age_days;
	      }

	      if ($age_months<0) {
	          $age_years--;
	          $age_months = 12+$age_months;
	      }

	      $age =0;
	      if($age_years  == 0){
	         $age =  $age_months . " Months old";
	      }else{
	        $age = $age_years ." Years old";
	      }


		//get vet details
		$vet_details = $this->veterinarian_management->get_veterinarian_by_id($veterinarian_table_id);

		foreach($vet_details as $v_details){
			$vet_name = $v_details->firstname.' '. $v_details->middlename .' '. $v_details->lastname;
			$vet_id = $v_details->veterinarian_id;
		}


		$data = array(
			'appointment_id' => $appointment_id,
			'customer_id' => $customer_id,
			'customer_name' => $customer_name,
			'preferredDate' => $preferredDate,
			'preferredtime' => $preferredtime,
			'pet_name' => $petname,
			'pet_id' => $pet_id,
			'pettype' => $pettype,
			'petbreed' => $breed,
			'appointment_status' => "Approved",
			'date_requested' => $now,
			'vet_in_charge' => $vet_name,
			'vet_id' => $vet_id,
			'complaints' => $complaints,
			'age' =>$age,
			'is_adult' => $is_adult,

		);

		$this->appointment_management->add_appointment($data);

		$this->session->set_flashdata('schedule_appointment','Appointment has been scheduled');

		redirect("admin/appointments");
	}


	//customer only
	public function print_appointment_slip(){


		//$appointment_table_id = $_SESSION['appointment_table_id'];
		$id = $this->uri->segment(3);
		$data['id'] = $id;
		$appointment_table_id = $id;

		//unset($_SESSION['appointment_table_id']);


		$data['search_appointment'] = $this->appointment_management->search_appointment_by_id($appointment_table_id);


		$system_id = 1;

		$data['clinic_detail'] = $this->settings_model->get_all_settings_detail_by_settings_id($system_id);



		$data['title'] ="Vetopia";

		$this->load->view('customer/print_appointment_slip',$data);
	}




	// for staff

	public function set_veterinarian_for_staff(){
		echo $vet_table_id = $this->input->post('veterinarian');
		echo $appointment_table_id =  $this->input->post('appointment_table_id');

		//table_id
		$find_vet = $this->veterinarian_management->get_veterinarian_by_id($vet_table_id);
		foreach($find_vet as $vet){
			$vet_name = $vet->firstname .' '. $vet->middlename .' '. $vet->lastname;
			$vet_id = $vet->veterinarian_id;
		}

		echo $vet_name;

		$data = array(
			'vet_in_charge' => $vet_name,
			'appointment_status' => "Approved",
			'vet_id' => $vet_id,
		);

		$this->appointment_management->update_appointment_detail($appointment_table_id,$data);

		$this->session->set_flashdata('assigned_vet','A veterinarian has been assigned to this appointment');
		redirect('staff/appointments');
		//assign vet
	}


	public function cancel_appointment_for_staff(){
		$cancel_reason = $this->input->post('cancel_reason');
		$appointment_table_id = $this->input->post('appointment_table_id');
		$now = date('Y-m-d H:i:s');

		$data = array(
			'cancel_date' => $now,
			'cancel_reason' => $cancel_reason,
			'appointment_status' => "Cancelled",
		);


		$this->appointment_management->update_appointment_detail($appointment_table_id,$data);

		$this->session->set_flashdata('cancel_appointment','An appointment has been cancelled');
		redirect('staff/appointments');
	}



	public function set_appointment_staff_action(){
		$customer_table_id = $this->input->post('customerName');
		$pet_table_id = $this->input->post('pets');
		$veterinarian_table_id = $this->input->post('veterinarian');

		$preferredDate = $this->input->post('scheduleDate');
		$preferredtime =  $this->input->post('scheduleTime');
		$now = date('Y-m-d H:i:s');
		$appointment_id = '#'.date("ymdhis") . abs(rand('0','9'));

		$complaints = $this->input->post('complaints');


		//get customer details
		$customer_details = $this->customer_management->get_customer_by_id($customer_table_id);

		foreach ($customer_details as $c_detail) {
			echo	$customer_name = $c_detail->firstname.' '.$c_detail->middlename.' '. $c_detail->lastname;
			echo	$customer_id = $c_detail->customer_id;

		}


		//get pet details

		echo  "<br/>";

		$pet_details = $this->pet_management_model->get_pet_by_id($pet_table_id);

		foreach($pet_details as $p_detail){
			echo	$petname = $p_detail->petname;
			echo	$breed = $p_detail->pet_breed;
			echo	$pettype = $p_detail->pettype;
			echo 	$pet_id = $p_detail->pet_id; 
					$pet_birthdate = $p_detail->birthdate;
		}


		$temp_age = floor((time() - strtotime($pet_birthdate)) / 31556926);

		if($temp_age > 0 ){
			//adult
			$is_adult = 1;
		}else{
			$is_adult = 0;
		}



		//comp for age
		$dob = strtotime($pet_birthdate);
                                   

	      $current_time = time();

	      $age_years = date('Y',$current_time) - date('Y',$dob);
	      $age_months = date('m',$current_time) - date('m',$dob);
	      $age_days = date('d',$current_time) - date('d',$dob);

	       if ($age_days<0) {
	          $days_in_month = date('t',$current_time);
	          $age_months--;
	          $age_days= $days_in_month+$age_days;
	      }

	      if ($age_months<0) {
	          $age_years--;
	          $age_months = 12+$age_months;
	      }

	      $age =0;
	      if($age_years  == 0){
	         $age =  $age_months . " Months old";
	      }else{
	        $age = $age_years ." Years old";
	      }


		//get vet details
		$vet_details = $this->veterinarian_management->get_veterinarian_by_id($veterinarian_table_id);

		foreach($vet_details as $v_details){
			$vet_name = $v_details->firstname.' '. $v_details->middlename .' '. $v_details->lastname;
			$vet_id = $v_details->veterinarian_id;
		}


		$data = array(
			'appointment_id' => $appointment_id,
			'customer_id' => $customer_id,
			'customer_name' => $customer_name,
			'preferredDate' => $preferredDate,
			'preferredtime' => $preferredtime,
			'pet_name' => $petname,
			'pet_id' => $pet_id,
			'pettype' => $pettype,
			'petbreed' => $breed,
			'appointment_status' => "Approved",
			'date_requested' => $now,
			'vet_in_charge' => $vet_name,
			'vet_id' => $vet_id,
			'complaints' => $complaints,
			'age' =>$age,
			'is_adult' => $is_adult,

		);


		$this->appointment_management->add_appointment($data);
		$this->session->set_flashdata('schedule_appointment','Appointment has been scheduled');

		redirect("staff/appointments");
	}



	public function done_appointment_for_staff(){

		$appointment_table_id = $this->input->post('appointment_table_id');
		$data = array(
			
			'appointment_status' => "Done",
		);


		$this->appointment_management->update_appointment_detail($appointment_table_id,$data);


		redirect('staff/appointments');

	}


	
}
