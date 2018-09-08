<?php foreach($theme_color as $t_color){

  $skin_color = $t_color->theme_color;
  $settings_id =$t_color->settings_id;
  $aboutus_content =  $t_color->aboutus_content;
  $service_content = $t_color->service_content;

  $clinic_home_address = $t_color->clinic_home_address;
  $clinic_barangay_address = $t_color->clinic_barangay_address;
  $clinic_city_address = $t_color->clinic_city_address;

  $clinic_postal_id = $t_color->clinic_postal_id;

  $clinic_email_address = $t_color->clinic_email_address;
  
  $store_name = $t_color->store_name;

  $vet_fee = $t_color->vet_fee;

  $telephone = $t_color->telephone;
  $max_product_count = $t_color->max_product_count;
  $checkup_fee = $t_color->checkup_fee;


   $box_color = "";

    if($skin_color == "skin-green"){
      $box_color = "box-success";
    }else if($skin_color == "skin-blue"){
      $box_color = "box-primary";
    }else if($skin_color == "skin-red"){
      $box_color = "box-danger";
    }else if($skin_color == "skin-yellow"){
      $box_color = "box-warning";
    }

}?>

<!DOCTYPE html>
<html>

<?php $this->load->view('include_pages_admin/page_header');?>

<style type="text/css">
/* Top left text */
.top-left {
    position: absolute;
    top: 8px;
    left: 16px;
    background-color: rgba(255,255,255,0.5);
    color: black;
    padding-left: 20px;
    padding-right: 20px;
    width: 530px
}
</style>

<body class="hold-transition <?php echo $skin_color;?> sidebar-mini" id="settings">
<div class="wrapper">


  <?php $this->load->view('include_pages_admin/document_header');?>
 
  <?php $this->load->view('include_pages_admin/sidebar');?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Settings
        <small></small>
      </h1>
    
    </section>

    <!-- Main content -->
    <section class="content">


        <?php if ($this->session->flashdata('add_article_success')) { ?>

            <div class="alert alert-success display-success">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <p> <?php echo $this->session->flashdata('add_article_success'); ?> </p>
            </div>

          <?php }?>


          <?php if ($this->session->flashdata('update_settings_success')) { ?>

            <div class="alert alert-success display-success">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <p> <?php echo $this->session->flashdata('update_settings_success'); ?> </p>
            </div>

          <?php }?>




       




        <div class="row">
          <div class="col-lg-12 col-xs-12">
            <div class="box box-solid <?php echo $box_color;?>">
              <div class="box-header with-border">
                <h3 class="box-title">Theme Color Configuration</h3>
                 <div class="box-tools pull-right">
                    <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="">
                      <i class="fa fa-minus"></i></button>
                    
                  </div>
              </div>
              <!-- /.box-header -->
              <div class="box-body table-responsive">




                <form id="formColorTheme" enctype="multipart/form-data">
                   
                         <?php echo form_label('Theme Color', 'theme_color','class="control-label"');?>

                      <?php //option for  gender
                            $option = array(
                              
                                "skin-blue" => "Blue",
                                "skin-green" => "Green",
                                "skin-yellow" => "Yellow",
                                "skin-red" => "Red",
                                
                            );
                        ?>

                        <?php //parameters(attribute name , options,selected option,added attibute ex:class,required)?>
                               <?php echo form_dropdown('theme_color',$option,$skin_color,'class="form-control" required id = "theme_color"');?>
                     

                        <input type="hidden" name="settings_id" value="1" id="settings_id">

                        <br />
                        

                       
                </form>
              

              </div>
              <!-- ./box-body -->
              <div class="box-footer">
              
              </div>
              <!-- /.box-footer -->
            </div>
            <!-- /.box -->
          </div>
        </div>


         <!-- ajax bae -->
         <div class="alert alert-success display-success" style="display: none">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
             <div class="success-message"></div> 
          </div>


          <div class="alert alert-danger display-error" style="display: none">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
             <h4><i class="icon fa fa-ban"></i>Please Fix the following errors:</h4>
            <div class="danger-message"></div> 
          </div>


          <div class="row">
            <div class="col-lg-12 col-xs-12">
              <div class="box box-solid <?php echo $box_color;?>">
                <div class="box-header with-border">
                  <h3 class="box-title">Clinic Information</h3>
                   <div class="box-tools pull-right">
                      <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="">
                        <i class="fa fa-minus"></i></button>
                      
                    </div>
                </div>
                <!-- /.box-header -->
                <div class="box-body table-responsive">




                  <form action="" method="POST" id="formStoreInformation" enctype="multipart/form-data">
                     

                      <?php echo form_label('Clinic Name', 'store_name','class="control-label"');?>

                        <input type="text" id="store_name" name="store_name" class="form-control" value="<?php echo $store_name;?>">

                      <br />


                      <?php echo form_label('Home Address', 'clinic_home_address','class="control-label"');?>

                        <input type="text" id="clinic_home_address" name="clinic_home_address" class="form-control" value="<?php echo $clinic_home_address;?>">

                        <br />


                        <?php echo form_label('Barangay Address', 'clinic_barangay_address','class="control-label"');?>

                        <input type="text" id="clinic_barangay_address" name="clinic_barangay_address" class="form-control" value="<?php echo $clinic_barangay_address;?>">
                    
                        <br>

                        <?php echo form_label('City Address Address', 'clinic_city_address','class="control-label"');?>

                        <input type="text" id="clinic_city_address" name="clinic_city_address" class="form-control " value="<?php echo $clinic_city_address;?>">
                    
                        <br>

                        <?php echo form_label('Postal ID', 'clinic_postal_id','class="control-label"');?>

                        <input type="text" name="clinic_postal_id" id="clinic_postal_id" class="form-control" value="<?php echo $clinic_postal_id;?>">
                    
                        <br>


                        <?php echo form_label('Email Address', 'clinic_email_address','class="control-label"');?>

                        <input type="email" name="clinic_email_address" id="clinic_email_address" class="form-control" value="<?php echo $clinic_email_address;?>">

                        <br />


                        <?php echo form_label('Telephone Number', 'telephone','class="control-label"');?>

                        <input type="text" name="telephone" id="telephone" class="form-control" value="<?php echo $telephone;?>">

                        <br />



                        <?php echo form_label('Veterinary Service Fee', 'vet_fee','class="control-label"');?>

                        <input type="number" id="vet_fee" name="vet_fee" class="form-control" value="<?php echo $vet_fee;?>">


                        <br >


                        <?php echo form_label('Checkup Fee', 'checkup_fee','class="control-label"');?>

                        <input type="number" id="checkup_fee" name="checkup_fee" class="form-control" value="<?php echo $checkup_fee;?>">


                        <br >

                        <?php echo form_label('Maximum Product Count', 'max_product_count','class="control-label"');?>

                        <input type="number" id="max_product_count" name="max_product_count" class="form-control" value="<?php echo $max_product_count;?>">
                       

                          <input type="hidden" name="settings_id" value="1" id="settings_id">

                          <br />
                          <input type="submit" name="btn_address_changer" value="Save" class="btn btn-sm btn-flat btn-primary pull-right">

                  </form>
                

                </div>
                <!-- ./box-body -->
                <div class="box-footer">
                
                </div>
                <!-- /.box-footer -->
              </div>
              <!-- /.box -->
            </div>
          </div>




            <!-- ajax bae -->
         <div class="alert alert-success display-success_about_us" style="display: none">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
             <div class="success-message_about_us"></div> 
          </div>


          <div class="alert alert-danger display-error_about_us" style="display: none">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
             <h4><i class="icon fa fa-ban"></i>Please Fix the following errors:</h4>
            <div class="danger-message_about_us"></div> 
          </div>


          <div class="row">
            <div class="col-lg-12 col-xs-12">
              <div class="box box-solid <?php echo $box_color;?>">
                <div class="box-header with-border">
                  <h3 class="box-title">Content Section</h3>
                   <div class="box-tools pull-right">
                      <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="">
                        <i class="fa fa-minus"></i></button>
                      
                    </div>
                </div>
                <!-- /.box-header -->
                <div class="box-body table-responsive">




                  <form method="POST" id="formContentSection" enctype="multipart/form-data">
                     
                      <?php echo form_label('About Section', 'aboutus_content','class="control-label"');?>

                         <textarea class="form-control textareas" id ="aboutus_content" name="aboutus_content" cols="6" rows="8"><?php echo $aboutus_content;?></textarea>
                 


                 <hr>

                  <?php echo form_label('Service Section', 'service_content','class="control-label"');?>

                         <textarea class="form-control textareas" id ="service_content" name="service_content" cols="6" rows="8"><?php echo $service_content;?></textarea>
                 
                       

                          <input type="hidden" name="settings_id" value="1" id="settings_id">

                          <br />



                     <input type="submit" name="save_about_us" id="save_about_us" value="Save" class="btn btn-sm btn-flat btn-primary pull-right">

                         
                  </form>
                

                </div>
                <!-- ./box-body -->
                <div class="box-footer">
                
                </div>
                <!-- /.box-footer -->
              </div>
              <!-- /.box -->
            </div>
          </div>






          <div class="row">
            <div class="col-lg-12 col-xs-12">
              <div class="box box-solid <?php echo $box_color;?>">
                <div class="box-header with-border">
                  <h3 class="box-title">Banner Section</h3>
                   <div class="box-tools pull-right">
                     <button type="button" data-toggle="modal" class="btn btn-box-tool" data-target="#addBanner"><i class="fa fa-file-picture-o"></i></button>
                      <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="">
                        <i class="fa fa-minus"></i></button>
                     
                    </div>
                </div>
                <!-- /.box-header -->
                <div class="box-body ">

         <div class="alert alert-success display-success-delete-banner" style="display: none">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
             <div class="success-message-delete-banner"></div> 
          </div>

                  <div class="row banner-data" >
                      <div class="col-xs-12 col-md-12 col-lg-12">

                        <?php
                           // for carousel slides only
                            $connect = mysqli_connect("localhost", "root", "", "vetopia_db");
                            function make_query($connect)
                            {
                             $query = "SELECT * FROM tbl_bannerimages ORDER BY bannerimage_id ASC";
                             $result = mysqli_query($connect, $query);
                             return $result;
                            }

                            function make_slide_indicators($connect)
                            {
                             $output = ''; 
                             $count = 0;
                             $result = make_query($connect);
                             while($row = mysqli_fetch_array($result))
                             {
                              if($count == 0)
                              {
                               $output .= '
                               <li data-target="#dynamic_slide_show" data-slide-to="'.$count.'" class="active"></li>
                               ';
                              }
                              else
                              {
                               $output .= '
                               <li data-target="#dynamic_slide_show" data-slide-to="'.$count.'"></li>
                               ';
                              }
                              $count = $count + 1;
                             }
                             return $output;
                            }

                            function make_slides($connect)
                            {
                             $output = '';
                             $count = 0;
                             $result = make_query($connect);
                             while($row = mysqli_fetch_array($result))
                             {
                              if($count == 0)
                              {
                               $output .= '<div class="item active">';
                              }
                              else
                              {
                               $output .= '<div class="item" >';
                              }
                              $output .= '


                               <img src= "'.site_url().'assets/images/site_images/'.$row["banner_image"].'" alt="'.$row["banner_caption_heading"].'" />
                               <div class="top-left" >
                                <h2>'.$row["banner_caption_heading"].'</h2>
                                '.$row["banner_caption"].'
                                <br />
                              <button type="button" class="btn btn-outline-light btn-lg btn-banner-remove pull-right" id="'.$row["bannerimage_id"].'" style="margin-top:10px;margin-bottom:15px">Delete Banner</button>

                              
                                  <!-- /.modal -->
                               </div>
                              </div>
                              ';
                              $count = $count + 1;
                             }
                             return $output;
                            }
                            //  <h2>'.$row["banner_caption_heading"].'</h2>
                            //    <h3>'.$row["banner_caption"].'</h3>
                            ?>
                          

                           <div class="carousel slide" data-ride="carousel" id="dynamic_slide_show">


                            <ol class="carousel-indicators">
                                <?php echo make_slide_indicators($connect); ?>
                            </ol>

                                <div class="carousel-inner">
                               <?php echo make_slides($connect); ?>
                              </div>


                              <a class="left carousel-control" href="#dynamic_slide_show" role="button" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                              </a>

                                <a class="right carousel-control" href="#dynamic_slide_show" role="button" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                              </a>
                           </div>


                      </div>
                  </div>

                </div>
                <!-- ./box-body -->
                <div class="box-footer">
                
                </div>
                <!-- /.box-footer -->
              </div>
              <!-- /.box -->
            </div>
          </div>





   

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
  
    </div>
    <strong>Copyright &copy; <?php echo date('Y');?>  All rights
    reserved.
  </footer>



  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->


<!--modals -->
<?php $this->load->view('include_pages_admin/add_banner');?>

<!--page scripts -->


<!-- footer scripts -->

<script src="<?php echo site_url();?>assets/dist/js/generalscripts.js"></script>



<!-- page script -->
<script>

  $(function(){


    //refresh after 2 seconds
    function reload(){
     
      setTimeout(function(){ 
         
          $(".display-success").fadeOut("fast");
          location.reload();
           }, 2000);
    }


    $("#formStoreInformation").submit(function(event){
      event.preventDefault();

      //var formdata  = new FormData(this);
      //alert(formdata);
      //$("#formStoreInformation").serialize()


      var formData = new FormData(this);
      $.ajax({
        method : 'POST',
        url: '<?php echo site_url()?>settings/change_store_information',
        data: formData,
        dataType: 'json',
        contentType: false,
        cache: false,
        processData:false,
        success:function(data){
          if(data.code == 200){
            $(".display-success").css("display","block");
            $(".display-error").css("display","none");
            $(".success-message").html("<p>"+ data.msg +" </p>");
            reload();

          }else{  
            $(".danger-message").html("<ul>" + data.msg + "</ul>");
            $(".display-error").css("display","block");
            $(".display-success").css("display","none");
          }
        },
      });
    });



    $("#formContentSection").on("submit",function(event){

      event.preventDefault();

      var formData2 = new FormData(this);
      //alert(formData2);
      $.ajax({
        method : 'POST',
        url: '<?php echo site_url()?>settings/aboutus_content_changer',
        data: formData2,
        //dataType: 'json',
        contentType: false,
        cache: false,
        processData:false,
        success:function(data){
          /*if(data.code == 200){
            $(".display-success_about_us").css("display","block");
            $(".display-error_about_us").css("display","none");
            $(".success-message_about_us").html("<p>"+ data.msg +" </p>");
            reload();

          }else{  
            $(".danger-message_about_us").html("<ul>" + data.msg + "</ul>");
            $(".display-error_about_us").css("display","block");
            $(".display-success_about_us").css("display","none");
          }
          */

          $(".display-success_about_us").css("display","block");
          $(".display-error_about_us").css("display","none");
          $(".success-message_about_us").html("<p>Content section has been updated successfully</p>");
          reload(); 
        console.log("vvasads");
        },
      });


    });
   
    //ayaw gumana ng success function sa formcontent manual na gawin natin
  /*  $("#save_about_us").on("click",function(event){
      //alert("naclick");

      var aboutus_content = $("#aboutus_content").val();

      if (aboutus_content == "") {
        $(".danger-message_about_us").html("<ul><li>About us content cannot be blank</li></ul>");
            $(".display-error_about_us").css("display","block");
            $(".display-success_about_us").css("display","none");
      }else{
          $(".display-success_about_us").css("display","block");
            $(".display-error_about_us").css("display","none");
          $(".success-message_about_us").html("<p>About us content has been updated successfully </p>");
        reload();
      }
      
    });*/

    $("#theme_color").on("change", function(event){
      event.preventDefault();


      var theme_color = $(this).val();
      var settings_id = 1;
      var data_skin = $(this).data("skin");

      //var datas = {theme_colors: theme_color, settings_id :settings_id};
      //alert(data_skin);


      $.ajax({
        method : "POST",
        url: "<?php echo site_url()?>settings/change_theme_color_ajax",
        data : {theme_color: theme_color, settings_id :settings_id},
        dataType : "json",
       
        success:function(data){
          if(data.code == 200){
            /*$(".display-success").css("display","block");
            $(".display-error").css("display","none");
            $(".success-message").html("<p>"+ data.msg +" </p>");*/
            location.reload();

          }else{  
            $(".danger-message").html("<ul>" + data.msg + "</ul>");
            $(".display-error").css("display","block");
            $(".display-success").css("display","none");
          }
        },

      });


    });




    //$('.banner-data').load("<?php echo site_url('settings/show_banner');?>");



    $(document).on('click','.btn-banner-remove',function(){

      var bannerimage_id = $(this).attr("id"); 

      $.ajax({
          url:"<?php echo site_url()?>settings/delete_banner",
          method:"POST",
          data:{bannerimage_id:bannerimage_id},
          success:function(data)
          {
            //$('#alert_action').fadeIn().html('<div class="alert alert-info">'+data+'</div>');
            //orderdataTable.ajax.reload();
            /*$('.confirmation_content').css("display","none");
            $(".display-success_remove_banner").css("display","block");
            $(".success-success_remove_banner").html("<p>Banner Image has been removed</p>");
            $('.remove-banner').attr('disabled',true);*/
             $(".display-success-delete-banner").css("display","block");
                
             $(".success-message-delete-banner").html("<p>Banner has been deleted successfully </p>");
            //alert('delete na');
            reload();
          }
      });

    });
  });

</script>

</body>
</html>
