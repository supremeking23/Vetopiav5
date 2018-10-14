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


	//fullcalendar js
	public function get_all_appointments_for_calendar(){
		$get_appointments = $this->appointment_management->get_all_appointment();
		$appointments = array();

		foreach($get_appointments as $data_appointments){
			$datas = array();
			$datass = array();

			$datas['id'] = $data_appointments->appointment_table_id;
			$datas['appointment_id'] = $data_appointments->appointment_id;
			$datas['start'] = $data_appointments->preferredDate .' '. $data_appointments->time_start;
			$datas['end'] = $data_appointments->preferredDate.' '. $data_appointments->time_end;
			$datas['title'] =  $data_appointments->customer_name;


			$datas['preferredtime'] = $data_appointments->preferredtime;
			//formated
			$date =date_create($data_appointments->preferredDate);
	        $preferred_date= date_format($date,"F d, Y");
			$datas['preferredDate'] =$preferred_date;
			$datas['pet_name'] =  $data_appointments->pet_name;

			if(empty($data_appointments->vet_in_charge)){
				$vet_in_charge = "None";
			}else{
				 $vet_in_charge = $data_appointments->vet_in_charge;
			}
			$datas['vet_in_charge'] =   $vet_in_charge;

			$datas['cancel_reason'] = $data_appointments->cancel_reason;

			$datas['total_payment'] =  $data_appointments->total_payment;

			$datas['is_finished'] = $data_appointments->is_finished;



			$checkup_detail = $this->pet_management_model->get_prescription_by_appointment_table_id($data_appointments->appointment_table_id);

			foreach($checkup_detail as $cd){
				$datas['subjective'] = $cd->subjective;
				$datas['objective'] = $cd->objective;
				$datas['assessment'] =  $cd->assessment;
				$datas['plan'] =   $cd->plan;
				$datas['possible_cause'] =  $cd->possible_cause;
				$datas['checkup_id'] = $cd->checkup_id;

			}


	        //status
	        $status_color = "";
	        if($data_appointments->appointment_status == "Pending"){
	          $status_color = "#D88B24";
	        }else if($data_appointments->appointment_status == "Approved"){
	          $status_color = "#45A9FF";
	        }else if($data_appointments->appointment_status == "Done"){
	          $status_color = "#008B24";
	        }else if($data_appointments->appointment_status == "Cancelled"){
	          $status_color = "#FF1B00";
	        }else if($data_appointments->appointment_status == "On-Process"){
	          $status_color = "#3c8dbc";
	        }else if($data_appointments->appointment_status == "Confirmed"){
	          $status_color = "#00c0ef";
	        }


	        $datas['status'] = $data_appointments->appointment_status;

	        $datas['backgroundColor'] = $status_color;
            $datas['borderColor'] = $status_color;

          //merget the vent array into the return array
            array_push($appointments, $datas);
		}

		echo json_encode($appointments);

	}



	public function get_services_for_calendar_view($id){
		$id = $id;
        $result = $this->db->where("checkup_id",$id)->get("tbl_service_rendered")->result();
        echo json_encode($result);
	}





	public function get_services_with_fee($id){
		//checkup_id
		$id = $id;

		$settings_detail = $this->settings_model->get_all_settings_detail_by_settings_id(1);

		foreach($settings_detail as $s_detail){
			echo $vet_fee = $s_detail->vet_fee;
		}

		$services = $this->pet_management_model->get_services_by_checkup_id($id);

		$post_service_fee =  0;
		$post_service_fee_with_vet_fee = 0;

		foreach($services as $service){
			$service_fee = $service->service_fees;
			$post_service_fee = $post_service_fee + $service->service_fees;
		}


		/*echo "post_service_fee " . $post_service_fee;
		
		echo "post_service_fee_with_vet_fee" . $post_service_fee_with_vet_fee;*/

		$post_service_fee_with_vet_fee = $vet_fee + $post_service_fee; 

		
		echo json_encode(['total_fee'=>$post_service_fee_with_vet_fee]);

	}



	//email try
	/*public function emailtry(){
		$config = array(
			'protocol' => 'smtp',
			'smtp_host' => 'ssl://smtp.googlemail.com',
			'smtp_port' => 465,
			'smtp_user' => 'vetopiaC@gmail.com',
			'smtp_pass' => 'vetopiaC123',
			//'mailtype' => 'html',
			'charset' => 'iso-8859-1',
			'wordwrap' => TRUE

		);

		$message = "Hello ivan";

		$this->load->library('email',$config);
		$this->email->set_newline("\r\n");
		$this->email->from('vetopiaC@gmail.com');
		$this->email->to('icjfuncion@gmail.com');
		$this->email->subject('Subject: test subject');

		if($this->email->send()){
			echo "email sent.";
		}else{
			show_error($this->email->print_debugger());
		}

		         
	}*/


	//customer action only
	public function send_appointment_request(){


		echo $preferredDate = $this->input->post('preferredDate');
		echo "<br />";
		echo $preferredtime = $this->input->post('preferredtime');

		$veterinarian = $this->input->post('veterinarian');

		$search_vet = $this->veterinarian_management->get_veterinarian_by_id($veterinarian);
		foreach($search_vet as $sv){
			$vet_name = $sv->firstname .' '. $sv->middlename .' '. $sv->lastname;
			$vet_id = $sv->veterinarian_id;
		}

		$find_time = $this->appointment_management->search_schedule_time_by_schedule_time($preferredtime);

		foreach($find_time as $ft){
			$time_start =  $ft->time_start;
			$time_end =  $ft->time_end;

		}

		$complaints =  $this->input->post('complaints');

		 $pet_id = $this->input->post('pet_id');

		$find_pet_detail = $this->pet_management_model->find_detail_using_pet_id($pet_id);

		foreach ($find_pet_detail as $a) {
				$pet_name =  $a->petname;
				echo $pettype = $a->pettype;
				echo $petbreed = $a->breed;
				$pet_birthdate = $a->birthdate;
				$pet_table_id = $a->pet_table_id;
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
			'pet_table_id' => $pet_table_id,
			'pettype' => $pet_type,
			'petbreed' => $pet_breed,
			'appointment_status' => "Pending",
			'date_requested' => $now,
			'complaints' => $complaints,
			'age' =>$age,
			'is_adult' => $is_adult,
			'time_start' => $time_start,
			'time_end' => $time_end,
			'vet_in_charge' => $vet_name,
			'vet_id' => $vet_id,
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
					"log_action" => "Send Appointment Request",
					"log_date" => $now,
				);

		$this->customer_management->insert_new_log($data2);



		$this->session->set_flashdata('send_request_success','Appointment Request has been sent');
		redirect("Customer/Request_appointment");

	}


	//confirmed admin action
	public function set_veterinarian(){
		echo $vet_table_id = $this->input->post('veterinarian');
		echo $appointment_table_id =  $this->input->post('appointment_table_id');
		echo $customer_id =  $this->input->post('customer_id');
		//get customer detail by customer user id
		$customer_detail = $this->customer_management->get_customer_by_customer_id($customer_id);
		foreach($customer_detail as $c){
			$customer_email =   $c->email;
			$customer_name = $c->firstname .' '. $c->middlename .' '. $c->lastname;
		}
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
			'appointment_status' => "Confirmed",
		);

		$this->appointment_management->update_appointment_detail($appointment_table_id,$data);
		/*
		//get customer id by appointment table id 
		$customer_id = $this->appointment_management->search_appointment_by_id($appointment_table_id);

		foreach($customer_id as $customer){
			$customer->customer_id;
		}


		//search customer by user id;*/



	  
        //for email i oopen lang pag may internet
        $config = array(
            'protocol' => 'smtp',
            'smtp_host' => 'ssl://smtp.googlemail.com',
            'smtp_port' => 465,
            'smtp_user' => 'vetopiaC@gmail.com',
            'smtp_pass' => 'vetopiaC123',
            //'mailtype' => 'html',
            'charset' => 'iso-8859-1',
            'wordwrap' => TRUE

        );

       // $message = "Hello ivan";


        //email for passing username and password
      
        $this->load->library('email',$config);
        $this->email->set_newline("\r\n");
        $this->email->from('vetopiaC@gmail.com');
        $this->email->to($customer_email);
        $this->email->subject('Subject: Appointment Request has been Approved');

        $message = "Hi " . $customer_name . '! Your appointment request has been approved . please check your vetopia account for more details';

        $this->email->message($message);

        if($this->email->send()){
            echo "email sent.";
        }else{
            show_error($this->email->print_debugger());
        }

        


		$this->session->set_flashdata('assigned_vet','A veterinarian has been assigned to this appointment');

		redirect('Admin/Appointments');
		//assign vet
	}

	//admin action
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

		redirect('Admin/Appointments');
	}


	//admin action
	public function done_appointment(){

		$appointment_table_id = $this->input->post('appointment_table_id');
		$data = array(
			
			'appointment_status' => "Done",
		);


		$this->appointment_management->update_appointment_detail($appointment_table_id,$data);


		//$this->session->set_flashdata('schedule_appointment','');

		redirect('Admin/Appointments');

	}

	//admin action
	public function set_appointment(){
		//var_dump($this->input->post());

		$customer_table_id = $this->input->post('customerName');
		$pet_table_id = $this->input->post('pets');
		$veterinarian_table_id = $this->input->post('veterinarian');

		$preferredDate = $this->input->post('scheduleDate');
		$preferredtime =  $this->input->post('scheduleTime');

		$find_time = $this->appointment_management->search_schedule_time_by_schedule_time($preferredtime);

		foreach($find_time as $ft){
			$time_start =  $ft->time_start;
			$time_end =  $ft->time_end;

		}


		$now = date('Y-m-d H:i:s');
		$appointment_id = '#'.date("ymdhis") . abs(rand('0','9'));

		$complaints = $this->input->post('complaints');


		//get customer details
		$customer_details = $this->customer_management->get_customer_by_id($customer_table_id);

		foreach ($customer_details as $c_detail) {
			echo	$customer_name = $c_detail->firstname.' '.$c_detail->middlename.' '. $c_detail->lastname;
			echo	$customer_id = $c_detail->customer_id;
			$customer_email  = $c_detail->email;


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
			'appointment_status' => "Confirmed",
			'date_requested' => $now,
			'vet_in_charge' => $vet_name,
			'vet_id' => $vet_id,
			'complaints' => $complaints,
			'age' =>$age,
			'is_adult' => $is_adult,
			'pet_table_id' => $pet_table_id,
			'time_start' => $time_start,
			'time_end' => $time_end,

		);

		$this->appointment_management->add_appointment($data);


 

        //for email
      /*  $config = array(
            'protocol' => 'smtp',
            'smtp_host' => 'ssl://smtp.googlemail.com',
            'smtp_port' => 465,
            'smtp_user' => 'vetopiaC@gmail.com',
            'smtp_pass' => 'vetopiaC123',
            //'mailtype' => 'html',
            'charset' => 'iso-8859-1',
            'wordwrap' => TRUE

        );

       // $message = "Hello ivan";


        //email for passing username and password
      
        $this->load->library('email',$config);
        $this->email->set_newline("\r\n");
        $this->email->from('vetopiaC@gmail.com');
        $this->email->to($customer_email);
        $this->email->subject('Appointment');

        $message = "Hi, Your appointment request has been approved " ;

        $this->email->message($message);

        if($this->email->send()){
            echo "email sent.";
        }else{
            show_error($this->email->print_debugger());
        }*/

        


		$this->session->set_flashdata('schedule_appointment','Appointment has been scheduled');

		redirect("Admin/Appointments");
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
		echo $customer_id =  $this->input->post('customer_id');
		//get customer detail by customer user id
		$customer_detail = $this->customer_management->get_customer_by_customer_id($customer_id);
		foreach($customer_detail as $c){
			$customer_email =   $c->email;
			$customer_name = $c->firstname .' '. $c->middlename .' '. $c->lastname;
		}

		//table_id
		$find_vet = $this->veterinarian_management->get_veterinarian_by_id($vet_table_id);
		foreach($find_vet as $vet){
			$vet_name = $vet->firstname .' '. $vet->middlename .' '. $vet->lastname;
			$vet_id = $vet->veterinarian_id;
		}

		echo $vet_name;

		$data = array(
			'vet_in_charge' => $vet_name,
			'appointment_status' => "Confirmed",
			'vet_id' => $vet_id,
		);

		$this->appointment_management->update_appointment_detail($appointment_table_id,$data);



        //for email Ioopen lang pag may internet
        $config = array(
            'protocol' => 'smtp',
            'smtp_host' => 'ssl://smtp.googlemail.com',
            'smtp_port' => 465,
            'smtp_user' => 'vetopiaC@gmail.com',
            'smtp_pass' => 'vetopiaC123',
            //'mailtype' => 'html',
            'charset' => 'iso-8859-1',
            'wordwrap' => TRUE

        );

       // $message = "Hello ivan";


        //email for passing username and password
      
        $this->load->library('email',$config);
        $this->email->set_newline("\r\n");
        $this->email->from('vetopiaC@gmail.com');
        $this->email->to($customer_email);
        $this->email->subject('Subject: Appointment Request has been Approved');

        $message = "Hi " . $customer_name . '! Your appointment request has been approved . please check your vetopia account for more details';

        $this->email->message($message);

        if($this->email->send()){
            echo "email sent.";
        }else{
            show_error($this->email->print_debugger());
        }

        

       
		$this->session->set_flashdata('assigned_vet','A veterinarian has been assigned to this appointment');
		redirect('Staff/Appointments');
		//assign vet
	}



	//staff action
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
		redirect('Staff/Appointments');
	}


	//staff action
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
					$customer_email = $c_detail->email;

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
			'appointment_status' => "Confirmed",
			'date_requested' => $now,
			'vet_in_charge' => $vet_name,
			'vet_id' => $vet_id,
			'complaints' => $complaints,
			'age' =>$age,
			'is_adult' => $is_adult,
			'pet_table_id' => $pet_table_id,

		);


		$this->appointment_management->add_appointment($data);



		 /*

        //for email
        $config = array(
            'protocol' => 'smtp',
            'smtp_host' => 'ssl://smtp.googlemail.com',
            'smtp_port' => 465,
            'smtp_user' => 'vetopiaC@gmail.com',
            'smtp_pass' => 'vetopiaC123',
            //'mailtype' => 'html',
            'charset' => 'iso-8859-1',
            'wordwrap' => TRUE

        );

       // $message = "Hello ivan";


        //email for passing username and password
      
        $this->load->library('email',$config);
        $this->email->set_newline("\r\n");
        $this->email->from('vetopiaC@gmail.com');
        $this->email->to($this->input->post('email'));
        $this->email->subject('Subject: test subject');

        $message = "Hi " . $this->input->post('first_name') . '! <br /> here is your username and password   '.$username.' : '.$password.' ';

        $this->email->message($message);

        if($this->email->send()){
            echo "email sent.";
        }else{
            show_error($this->email->print_debugger());
        }

        */
		$this->session->set_flashdata('schedule_appointment','Appointment has been scheduled');

		redirect("Staff/Appointments");
	}


	//staff action
	public function done_appointment_for_staff(){

		$appointment_table_id = $this->input->post('appointment_table_id');
		$data = array(
			
			'appointment_status' => "Done",
		);


		$this->appointment_management->update_appointment_detail($appointment_table_id,$data);


		redirect('Staff/Appointments');

	}




	//for onprocess
	public function change_to_onprocess(){
		$appointment_table_id = $this->input->post('appointment_table_id');
		$appointment_status = $this->input->post('appointment_status');


		$change_appointment_status = array(
			'appointment_status' => $appointment_status,
		);


		$this->appointment_management->update_appointment_detail($appointment_table_id,$change_appointment_status);
	}

	public function change_to_confirmed(){
		$appointment_table_id = $this->input->post('appointment_table_id');
		$appointment_status = $this->input->post('appointment_status');


		$change_appointment_status = array(
			'appointment_status' => $appointment_status,
		);


		$this->appointment_management->update_appointment_detail($appointment_table_id,$change_appointment_status);
	}


	//for appointment done receipt

	public function appointment_receipt(){

		echo 	$appointment_table_id = $this->input->post('appointment_table_id');

		$total_fee = $this->input->post('total_fee');

		$cash = $this->input->post('cash');

		$change = $this->input->post('change');

		$appointment_status = $this->input->post('appointment_status');

		$update_appointment_detail = array(
			'total_payment' => $total_fee,
			'cash' => $cash,
			'change' => $change,
			'appointment_status' =>$appointment_status,
		);

		$this->appointment_management->update_appointment_detail($appointment_table_id,$update_appointment_detail);
	}




	/*public function print_appointment_receipt(){
		$data['title'] = "Vetopia";

		$settings_id = 1;
		$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);

		//$data['all_customers'] = $this->customer_management->get_all_customer();



		$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "Print Appointment Detail";
		


		$now = date('Y-m-d H:i:s');
		$data2 = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);



		$this->admin_management->insert_new_log($data2);


	     $settings_id = 1;
        $data['clinic_detail'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);
       // $data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);

        $data['title'] = "Vetopia";
        $appointment_table_id = $this->uri->segment(3);
        $data['id'] = $appointment_table_id;

        $data['get_appointment_detail_by_appointment_data_id'] = $this->appointment_management->search_appointment_by_id($appointment_table_id);
        //echo $sales_id;

        $data['get_prescription_by_appointment_table_id'] = $this->pet_management_model->get_prescription_by_appointment_table_id($appointment_table_id);

        $data['get_services_by_appointment_table_id'] = $this->appointment_management->get_services_by_appointment_table_id($appointment_table_id);
  

        //for the products that has been purchased
       

        //tbl_sales

        //sales details


		$this->load->view('staff/print_appointment_slip',$data);
	}
*/


public function print_appointment_summary(){
		$data['title'] = "Vetopia";

		$settings_id = 1;
		$data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);

		//$data['all_customers'] = $this->customer_management->get_all_customer();



		$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "Print Appointment Detail";
		


		$now = date('Y-m-d H:i:s');
		$data2 = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);



		$this->admin_management->insert_new_log($data2);


	     $settings_id = 1;
        $data['clinic_detail'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);
       // $data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);

        $data['title'] = "Vetopia";
        $appointment_table_id = $this->uri->segment(3);
        $data['id'] = $appointment_table_id;

        $data['get_appointment_detail_by_appointment_data_id'] = $this->appointment_management->search_appointment_by_id($appointment_table_id);
        //echo $sales_id;

        $data['get_prescription_by_appointment_table_id'] = $this->pet_management_model->get_prescription_by_appointment_table_id($appointment_table_id);

        $data['get_services_by_appointment_table_id'] = $this->appointment_management->get_services_by_appointment_table_id($appointment_table_id);
  

        //for the products that has been purchased
       

        //tbl_sales

        //sales details


		$this->load->view('staff/print_appointment_slip',$data);
	}	

	
}
