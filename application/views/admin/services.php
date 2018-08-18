<?php foreach($theme_color as $t_color){

    $skin_color = $t_color->theme_color;
    $settings_id =$t_color->settings_id;

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


  }

?>

<!DOCTYPE html>
<html>

<?php $this->load->view('include_pages_admin/page_header');?>

<body class="hold-transition <?php echo $skin_color;?> sidebar-mini" id="services">
<div class="wrapper">


  <?php $this->load->view('include_pages_admin/document_header');?>
 
  <?php $this->load->view('include_pages_admin/sidebar');?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       Pet Services 
      </h1>
    
    </section>

    <!-- Main content -->
    <section class="content">




      <div class="row">
        <div class="col-md-12">

          <?php if($this->session->userdata('account_type') == "Super Admin"):?>

          <button class="btn btn-flat btn-info btn-sm" data-toggle="modal" data-target="#addService">Add New Service</button>

        <?php endif;?>
      </div>
        <!-- /.col -->
      </div>



      <br />

      <div class="alert alert-success display-success_change_status" style="display: none">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
         <div class="success-message_change_status"></div> 
      </div>                  


      <br /> 


       
            <!-- /.row -->
      <div class="row">
        <div class="col-md-12">
           <div class="box <?php echo $box_color;?> box-solid">
              <div class="box-header with-border">
                <h3 class="box-title"></h3>

                <div class="box-tools pull-right">
                  <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="">
                    <i class="fa fa-minus"></i></button>
                  
                </div>
              </div>
              <div class="box-body table-responsive">
                    <table  class="datatables table table-bordered table-striped">
                          <thead>
                          <tr>
                            <th>Service Status</th>
                            <th>Service Name</th>
                            <th>For Pets</th>
                            <th>Description</th>
                            <th>Fee</th>
                            <th>Action</th>
                          </tr>
                          </thead>
                          <tbody>
                          
                          <?php foreach($get_all_pet_services as $pet_services):?>
                          <tr>
                            <td>
                                <div class="row">
                                  <div class="form-group">
                                      <div class="col-sm-6">
                                        <div class="checkbox">
                                          <label class="switch">

                                            <input type="checkbox" class="status_changer" data-serviceid="<?php echo $pet_services->service_id;?>" data-status="<?php echo $pet_services->service_status?>" data-servicename="<?php echo $pet_services->service_name;?>" <?php echo ($pet_services->service_status == "Active") ?  "checked": ""; ?> > 
                                            <span class="slider round"></span>
                                          </label>
                                        </div>
                                      </div>    
                                  </div>
                                </div>                              
                            </td>
                            <td><?php echo $pet_services->service_name;?></td>
                            <td><?php echo ucfirst( $pet_services->for_what_pet);?> <br /> <?php echo ucfirst($pet_services->for_pet_ages);?></td>
                            <td><?php echo $pet_services->service_description;?></td>
                            <td>₱ <?php echo $pet_services->service_fee;?></td>
                            <td><button type="button" class="btn btn-flat btn-sm btn-primary" data-toggle="modal" data-target="#editServiceDetail<?php echo $pet_services->service_id;?>">Edit Detail</button></td>

                            <div class="modal fade" id="editServiceDetail<?php echo $pet_services->service_id;?>">
                                <div class="modal-dialog">
                                  <div class="modal-content">
                                    <div class="modal-header">
                                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span></button>
                                      <h4 class="modal-title">Edit Details</h4>
                                    </div>
                                     <?php echo form_open_multipart('','id="formEditServiceDetail"');?>

                                        <div class="modal-body">

                                          <div class="alert alert-success display-success_edit_service_detail" style="display: none">
                                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                             <div class="success-message_edit_service_detail"></div> 
                                          </div>                  


                                          <br />

                                          
                                            <div class="row">
                                                  <div class="col-md-12">
                                                 
                                                      <?php 

                                                      echo form_label('Service Name', 'service_name','class="control-label"');
                                                      ?>

                                                      <?php 
                                                        $data = array(
                                                                'name'          => 'service_name',
                                                                'id'            => 'service_name',
                                                                'value'         => $pet_services->service_name,
                                                                //'minlength'     => '2',
                                                                'size'          => '',
                                                                'required'      => 'required',
                                                                'class'         => 'form-control',
                                                                
                                                        );

                                                        echo form_input($data);
                                                      ?>      


                                                 </div>   
                                            </div>

                                            <br />
                                            
                                            <div class="row">
                                                  <div class="col-md-12">
                                                 
                                                      <?php 

                                                      echo form_label('Service For', 'for_what_pet','class="control-label"');
                                                      ?>


                                                    <select class="form-control" name="for_what_pet" id="for_what_pet" required="">
                                                      <?php foreach($all_pettype as $ap):?>
                                                          <option value="<?php echo $ap->pettype_code;?>" <?php if($ap->pettype_code == $pet_services->for_what_pet){echo "selected";} ?>><?php echo $ap->pettype;?></option>
                                                      <?php endforeach;?>
                                                    </select> 
                                                 </div>   
                                            </div>
                                            <br />




                                            <div class="row">
                                                  <div class="col-md-12">
                                                 
                                                      <?php 

                                                      echo form_label('For Ages', 'for_pet_ages','class="control-label"');
                                                      ?>


                                                  <?php //option for  gender
                                                      $option = array(
                                                          
                                                          "adult (1 year old and above)" => "Adult (1 year old and above)",
                                                          "young adult (11 months old and below)" => "Young Adult (11 months old and below)",
                                                          
                                                      );
                                                  ?>

                                                  <?php echo form_dropdown('for_pet_ages',$option,$pet_services->for_pet_ages,'class="form-control" required id="for_pet_ages"');?>

           
                                                 </div>   
                                            </div>
                                            <br />



                                            <div class="row">
                                                  <div class="col-md-12">
                                                 
                                                      <?php 

                                                      echo form_label('Service Description', 'service_description','class="control-label"');
                                                      ?>

                                                     <textarea class="form-control textareas" name="service_description"><?php echo $pet_services->service_description;?></textarea>


                                                 </div>   
                                            </div>

                                            <br />



                                             <div class="row">
                                                  <div class="col-md-12">
                                                 
                                                      <?php 

                                                      echo form_label('Service Fee', 'service_fee','class="control-label"');
                                                      ?>

                                                    <input type="number" id="service_fee" name="service_fee" value="<?php echo $pet_services->service_fee;?>" class="form-control">


                                                 </div>   
                                            </div>

                                            <br />


                                           
                                          <input type="hidden" id="service_id" name="service_id" value="<?php echo $pet_services->service_id;?>">

                                        </div>
                                        <div class="modal-footer">
                                          <button type="button" class="btn btn-default pull-left" data-dismiss="modal" >Close</button>
                                          <?php 

                                             $data = array(
                                              'name' => 'submit',
                                              'value' => 'Save',
                                              'id' => 'edit_service_btn',
                                              'class' => 'btn btn-primary edit',
                                            );
                                            echo form_submit($data);?>


                                        </div>
                                    
                                    </form>  
                                  </div>
                                  <!-- /.modal-content -->
                                </div>
                                <!-- /.modal-dialog -->
                            </div>
                              <!-- /.modal -->

                          </tr>
                        <?php endforeach;?>
                          </tbody>
                         
                    </table>
              </div>
              <!-- /.box-body -->
              <div class="box-footer">
               
              </div>
              <!-- /.box-footer-->
           </div>
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
<?php $this->load->view('include_pages_admin/add_new_service_modal');?>

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


    $('.status_changer').on("change",function(){
     
      var status    = $(this).data("status");
      var service_id = $(this).data("serviceid");
      var service_name = $(this).data("servicename");

      var new_status = "";
      if(status == "Active"){
          new_status = "Inactive";
      }else{
          new_status = "Active";
      }
      //alert('status is ' + libraryid);
      $.ajax({
          url : "<?php echo site_url('pet_management/change_status_service');?>",
          method : "POST",

          data : {service_id: service_id,status:new_status,service_name:service_name},
          success: function(data){
             $(".display-success_change_status").css("display","block");
             $(".success-message_change_status").html("<p>Service " +service_name + " status has been updated to "+ new_status  +"</p>");
             reload();
          }
      });
    });


    //not use... di ko alam kung bakit
    //$("#formEditServiceDetail").on("submit",function(event){
    $(document).on('submit', '#formEditServiceDetail', function(event){
      event.preventDefault();

      var formData = new FormData(this);
      console.log(formData);
      $.ajax({
        method : 'POST',
        url: '<?php echo site_url()?>pet_management/edit_service_detail',
        data: formData,
        //dataType: 'json',
        contentType: false,
        cache: false,
        processData:false,
        success:function(data){
            $('#formEditServiceDetail')[0].reset();
            $('.edit').attr('disabled', true);
            $(".display-success_edit_service_detail").css("display","block");
            $(".success-message_edit_service_detail").html("<p>Pet Service detail has been updated successfully</p>");
            reload();
        },
      });
      
    });

  });
</script>


</body>
</html>
