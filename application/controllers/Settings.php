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

    
	/*public function change_theme_color(){

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
	}*/


	//change store information   ajax base
	public function change_store_information(){

		$errorMessage ="";
		$msg = "";
		

		if(empty($this->input->post("store_name"))){
			$errorMessage .= "<li>Store name cannot be blank</li>";
		}else{
			$store_name = $this->input->post("store_name");
		}

		if(empty($this->input->post("clinic_home_address"))){
			$errorMessage .= "<li>Clinic home address cannot be blank </li>";
		}else{
			$clinic_home_address = $this->input->post("clinic_home_address");
		}


		if(empty($this->input->post("clinic_barangay_address"))){
			$errorMessage .= "<li>Clinic barangay address cannot be blank </li>";
		}else{
			$clinic_barangay_address = $this->input->post("clinic_barangay_address");
		}


		if(empty($this->input->post("clinic_city_address"))){
			$errorMessage .= "<li>Clinic city address cannot be blank </li>";
		}else{
			$clinic_city_address = $this->input->post("clinic_city_address");
		}


		if(empty($this->input->post("clinic_postal_id"))){
			$errorMessage .= "<li>Clinic postal id cannot be blank </li>";
		}else{
			$clinic_postal_id = $this->input->post("clinic_postal_id");
		}



		if(empty($this->input->post("clinic_email_address"))){
			$errorMessage .= "<li>Clinic email address cannot be blank </li>";
		}else{
			$clinic_email_address = $this->input->post("clinic_email_address");
		}

		if(empty($this->input->post("telephone"))){
			$errorMessage .= "<li>Telephone number cannot be blank </li>";
		}else{
			$telephone = $this->input->post("telephone");
		}


		if(empty($this->input->post("vet_fee"))){
			$errorMessage .= "<li>Vet fee cannot be blank </li>";
		}else{
			$vet_fee = $this->input->post("vet_fee");
		}

		if(empty($this->input->post("max_product_count"))){
			$errorMessage .= "<li>Max Product Count cannot be blank </li>";
		}else{
			$max_product_count = $this->input->post("max_product_count");
		}
		
		if(empty($this->input->post("checkup_fee"))){
			$errorMessage .= "<li>Checkup fee cannot be blank </li>";
		}else{
			$checkup_fee = $this->input->post("checkup_fee");
		}
		
		$settings_id = $this->input->post("settings_id");
		

		if(empty($errorMessage)){
			$msg = "Clinic Information has been updated successfully";

			$data = array(
				'store_name' => $store_name,
				'clinic_home_address' => $clinic_home_address,
				'clinic_barangay_address' => $clinic_barangay_address,
				'clinic_city_address' => $clinic_city_address,
				'clinic_postal_id' => $clinic_postal_id,
				'clinic_email_address' => $clinic_email_address,
				'vet_fee' => $vet_fee,
				'telephone' =>$telephone,
				'max_product_count' => $max_product_count,
				'checkup_fee' => $checkup_fee,
			);


			$name = $this->session->userdata('complete_name');
			$log_usertype =  $this->session->userdata('account_type');
			$log_userID = $this->session->userdata("user_id");
			$log_action = "Edit Store Information";

	        $now = date('Y-m-d H:i:s');
			$data2 = array(
				"log_user" => $name,
				"log_usertype" => $log_usertype,
				"log_userID" => $log_userID,
				"log_action" => $log_action,
				"log_date" => $now,
			);

			$this->admin_management->insert_new_log($data2);



			$this->settings_model->update_settings($settings_id,$data);

			echo json_encode(['code'=>200, 'msg'=>$msg]);

			exit;

		}else{

			//$msg = $errorMessage;

			echo json_encode(['code'=>404, 'msg'=>$errorMessage]);
        	exit;
		}


		//if(empty($))
	}


	public function change_theme_color_ajax(){

		
		

		if (!empty($this->input->post('theme_color'))) {
			# code...
			$theme_color = $this->input->post('theme_color');
			$settings_id = $this->input->post('settings_id');
			$data = array(
			'theme_color' =>$theme_color,
			);


		

			$name = $this->session->userdata('complete_name');
			$log_usertype =  $this->session->userdata('account_type');
			$log_userID = $this->session->userdata("user_id");
			$log_action = "Edit System Information";

	        $now = date('Y-m-d H:i:s');
			$data2 = array(
				"log_user" => $name,
				"log_usertype" => $log_usertype,
				"log_userID" => $log_userID,
				"log_action" => $log_action,
				"log_date" => $now,
			);


			$this->settings_model->update_settings($settings_id,$data);
			$this->admin_management->insert_new_log($data2);


			$msg = "Theme color has been successfully configured " . $theme_color . "";

			echo json_encode(['code'=>200, 'msg'=>$msg]);
		}else{

			$msg = "Please sekect a color theme";
			echo json_encode(['code'=>404, 'msg'=>$msg]);
		}

	}


	public function aboutus_content_changer(){

		$errorMessage = "";

		if(empty($this->input->post("aboutus_content"))){
			
			$errorMessage .= "<li>About us content cannot be blank</li>";

		}else{
			
			$aboutus_content = $this->input->post("aboutus_content");

		}


		if(empty($this->input->post("service_content"))){
			
			$errorMessage .= "<li>About us content cannot be blank</li>";

		}else{
			
			$service_content = $this->input->post("service_content");

		}


		//image upload
		$config['upload_path']          = './assets/images/site_images';
        $config['allowed_types']        = 'gif|jpg|png';
        //$config['max_size']             = 100;
       // $config['max_width']            = 1024;
       // $config['max_height']           = 768;

        $this->load->library('upload', $config);

        if ( ! $this->upload->do_upload('about_image'))
        {		//failed to upload
                $error = array('error' => $this->upload->display_errors());
                $image1 = $this->input->post("hidden_image1");
                //$this->load->view('file_view', $error);
        }
        else
        {



               $uploadData = $this->upload->data();
               $image1 = $uploadData['file_name'];
        }

		 if ( ! $this->upload->do_upload('service_image'))
        {		//failed to upload
                $error = array('error' => $this->upload->display_errors());
                $image2 = $this->input->post("hidden_image2");
                //$this->load->view('file_view', $error);
        }
        else
        {



               $uploadData = $this->upload->data();
               $image2 = $uploadData['file_name'];
        }



		if (empty($errorMessage)) {


			echo $settings_id = 1;
			//echo $this->input->post('theme_color');
			$data = array(
				'aboutus_content' => $this->input->post('aboutus_content'),	
				'service_content' => $this->input->post('service_content'),	
				'about_us_picture' => $image1,
				'service_picture' => $image2,		
			);

			//var_dump($this->input->post());

			$this->settings_model->update_settings($settings_id,$data);

	        //$this->session->set_flashdata('update_settings_success','System Information has been updated successfully');

	        $name = $this->session->userdata('complete_name');
			$log_usertype =  $this->session->userdata('account_type');
			$log_userID = $this->session->userdata("user_id");
			$log_action = "Edit About us content";

	        $now = date('Y-m-d H:i:s');
			$data2 = array(
				"log_user" => $name,
				"log_usertype" => $log_usertype,
				"log_userID" => $log_userID,
				"log_action" => $log_action,
				"log_date" => $now,
			);

			$this->admin_management->insert_new_log($data2);


			$msg = "Content section has been updated successfully";
			echo json_encode(['code'=>200, 'msg'=>$msg]);
			exit;
		}else{

			echo json_encode(['code'=>404, 'msg'=>$errorMessage]);
		}



			

        //redirect('admin/settings');


	
		//echo "admin/index";
	}



	public function add_banners(){




		$config['upload_path']          = './assets/images/site_images';
        $config['allowed_types']        = 'gif|jpg|png';
        //$config['max_size']             = 100;
       // $config['max_width']            = 1024;
       // $config['max_height']           = 768;

        $this->load->library('upload', $config);

        if ( ! $this->upload->do_upload('bannerImage'))
        {		//failed to upload
                $error = array('error' => $this->upload->display_errors());

                //$this->load->view('file_view', $error);
        }
        else
        {



               $uploadData = $this->upload->data();
               $image = $uploadData['file_name'];
        }


        $settings_id = 1;
        $data = array(
        	'settings_id' => $settings_id,
        	'banner_caption_heading' =>$this->input->post("banner_caption_heading"),
        	'banner_image' => $image,
        	'banner_caption' => $this->input->post("banner_caption"),
        );

        $this->settings_model->add_banner($data);


        $msg = "Banner image has been added successfully";
        echo json_encode(['code'=>200, 'msg'=>$msg]);
	}


	public function delete_banner(){

		$bannerimage_id = $this->input->post('bannerimage_id');

		$this->settings_model->delete_banner($bannerimage_id);
	}



	public function show_banner(){
		echo $this->banner_data();
	}


	//not used
	public function banner_data(){

		$output = '';

		$banners = $this->settings_model->load_banners();


		foreach($banners as $banner){
			$output .='<div class="col-md-4" style="background:url('.site_url().'assets/images/site_images/'.$banner->banner_image.');width:400px;height:100px">';
			//$output .= '<img class = "" src = "'.site_url().'assets/images/site_images/'.$banner->banner_image.'" width="200" />';
			//$output .= '<h2>'.$banner->banner_caption_heading.'</h2>';
			$output .="</div>";
		}

		return $output;

	}



	/*

	 <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                  <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                  <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
                  <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                </ol>
                <div class="carousel-inner">
                  <div class="item active">
                    <img src="http://placehold.it/900x500/39CCCC/ffffff&text=I+Love+Bootstrap" alt="First slide">

                    <div class="carousel-caption">
                      First Slide
                    </div>
                  </div>
                  <div class="item">
                    <img src="http://placehold.it/900x500/3c8dbc/ffffff&text=I+Love+Bootstrap" alt="Second slide">

                    <div class="carousel-caption">
                      Second Slide
                    </div>
                  </div>
                  <div class="item">
                    <img src="http://placehold.it/900x500/f39c12/ffffff&text=I+Love+Bootstrap" alt="Third slide">

                    <div class="carousel-caption">
                      Third Slide
                    </div>
                  </div>
                </div>
                <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                  <span class="fa fa-angle-left"></span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                  <span class="fa fa-angle-right"></span>
                </a>
              </div>



	

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




	*/


	

}
