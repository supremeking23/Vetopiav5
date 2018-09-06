<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Article_Controller extends CI_Controller {

	function __construct() {

        parent::__construct();
       
        date_default_timezone_set('Asia/Taipei');

        
        
       //for reading.. retrieving
       $this->load->model('settings_model');
       $this->load->model('admin_management');
       $this->load->model('article_model');


       echo 1;
    }


    /*public function add_health_care(){

    	//config for upload image \assets\images\profiles
        $config['upload_path']          = './assets/images/library/';
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
        }




    	$data = array(
    		'article_image' => $image,
    		'title' => $this->input->post('title'),
    		'content' => $this->input->post('content'),
    	);

    	$this->article_model->add_article($data);

    	$library_id_last = $this->db->insert_id();


    	//foreach library id



    	$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "Add article in Pet Health Care Library";
		
		$now = date('Y-m-d H:i:s');
		$logs = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);



		$this->admin_management->insert_new_log($logs);
    	$this->session->set_flashdata('add_article_success','Article has been added to library');
    	redirect("admin/pet_health_care_library");
    }*/




  /*  public function section(){
	    	$output = "";
	    	$output .= '<textarea  class="form-control textareas" placeholder= "Content Section ">';
	        $output .= '</textarea>';

	        return $output;
    }



    public function sections(){
		echo $this->section();
    }*/



    public function add_article(){

    	//config for upload image \assets\images\profiles
        $config['upload_path']          = './assets/images/library/';
        //$config['upload_path']          = './uploads/';
        $config['allowed_types']        = 'gif|jpg|png|jpeg';
        //$config['max_size']             = 100;
        // $config['max_width']            = 1024;
        // $config['max_height']           = 768;
        $this->load->library('upload', $config);


        if($this->upload->do_upload('article_image')){
                //get the file name of the uploaded file
                $uploadData = $this->upload->data();
                $image = $uploadData['file_name'];
                //echo 1;
                echo "ivan";
        }



        $errorMessage ="";
		$msg = "";


		$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
        $user_type = $this->session->userdata("account_type");
        $user_table_id = $this->session->userdata("user_table_id");
        $user_id = $this->session->userdata("user_id");
		$log_action = "Add article in Pet Health Care Library";
		
		$now = date('Y-m-d H:i:s');
		$logs = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);



		$this->admin_management->insert_new_log($logs);
		


    	echo $title =  $this->input->post("title");
    	echo "<br />";
    	echo $image = $image;
    	echo "<br />";

        $now = date('Y-m-d H:i:s');

    	//insert muna sa tbl_pet_library
    	$array_insert_library = array(
    		'title' => $title,
    		'article_image' => $image,
    		'article_status' => "Active",
    		'created_by' => $name, 
            'user_type' => $user_type,
            'user_id' => $user_id,
            'user_table_id' => $user_table_id, 
            'date_created' => $now,
    	);

    	$this->article_model->add_article($array_insert_library);
    	$library_id_last = $this->db->insert_id();


        //insert it on the list of possible symttomps
        $array_symptoms_data = array(
            
        );
        $this->article_model->add_symptoms($array_symptoms_data);

    	//insert tbl_library_content
    	$all_contents ="";
    	for($count =0;$count<count($this->input->post("content"));$count++){
    		//$this->input->post("content")[$count];
    		$array_insert_content = array(
    			'library_id' => $library_id_last,
    			'article_contents' =>$this->input->post("content")[$count],
    		);

    		$this->article_model->add_content($array_insert_content);
    		$all_contents .= $this->input->post("content")[$count].' ';
    	}




    	//insert tbl_library_links
    	for($count =0;$count<count($this->input->post("link"));$count++){
    		//$this->input->post("content")[$count];
    		$array_insert_links = array(
    			'library_id' => $library_id_last,
    			'web_link' =>$this->input->post("link")[$count],
    		);

    		$this->article_model->add_links($array_insert_links);
    		
    	}




    	$array_update_article_library = array(
    		'content' => $all_contents,
    	);

    	$this->article_model->update_article_library($library_id_last,$array_update_article_library);


    	$msg = "Article has been added to the library";
        echo json_encode(['code'=>200, 'msg'=>$msg]);
    	//echo $all_contents;
    }
    /*blic function all_article(){
    	$all_article = $this->article_model->get_all_articles()

    	foreach ($all_article as $articles) {
    		
    	}
    }*/




    public function add_related_article(){
        

        $all_contents ="";
        $article_title = $this->input->post("article_title");
        for($count =0;$count<count($this->input->post("related_library_id"));$count++){
            //$this->input->post("content")[$count];

            //search mo muna ung name bago i add
            $article_detail = $this->article_model->find_article_from_library_by_library_id($this->input->post("related_library_id")[$count]);
            foreach($article_detail as $article){
                $title = $article->title;
            }

            $array_insert_related_article = array(
                'library_id' => $this->input->post("library_id"),
                'related_library_id' =>$this->input->post("related_library_id")[$count],
                'title' => $title,
            );

            $this->article_model->add_related_article($array_insert_related_article);
           
            $name = $this->session->userdata('complete_name');
            $log_usertype =  $this->session->userdata('account_type');
            $log_userID = $this->session->userdata("user_id");
            $log_action = "Add Related article for  " . $article_title;
            
            $now = date('Y-m-d H:i:s');
            $logs = array(
                "log_user" => $name,
                "log_usertype" => $log_usertype,
                "log_userID" => $log_userID,
                "log_action" => $log_action,
                "log_date" => $now,
            );




          $this->admin_management->insert_new_log($logs);
        }        
    }



    public function change_status(){

    	echo $library_id = $this->input->post("library_id");
    	echo $status = $this->input->post("status");
    	$article_title = $this->input->post("article_title");

    	$data = array(
    		'article_status' => $status,

    	);

    	$this->article_model->update_article_library($library_id,$data);

    	

    	$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "Change Status of  article " . $article_title . " to " . $status;
		
		$now = date('Y-m-d H:i:s');
		$logs = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);



		$this->admin_management->insert_new_log($logs);


		$msg = "Article status has been updated";
        echo json_encode(['code'=>200, 'msg'=>$msg]);
    }




    public function update_article_content(){

    	$article_title = $this->input->post("article_title");
    	$content_id = $this->input->post("content_id");
    	$article_content =$this->input->post("article_content");



    	$update_content = array(
    		'article_contents' =>$article_content,
    	);

    	$this->article_model->update_article_content($content_id,$update_content);

    	$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "Update Content of  article " . $article_title;
		
		$now = date('Y-m-d H:i:s');
		$logs = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);




		$this->admin_management->insert_new_log($logs);

		$msg = "Article content has been updated";
        echo json_encode(['code'=>200, 'msg'=>$msg]);

    }


    public function update_article_image(){

    	$article_title = $this->input->post("article_title");
    	$library_id = $this->input->post("library_id");
    	$article_image =$this->input->post("article_image");




        //config for upload image \assets\images\profiles
        $config['upload_path']          = './assets/images/library/';
        //$config['upload_path']          = './uploads/';
        $config['allowed_types']        = 'gif|jpg|png|jpeg';
        //$config['max_size']             = 100;
        // $config['max_width']            = 1024;
        // $config['max_height']           = 768;
        $this->load->library('upload', $config);


        if($this->upload->do_upload('article_image')){
                //get the file name of the uploaded file
                $uploadData = $this->upload->data();
                $image = $uploadData['file_name'];
                //echo 1;
                echo "ivan";
                //pag may laman ung input type file ito un
        }else{
                    //echo 'wala laman';
                    //set the image name to the previously upload image
                   /* $default_image_name = $this->admin_management->get_admin_by_id($user_id_update);
                    foreach ($default_image_name as $default_image) {
                               $image = $default_image->profile; 
                    
                    }*/

         //pag wala laman.. kukunin ung previous na image
                    


                   //$image ='';
                             
                   echo 12;      
                   echo "dsds"; 


                   //check for errors
                  /* $error = array('error' => $this->upload->display_errors());

                    $this->load->view('file_view', $error);*/
        }



    	$update_image = array(
    		'article_image' =>$image,
    	);

    	$this->article_model->update_article_library($library_id,$update_image);

    	$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "Update Image of  article " . $article_title;
		
		$now = date('Y-m-d H:i:s');
		$logs = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);




		$this->admin_management->insert_new_log($logs);

		$msg = "Article image has been updated";
        echo json_encode(['code'=>200, 'msg'=>$msg]);

    }   



    


    public function add_article_content(){
    	$library_id = $this->input->post("library_id");
    	$article_content = $this->input->post("article_content");
    	$article_title = $this->input->post("article_title");


    	$add_article_content = array(
    		'library_id' => $library_id,
    		'article_contents' =>$article_content,
    	);

    	$this->article_model->add_content($add_article_content);

    	$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "Add Content of  article " . $article_title;
		
		$now = date('Y-m-d H:i:s');
		$logs = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);




		$this->admin_management->insert_new_log($logs);

		$msg = "Article content has been added";
        echo json_encode(['code'=>200, 'msg'=>$msg]);

    }


    /*public function add_related_article(){

        $library_id = $this->input->post("library_id");
        
        $article_title = $this->input->post("article_title");


        $add_article_content = array(
            'library_id' => $library_id,
            'article_contents' =>$article_content,
        );

        $this->article_model->add_content($add_article_content);

        $name = $this->session->userdata('complete_name');
        $log_usertype =  $this->session->userdata('account_type');
        $log_userID = $this->session->userdata("user_id");
        $log_action = "Add Content of  article " . $article_title;
        
        $now = date('Y-m-d H:i:s');
        $logs = array(
            "log_user" => $name,
            "log_usertype" => $log_usertype,
            "log_userID" => $log_userID,
            "log_action" => $log_action,
            "log_date" => $now,
        );




        $this->admin_management->insert_new_log($logs);

        $msg = "Article content has been added";
        echo json_encode(['code'=>200, 'msg'=>$msg]);
    }*/


    public function add_article_link(){
    	$library_id = $this->input->post("library_id");
    	$link = $this->input->post("link");
    	$article_title = $this->input->post("article_title");


    	$add_link = array(
    		'library_id' => $library_id,
    		'web_link' => $link,
    	);
    	
    	$this->article_model->add_links($add_link);

    	$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "Add Website Link of  article " . $article_title;
		
		$now = date('Y-m-d H:i:s');
		$logs = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);




		$this->admin_management->insert_new_log($logs);

		$msg = "Article link has been added";
        echo json_encode(['code'=>200, 'msg'=>$msg]);
    }




    public function remove_content(){

    	$content_id = $this->input->post("content_id");
    	$article_title = $this->input->post("article_title");

    	$this->article_model->delete_content($content_id);


    	$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "Remove Content of  article " . $article_title;
		
		$now = date('Y-m-d H:i:s');
		$logs = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);

		$this->admin_management->insert_new_log($logs);

		$msg = "Article content has been removed";
        echo json_encode(['code'=>200, 'msg'=>$msg]);

    }




    public function remove_link(){
    	$link_id = $this->input->post("link_id");
    	$article_title = $this->input->post("article_title");
    	
    	$this->article_model->delete_link($link_id);
    	

    	$name = $this->session->userdata('complete_name');
		$log_usertype =  $this->session->userdata('account_type');
		$log_userID = $this->session->userdata("user_id");
		$log_action = "Remove Link of  article " . $article_title;
		
		$now = date('Y-m-d H:i:s');
		$logs = array(
			"log_user" => $name,
			"log_usertype" => $log_usertype,
			"log_userID" => $log_userID,
			"log_action" => $log_action,
			"log_date" => $now,
		);

		$this->admin_management->insert_new_log($logs);

		$msg = "Article link has been removed";
        echo json_encode(['code'=>200, 'msg'=>$msg]);
    }
    


	







	

}
