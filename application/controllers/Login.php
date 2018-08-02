<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {


	function __construct() {

        parent::__construct();
       
        date_default_timezone_set('Asia/Taipei');

        
        
        //for reading.. retrieving
        $this->load->model('admin_management');
        $this->load->model('customer_management');
        $this->load->model('veterinarian_management');
        $this->load->model('staff_management');
       
        $this->load->model('settings_model');


    }




	public function login(){
		


			//die('continue');

			

			
			redirect('landing_page/index');
			
		


		//$this->load->view('admin/login');

	}//login
}
