<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Inventory extends CI_Controller {

	function __construct() {

        parent::__construct();
       
        date_default_timezone_set('Asia/Taipei');

        
        
        //for reading.. retrieving
        /*$this->load->model('admin_management');
        $this->load->model('customer_management');
        $this->load->model('veterinarian_management');
        $this->load->model('staff_management');
        $this->load->model('appointment_management');

        $this->load->model('pet_management_model');*/


        //for inventory

        $this->load->model('inventory_management');
        $this->load->model('veterinarian_management');


        //for tax na 12%
        $this->load->model('settings_model');
        $this->load->library('image_lib');

    }

	


	/****************** PRODUCTS ****************************/


	// Resize Manipulation.
	public function resize($image_data) {
		//$img = substr($image_data['full_path'], 51);
		$img = $image_data['full_path'];
		$config['image_library'] = 'gd2';
		$config['source_image'] = $image_data['full_path'];
		//$config['new_image'] = './assets/images/products/new_product_' . $img;
		$config['new_image'] = $img;
		$config['width'] = 400;
		$config['height'] =400;

		//send config array to image_lib's  initialize function
		$this->image_lib->initialize($config);
		$src = $config['new_image'];
		$data['new_image'] = substr($src, 2);
		$data['img_src'] = base_url() . $data['new_image'];
		// Call resize function in image library.
		$this->image_lib->resize();
		// Return new image contains above properties and also store in "upload" folder.
		return $data;
	}

	public function add_new_item(){
		 $now = date('Y-m-d H:i:s');


		   $config['upload_path']          = './assets/images/products';
           $config['allowed_types']        = 'gif|jpg|png';
	        //$config['max_size']             = 100;
	       // $config['max_width']            = 1024;
	       // $config['max_height']           = 768;

	        $this->load->library('upload', $config);

	        if ( ! $this->upload->do_upload('itemImage'))
	        {		//failed to upload
	                $error = array('error' => $this->upload->display_errors());

	                //$this->load->view('file_view', $error);
	        }
	        else
	        {

	        		//success_upload
	              /*  $data = array('upload_data' => $this->upload->data());

	                $this->load->view('upload_success', $data);*/
	                //redirect('admin/dashboard');

	             //wawa();

	                //$this->session->set_flashdata('category_success','Success Message');

	                //redirect('admin/products');

	             //Success

	               $uploadData = $this->upload->data();
                   $image = $uploadData['file_name'];
	        }


	        //check if the product name is already exist in the db
	        $itemname = $this->input->post('itemname');

	        $find_double = $this->inventory_management->find_item_by_name($itemname);
	        foreach($find_double as $i){
	        	$double_name = $i->itemname;
	        }

	        if(empty($double_name)){
	        	$double_name ="";
	        }

	        $loweritemname = strtolower($itemname);
	        $lowerdoublename = strtolower($double_name);

	        if($loweritemname == $lowerdoublename){
	        	echo "meron na to";
	        	$this->session->set_flashdata('add_product_error','Product detail is already in the database');
            	redirect('admin/items');
	        	exit;
	        }

	        $price = $this->input->post('price');

	        $get_vat = $this->settings_model->get_all_settings_detail_by_settings_id(1);
	        foreach($get_vat as $g_vat){
	        	$tax = $g_vat->vat;
	        	$markup_percentage= $g_vat->markup_percentage;

	        }

	        //ito ung idadagdag sa price
	        /*$vat =  $this->input->post('price') * $tax;
	        $store_price = $this->input->post('price') + $vat;*/
	        $markup = $this->input->post('price') * $markup_percentage;
	        $store_price =  $this->input->post('price') + $markup;


		 	//add to productitem table
            $data = array(
            'item_id' => $this->input->post('item_id'),
           
            'itemname' => $this->input->post('itemname'),
            'itemdescription' => $this->input->post('itemdescription'),
            
            'itemImage' => $image,
            'price' => $this->input->post('price'),

            'supplier' => $this->input->post('supplier'),
            'store_price' => $store_price,
            'max_product_count' => $this->input->post('max_product_count'),
            );

            $this->inventory_management->insert_new_item($data);

            //$this->session->set_flashdata('add_product_success','New Product has been added');

            //get the last inserted id
			$item_table_id_last = $this->db->insert_id();


            //add product to storeCount

            $productType = "Item";
          
			$product_id = $this->input->post('item_id');
			$product_rel_id = $item_table_id_last;
			//product relation id is the primary key of products in each product table
            $data = array(
            	'product_relation_id' => $product_rel_id,
            	'productInStore' => $this->input->post('supplycount'),
            	'productType' =>$productType,
            	'product_id' => $product_id,
            	'dateAdded' => $now,
            	'product_name' => $this->input->post('itemname'),
            	'productImage' => $image,
            	'product_price' => $this->input->post('price'),
            	'store_price' => $store_price,
            	'max_product_count' => $this->input->post('max_product_count'),
            );


            $this->inventory_management->insert_new_item_in_store($data);

						
			$action = "Add new Product";

			//use session for this... this is temp
			$user_type=$this->session->userdata('account_type');

			//use session for this... this is temp
			$user_name =$this->session->userdata('complete_name');

			$data =array(
				'product_rel_id' => $item_table_id_last,
				'product_id' => $product_id,
				'productType' => $productType,
				'product_name' =>$this->input->post('itemname'),
				'action' => $action ,
				'user_name' => $user_name,
				'user_type' => $user_type,
				'inventory_date' =>$now,
				'quantity' => $this->input->post('supplycount'),
			);


			$this->inventory_management->insert_new_inventory_action($data);

			//insert inventory action
			$this->session->set_flashdata('add_product_success','New Product has been added');

            redirect('Admin/Items');

	}



	public function add_supply_item(){

		$now = date('Y-m-d H:i:s');

		//update product count in store

		$added_supply = $this->input->post('supplycount');

		$product_table_id =  $this->input->post('product_table_id');

		//echo "uri " . $product_table_id = $this->input->post('product_table_id');

		echo "uri " . $item_table_id = $this->input->post('item_table_id');

		$needed_product = $this->input->post('needed_product');

		if($added_supply > $needed_product){
			$this->session->set_flashdata('add_product_supply_failed','Added supply is higher than the needed supply');
			redirect('Admin/Items');
			exit;
		}

		//search for product in tbl_products product relation id
		$productSupplyLeft = $this->inventory_management->get_product_count_by_product_id($product_table_id);

		//kuha remaining supply
		foreach ($productSupplyLeft as $supplyLeft) {
				$product_supply_left = $supplyLeft->productInStore;
				//$product_table_id =$supplyLeft->product_table_id;
				$item_table_id =$supplyLeft->item_table_id;
		}


		echo $new_supply_count = $product_supply_left + $added_supply;

		$data = array(
			'productInStore' => $new_supply_count,
		);


		$this->inventory_management->update_supply_count($product_table_id,$data);

		 //get the last inserted id
		//$item_table_id_last = $this->db->insert_id();

		$action = "Add Supply";

		//use session for this... this is temp
		$user_type=$this->session->userdata('account_type');

		//use session for this... this is temp
		$user_name =$this->session->userdata('complete_name');

		$productType = "Item";

		$data =array(
			'product_rel_id' => $item_table_id,
			'product_id' => $this->input->post('item_id'),
			'productType' => $productType,
			'product_name' =>$this->input->post('itemname'),
			'action' => $action ,
			'user_name' => $user_name,
			'user_type' => $user_type,
			'inventory_date' =>$now,
			'quantity' => $added_supply,
		);


		$this->inventory_management->insert_new_inventory_action($data);


		//insert inventory action
		$this->session->set_flashdata('add_product_supply','New Product Supply has been added');

        redirect('Admin/Items');
		//

		/*$data = array(
			'productInStore' =>
		)*/

	}


	public function update_item_image(){

		$item_table_id =  $this->input->post('item_table_id');
		$item_id =  $this->input->post('item_id');


        //config for upload image \assets\images\profiles
        $config['upload_path']          = './assets/images/products/';
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
        }else{
                    //echo 'wala laman';
                    //set the image name to the previously upload image
                    $default_image_name = $this->inventory_management->get_item_detail_by_id($item_table_id);
                    foreach ($default_image_name as $default_image) {
                               $image = $default_image->itemImage; 
                    
                    }
                    


                   //$image ='';
                             
                   echo 12;      
                   echo "dsds"; 


                   //check for errors
                  /* $error = array('error' => $this->upload->display_errors());

                    $this->load->view('file_view', $error);*/
        }

        $data = array(

         
            'itemImage' =>$image,
    

        );

         $data2 = array(

        	'productImage' =>$image,
        	

        );

        $this->inventory_management->update_item_details_from_tblproducts($item_id,$data2);


        var_dump($data);


            $this->inventory_management->update_item_details($item_table_id,$data);

            $this->session->set_flashdata('update_product_success','Product information has been updated successfully');
            redirect('Admin/Item_details/'.$item_table_id);
	}



	public function update_item_details_action(){



		$item_table_id =  $this->input->post('item_table_id');
		$item_id = $this->input->post('item_id');
		$max_product_count = $this->input->post('max_product_count');

		$price = $this->input->post('price');

        $get_vat = $this->settings_model->get_all_settings_detail_by_settings_id(1);
        foreach($get_vat as $g_vat){
        	$tax = $g_vat->vat;
        	$markup_percentage= $g_vat->markup_percentage;

        }

        //ito ung idadagdag sa price
       /* $vat =  $this->input->post('price') * $tax;
        $store_price = $this->input->post('price') + $vat;*/
        $markup = $this->input->post('price') * $markup_percentage;
        $store_price =  $this->input->post('price') + $markup;
        $productInStore = $this->input->post('productInStore');

        if($productInStore > $max_product_count){
       	$this->session->set_flashdata('update_product_failed','Failed to update product Information');
        redirect('Admin/Item_details/'.$item_table_id);
        }


		$data = array(

         
            'itemname' => $this->input->post('itemname'),
            'itemdescription' =>$this->input->post('itemdescription'),
            'price' => $this->input->post('price'),
            'supplier' => $this->input->post('supplier'),
    		'store_price' => $store_price,
    		'max_product_count' => $max_product_count,

        );


		$this->inventory_management->update_item_details($item_table_id,$data);


		//update item name
        $data2 = array(

        	'product_name' =>$this->input->post('itemname'),
        	'product_price' => $this->input->post('price'),
        	'store_price' => $store_price,
        	'max_product_count' => $max_product_count,
        );


        var_dump($data2);

        $this->inventory_management->update_item_details_from_tblproducts($item_id,$data2);


		

        $this->session->set_flashdata('update_product_success','Product information has been updated successfully');
        redirect('Admin/Item_details/'.$item_table_id);
	}





	public function add_new_food(){
		 $now = date('Y-m-d H:i:s');


		   $config['upload_path']          = './assets/images/products';
           $config['allowed_types']        = 'gif|jpg|png';
	        //$config['max_size']             = 100;
	       // $config['max_width']            = 1024;
	       // $config['max_height']           = 768;

	        $this->load->library('upload', $config);

	        if ( ! $this->upload->do_upload('foodImage'))
	        {		//failed to upload
	                $error = array('error' => $this->upload->display_errors());

	                //$this->load->view('file_view', $error);
	        }
	        else
	        {

	        		//success_upload
	              /*  $data = array('upload_data' => $this->upload->data());

	                $this->load->view('upload_success', $data);*/
	                //redirect('admin/dashboard');

	             //wawa();

	                //$this->session->set_flashdata('category_success','Success Message');

	                //redirect('admin/products');

	             //Success

	               $uploadData = $this->upload->data();
                   $image = $uploadData['file_name'];
	        }


	        //check if the product name is already exist in the db
	        $foodname = $this->input->post('foodname');

	        $find_double = $this->inventory_management->find_food_by_name($foodname);
	        foreach($find_double as $fd){
	        	$double_name = $fd->foodname;
	        }

	        if(empty($double_name)){
	        	$double_name ="";
	        }

	        $lowerfoodname = strtolower($foodname);
	        $lowerdoublename = strtolower($double_name);

	        if($lowerfoodname == $lowerdoublename){
	        	echo "meron na to";
	        	$this->session->set_flashdata('add_product_error','Product detail is already in the database');
            	redirect('admin/foods');
	        	exit;
	        }


	        //get tax


	        $price = $this->input->post('price');

	        $get_vat = $this->settings_model->get_all_settings_detail_by_settings_id(1);
	        foreach($get_vat as $g_vat){
	        	$tax = $g_vat->vat;
	        	$markup_percentage = $g_vat->markup_percentage;
	        }

	        //ito ung idadagdag sa price
	        /*$vat =  $this->input->post('price') * $tax;
	        $store_price = $this->input->post('price') + $vat;*/
	        $markup = $this->input->post('price') * $markup_percentage;
            $store_price =  $this->input->post('price') + $markup;

	        $product_unit = $this->input->post('product_unit');
	        $product_unit_number = $this->input->post('product_unit_number');
	        $product_unit_with_number = $product_unit_number .' ('.$product_unit .') ';




		 	//add to productfood table
            $data = array(
            'food_id' => $this->input->post('food_id'),
           
            'foodname' => $this->input->post('foodname'),
            'fooddescription' => $this->input->post('fooddescription'),
            //'forwhatpet' => $this->input->post('forwhatpet'),
            
            'foodImage' => $image,
            'price' => $this->input->post('price'),

            'supplier' => $this->input->post('supplier'),

            'exp_date' =>$this->input->post('exp_date'),
            'product_unit' => $product_unit_with_number,
            'product_unit_number' => $product_unit_number,
            'product_unit_measure' => $product_unit,
            'store_price' => $store_price,
            'max_product_count' => $this->input->post('max_product_count'),
            );

            $this->inventory_management->insert_new_food($data);

            //$this->session->set_flashdata('add_product_success','New Product has been added');

            //get the last inserted id
			$food_table_id_last = $this->db->insert_id();


            //add product to storeCount

            $productType = "Food";
          
			$product_id = $this->input->post('food_id');
			$product_rel_id = $food_table_id_last;
			//product relation id is the primary key of products in each product table
            $data = array(
            	'product_relation_id' => $product_rel_id,
            	'productInStore' => $this->input->post('supplycount'),
            	'productType' =>$productType,
            	'product_id' => $product_id,
            	'dateAdded' => $now,
            	'product_name' => $this->input->post('foodname'),
            	'productImage' => $image,
            	'product_price' => $this->input->post('price'),
            	'product_unit' => $product_unit_with_number,
            	'store_price' => $store_price,
            	'max_product_count' => $this->input->post('max_product_count'),
            );


            $this->inventory_management->insert_new_item_in_store($data);

						
			$action = "Add new Product";

			//use session for this... this is temp
			$user_type=$this->session->userdata('account_type');

			//use session for this... this is temp
			$user_name =$this->session->userdata('complete_name');

			$data =array(
				'product_rel_id' => $product_rel_id,
				'product_id' => $product_id,
				'productType' => $productType,
				'product_name' =>$this->input->post('foodname'),
				'action' => $action ,
				'user_name' => $user_name,
				'user_type' => $user_type,
				'inventory_date' =>$now,
				'quantity' => $this->input->post('supplycount'),
				'product_exp_date' => $this->input->post('exp_date'),
			);


			$this->inventory_management->insert_new_inventory_action($data);

			//insert inventory action
			$this->session->set_flashdata('add_product_success','New Product has been added');

            redirect('Admin/Foods');

			

	}


	public function add_supply_food(){

		$now = date('Y-m-d H:i:s');

		//update product count in store

		$added_supply = $this->input->post('supplycount');

		//id form procut tbl
		$product_table_id =  $this->input->post('product_table_id');

		//echo "uri " . $product_table_id = $this->input->post('product_table_id');

		echo "uri " . $item_table_id = $this->input->post('item_table_id');


		$needed_product = $this->input->post('needed_product');

		if($added_supply > $needed_product){
			$this->session->set_flashdata('add_product_supply_failed','Added supply is higher than the needed supply');
			redirect('Admin/Foods');
			exit;
		}

		//search for product in tbl_products product relation id
		$productSupplyLeft = $this->inventory_management->get_product_count_by_product_id_in_foods($product_table_id);

		foreach ($productSupplyLeft as $supplyLeft) {
				$product_supply_left = $supplyLeft->productInStore;
				//$product_table_id =$supplyLeft->product_table_id;
				$food_table_id =$supplyLeft->food_table_id;
		}


		echo $new_supply_count = $product_supply_left + $added_supply;

		$data = array(
			'productInStore' => $new_supply_count,
		);


		$this->inventory_management->update_supply_count($product_table_id,$data);

		 //get the last inserted id
		//$item_table_id_last = $this->db->insert_id();

		$action = "Add Supply";

		//use session for this... this is temp
		$user_type=$this->session->userdata('account_type');

		//use session for this... this is temp
		$user_name =$this->session->userdata('complete_name');

		$productType = "Food";

		$data =array(
			'product_rel_id' => $item_table_id,
			'product_id' => $this->input->post('food_id'),
			'productType' => $productType,
			'product_name' =>$this->input->post('foodname'),
			'action' => $action ,
			'user_name' => $user_name,
			'user_type' => $user_type,
			'inventory_date' =>$now,
			'quantity' => $added_supply,
			'product_exp_date' => $this->input->post('exp_date'),
		);


		$this->inventory_management->insert_new_inventory_action($data);


		//insert inventory action
		$this->session->set_flashdata('add_product_supply','New Product Supply has been added');

        redirect('Admin/Foods');
		//

		/*$data = array(
			'productInStore' =>
		)*/

	}


	public function update_food_image(){

		$food_table_id =  $this->input->post('food_table_id');
		$food_id =  $this->input->post('food_id');
		

        //config for upload image \assets\images\profiles
        $config['upload_path']          = './assets/images/products/';
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
        }else{
                    //echo 'wala laman';
                    //set the image name to the previously upload image
                    $default_image_name = $this->inventory_management->get_food_detail_by_id($food_table_id);
                    foreach ($default_image_name as $default_image) {
                               $image = $default_image->foodImage; 
                    
                    }
                    


                   //$image ='';
                             
                   echo 12;      
                   echo "dsds"; 


                   //check for errors
                  /* $error = array('error' => $this->upload->display_errors());

                    $this->load->view('file_view', $error);*/
        }

        $data = array(

         
            'foodImage' =>$image,
    

        );


        var_dump($data);


        $data2 = array(

        	'productImage' =>$image,
        	

        );

        $this->inventory_management->update_food_details_from_tblproducts($food_id,$data2);


            $this->inventory_management->update_food_details($food_table_id,$data);

            $this->session->set_flashdata('update_product_success','Product information has been updated successfully');
            redirect('Admin/Food_details/'.$food_table_id);
	}



	public function update_food_details_action(){



		$food_table_id =  $this->input->post('food_table_id');
		$food_id =  $this->input->post('food_id');
		$max_product_count =  $this->input->post('max_product_count');

		 $price = $this->input->post('price');

	    $get_vat = $this->settings_model->get_all_settings_detail_by_settings_id(1);
	    foreach($get_vat as $g_vat){
	        	$tax = $g_vat->vat;
	        	$markup_percentage = $g_vat->markup_percentage;
	    }

			//ito ung idadagdag sa price
        $markup = $this->input->post('price') * $markup_percentage;
        $store_price =  $this->input->post('price') + $markup;
        $productInStore = $this->input->post('productInStore');

        if($productInStore > $max_product_count){
       	$this->session->set_flashdata('update_product_failed','Failed to update product Information');
        redirect('Admin/Food_details/'.$food_table_id);
        }

	    $product_unit = $this->input->post('product_unit');
	    $product_unit_number = $this->input->post('product_unit_number');
	    $product_unit_with_number = $product_unit_number .' ('.$product_unit .') ';


		$data = array(

         
            'foodname' => $this->input->post('foodname'),
            'forwhatpet' => $this->input->post('forwhatpet'),
            'fooddescription' =>$this->input->post('fooddescription'),
            'price' => $this->input->post('price'),
            'supplier' => $this->input->post('supplier'),
 
            'product_unit' => $product_unit_with_number,
            'product_unit_number' => $product_unit_number,
            'product_unit_measure' => $product_unit,
            'store_price' => $store_price,
            'max_product_count' => $max_product_count,
        );



       

		$this->inventory_management->update_food_details($food_table_id,$data);


		 $data2 = array(
			 'product_unit' => $product_unit_with_number,
    	     'store_price' => $store_price,
        	 'product_name' =>$this->input->post('foodname'),
             'product_price' => $this->input->post('price'),
             'max_product_count' => $max_product_count,

        );

        $this->inventory_management->update_food_details_from_tblproducts($food_id,$data2);

        $this->session->set_flashdata('update_product_success','Product information has been updated successfully');
        redirect('Admin/Food_details/'.$food_table_id);
	}




	public function add_new_medicine(){

		   $now = date('Y-m-d H:i:s');
		   $config['upload_path']          = './assets/images/products';
           $config['allowed_types']        = 'gif|jpg|png';
	        //$config['max_size']             = 100;
	       // $config['max_width']            = 1024;
	       // $config['max_height']           = 768;

	        $this->load->library('upload', $config);

	        if ( ! $this->upload->do_upload('medImage'))
	        {		//failed to upload
	                $error = array('error' => $this->upload->display_errors());

	                //$this->load->view('file_view', $error);
	        }
	        else
	        {

	        		//success_upload
	              /*  $data = array('upload_data' => $this->upload->data());

	                $this->load->view('upload_success', $data);*/
	                //redirect('admin/dashboard');

	             //wawa();

	                //$this->session->set_flashdata('category_success','Success Message');

	                //redirect('admin/products');

	             //Success

	               $uploadData = $this->upload->data();
                   $image = $uploadData['file_name'];
	        }


	        //check if the product name is already exist in the db
	        $medname = $this->input->post('medname');

	        $find_double = $this->inventory_management->find_med_by_name($medname);
	        foreach($find_double as $md){
	        	$double_name = $md->medname;
	        }

	        if(empty($double_name)){
	        	$double_name ="";
	        }

	        $lowermedname = strtolower($medname);
	        $lowerdoublename = strtolower($double_name);

	        if($lowermedname == $lowerdoublename){
	        	echo "meron na to";
	        	$this->session->set_flashdata('add_product_error','Product detail is already in the database');
            	redirect('admin/medicines');
	        	exit;
	        }


			$price = $this->input->post('price');

	        $get_vat = $this->settings_model->get_all_settings_detail_by_settings_id(1);
	        foreach($get_vat as $g_vat){
	        	$tax = $g_vat->vat;
	        	$markup_percentage = $g_vat->markup_percentage;
	        }

	       	$markup = $this->input->post('price') * $markup_percentage;
            $store_price =  $this->input->post('price') + $markup;

	        //ito ung idadagdag sa price
	        /*$vat =  $this->input->post('price') * $tax;
	        $store_price = $this->input->post('price') + $vat;*/

	        $product_unit = $this->input->post('product_unit');
	        $product_unit_number = $this->input->post('product_unit_number');
	        $product_unit_with_number = $product_unit_number .' ('.$product_unit .') ';
		 	//add to productitem table
            $data = array(
            'med_id' => $this->input->post('med_id'),
           
            'medname' => $this->input->post('medname'),
            'meddescription' => $this->input->post('meddescription'),
            'medType' => $this->input->post('medType'),
            
            'medImage' => $image,
            'price' => $this->input->post('price'),

            'supplier' => $this->input->post('supplier'),

            'exp_date' =>$this->input->post('exp_date'),
            'store_price' => $store_price,
            'product_unit_number' => $product_unit_number,
            'product_unit_measure' => $product_unit,
            'product_unit' => $product_unit_with_number,
            'max_product_count' =>$this->input->post('max_product_count'),

            );

            $this->inventory_management->insert_new_medicine($data);

            //$this->session->set_flashdata('add_product_success','New Product has been added');

            //get the last inserted id
			$med_table_id_last = $this->db->insert_id();


            //add product to storeCount

            $productType = "Medicine";
          
			$product_id = $this->input->post('med_id');
			$product_rel_id = $med_table_id_last;
			//product relation id is the primary key of products in each product table
            $data = array(
            	'product_relation_id' => $product_rel_id,
            	'productInStore' => $this->input->post('supplycount'),
            	'productType' =>$productType,
            	'product_id' => $product_id,
            	'product_name' => $this->input->post('medname'),
            	'dateAdded' => $now,
            	'productImage' => $image,
            	'product_price' => $this->input->post('price'),
            	'store_price' => $store_price,
            	'product_unit' => $product_unit_with_number,
            	'max_product_count' =>$this->input->post('max_product_count'),
            );


            $this->inventory_management->insert_new_item_in_store($data);

						
			$action = "Add new Product";

			//use session for this... this is temp
			$user_type=$this->session->userdata('account_type');

			//use session for this... this is temp
			$user_name =$this->session->userdata('complete_name');

			$data =array(
				'product_rel_id' => $product_rel_id,
				'product_id' => $product_id,
				'productType' => $productType,
				'product_name' =>$this->input->post('medname'),
				'action' => $action ,
				'user_name' => $user_name,
				'user_type' => $user_type,
				'inventory_date' =>$now,
				'quantity' => $this->input->post('supplycount'),
				'product_exp_date' => $this->input->post('exp_date'),
			);


			$this->inventory_management->insert_new_inventory_action($data);

			//insert inventory action
			$this->session->set_flashdata('add_product_success','New Product has been added');

            redirect('Admin/Medicines');
	}


	public function add_supply_medicine(){

		$now = date('Y-m-d H:i:s');

		//update product count in store

		$added_supply = $this->input->post('supplycount');

		//id form procut tbl
		$product_table_id =  $this->input->post('product_table_id');

		//echo "uri " . $product_table_id = $this->input->post('product_table_id');

		echo "uri " . $med_table_id = $this->input->post('med_table_id');


		$needed_product = $this->input->post('needed_product');

		if($added_supply > $needed_product){
			$this->session->set_flashdata('add_product_supply_failed','Added supply is higher than the needed supply');
			redirect('Admin/Medicines');
			exit;
		}

		//search for product in tbl_products product relation id
		$productSupplyLeft = $this->inventory_management->get_product_count_by_product_id_in_medicine($product_table_id);

		foreach ($productSupplyLeft as $supplyLeft) {
				$product_supply_left = $supplyLeft->productInStore;
				//$product_table_id =$supplyLeft->product_table_id;
				$med_table_id =$supplyLeft->med_table_id;
		}


		echo $new_supply_count = $product_supply_left + $added_supply;

		$data = array(
			'productInStore' => $new_supply_count,
		);


		$this->inventory_management->update_supply_count($product_table_id,$data);

		 //get the last inserted id
		//$item_table_id_last = $this->db->insert_id();

		$action = "Add Supply";

		//use session for this... this is temp
		$user_type=$this->session->userdata('account_type');

		//use session for this... this is temp
		$user_name =$this->session->userdata('complete_name');

		$productType = "Medicine";

		$data =array(
			'product_rel_id' => $med_table_id,
			'product_id' => $this->input->post('med_id'),
			'productType' => $productType,
			'product_name' =>$this->input->post('medname'),
			'action' => $action ,
			'user_name' => $user_name,
			'user_type' => $user_type,
			'inventory_date' =>$now,
			'quantity' => $added_supply,
			'product_exp_date' => $this->input->post('exp_date'),
		);


		$this->inventory_management->insert_new_inventory_action($data);


		//insert inventory action
		$this->session->set_flashdata('add_product_supply','New Product Supply has been added');

        redirect('Admin/Medicines');
		//

		/*$data = array(
			'productInStore' =>
		)*/

	}

	public function update_medicine_image(){

		$med_table_id =  $this->input->post('med_table_id');
		$med_id =  $this->input->post('med_id');


        //config for upload image \assets\images\profiles
        $config['upload_path']          = './assets/images/products/';
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
        }else{
                    //echo 'wala laman';
                    //set the image name to the previously upload image
                    $default_image_name = $this->inventory_management->get_medicine_detail_by_id($med_table_id);
                    foreach ($default_image_name as $default_image) {
                               $image = $default_image->medImage; 
                    
                    }
                    


                   //$image ='';
                             
                   echo 12;      
                   echo "dsds"; 


                   //check for errors
                  /* $error = array('error' => $this->upload->display_errors());

                    $this->load->view('file_view', $error);*/
        }

        $data = array(

         
            'medImage' =>$image,
    

        );


        $data2 = array(

        	'productImage' =>$image,
        	

        );

        $this->inventory_management->update_medicine_details_from_tblproducts($med_id,$data2);


        var_dump($data);


            $this->inventory_management->update_medicine_details($med_table_id,$data);

            $this->session->set_flashdata('update_product_success','Product information has been updated successfully');
            redirect('Admin/Medicine_details/'.$med_table_id);
	}



	public function update_medicine_details_action(){



		$med_table_id =  $this->input->post('med_table_id');
		$med_id =  $this->input->post('med_id');
		$max_product_count = $this->input->post('max_product_count');


		$price = $this->input->post('price');

        $get_vat = $this->settings_model->get_all_settings_detail_by_settings_id(1);
        foreach($get_vat as $g_vat){
        	$tax = $g_vat->vat;
        	$markup_percentage = $g_vat->markup_percentage;
        }

        //ito ung idadagdag sa price
        /*$vat =  $this->input->post('price') * $tax;
        $store_price = $this->input->post('price') + $vat;*/


        
        $markup = $this->input->post('price') * $markup_percentage;
        $store_price =  $this->input->post('price') + $markup;
        $productInStore = $this->input->post('productInStore');

        if($productInStore > $max_product_count){
       	$this->session->set_flashdata('update_product_failed','Failed to update product Information');
        redirect('Admin/Medicine_details/'.$med_table_id);
        }

	    $product_unit = $this->input->post('product_unit');
	    $product_unit_number = $this->input->post('product_unit_number');
	    $product_unit_with_number = $product_unit_number .' ('.$product_unit .') ';
        


        $product_unit_with_number = $product_unit_number .' ('.$product_unit .') ';
		$data = array(

         
            'medname' => $this->input->post('medname'),
            'medType' =>$this->input->post('medType'),
            'meddescription' =>$this->input->post('meddescription'),
            'price' => $this->input->post('price'),
            'supplier' => $this->input->post('supplier'),
    		'store_price' => $store_price,
            'product_unit_number' => $product_unit_number,
            'product_unit_measure' => $product_unit,
            'product_unit' => $product_unit_with_number,
            'max_product_count' => $max_product_count,

        );

		$this->inventory_management->update_medicine_details($med_table_id,$data);


		$data2 = array(

        	'product_name' =>$this->input->post('medname'),

             'product_price' => $this->input->post('price'),
             'store_price' => $store_price,
             'product_unit' => $product_unit_with_number,
             'max_product_count' => $max_product_count,
        );

        $this->inventory_management->update_medicine_details_from_tblproducts($med_id,$data2);

        $this->session->set_flashdata('update_product_success','Product information has been updated successfully');
        redirect('Admin/Medicine_details/'.$med_table_id);
	}



	//staff_action



	//Vet actions

	public function pull_out_food(){
		echo $vet_name = $this->session->userdata('complete_name');
	}


	



	public function pull_out_med(){
		echo $vet_name = $this->session->userdata('complete_name');
		echo $med_table_id = $this->input->post('med_table_id');
		echo $product_table_id = $this->input->post('product_table_id');
		$number_of_pullout = 1;
		echo $vet_id = $this->session->userdata('user_id');




		//insert to pullout table




		//subtract 1 from the inventory
		$product = $this->inventory_management->get_product_count_by_product_id_in_medicine($product_table_id);
		foreach($product as $p){
			$current_balance = $p->productInStore;
			$med_id = $p->med_id;
			$med_name = $p->medname;
		}

		$new_product_count = $current_balance - $number_of_pullout;
		echo "new product count " . $new_product_count;

		//updatecproduct count

		$update_supply = array(
			'productInStore' => $new_product_count,
		);

		$this->inventory_management->update_supply_count($product_table_id,$update_supply);



		$action = "Pull out product";

		//use session for this... this is temp
		$user_type= $this->session->userdata('account_type');

		//use session for this... this is temp
		//$user_name ="Ivan Christian Jay Echanes Funcion";

		$productType = "Medicines";
		$now = date('Y-m-d H:i:s');
		$data =array(
			'product_rel_id' => $med_table_id,
			'product_id' => $med_id ,
			'productType' => $productType,
			'product_name' =>$med_name ,
			'action' => $action ,
			'user_name' => $vet_name,
			'user_type' => $user_type,
			'inventory_date' =>$now,
			'quantity' => $number_of_pullout,
		);


		$this->inventory_management->insert_new_inventory_action($data);


		$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "Pull Out 1 ". $med_name;
		


		$now = date('Y-m-d H:i:s');
		$data2 = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);


		$this->session->set_flashdata('pull_out_med','Pull out 1 product ('.$med_name.')');
		$this->veterinarian_management->insert_new_log($data2);
		redirect("Veterinarian/Medicines");

		
	}





//FOr filter reports



	public function filter_report(){


		 $from = $this->input->post('from');
		 $to = $this->input->post('to');

		 $filter = $this->inventory_management->get_report_from_to($from,$to);

		 foreach($filter as $f){
		 	echo $f->sales_date .'<br />';
		 }



		 $_SESSION['from'] = $from;
		 $_SESSION['to'] = $to;




	}



	public function print_report(){

		$settings_id = 1;
		
        $data['clinic_detail'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);
       // $data['theme_color'] = $this->settings_model->get_all_settings_detail_by_settings_id($settings_id);

        $data['title'] = "Vetopia";
		//echo $_SESSION['from'];
		$this->load->view('admin/print_report',$data);
	}





}
