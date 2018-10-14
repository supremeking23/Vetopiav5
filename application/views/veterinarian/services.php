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

<?php $this->load->view('include_pages_vets/page_header');?>

<body class="hold-transition <?php echo $skin_color;?> sidebar-mini" id="services">
<div class="wrapper">


  <?php $this->load->view('include_pages_vets/document_header');?>
 
  <?php $this->load->view('include_pages_vets/sidebar');?>
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
                    <table  class="datatablesservices table table-bordered table-striped">
                          <thead>
                          <tr>
                            
                            <th>Service Name</th>
                            <th>For Pets</th>
                            <th>Description</th>
                            <th>Fee</th>
                            
                          </tr>
                          </thead>
                          <tbody>
                          
                          <?php foreach($get_all_pet_services_active as $pet_services):?>
                          <tr>

                            <td><?php echo $pet_services->service_name;?></td>
                            <td><?php echo ucfirst( $pet_services->for_what_pet);?> <br /> <?php echo ucfirst($pet_services->for_pet_ages);?></td>
                            <td><?php //echo $pet_services->service_description;?>
                             <!-- <a role="button" tabindex="0" class="btn btn-info btn-sm btn-flat"
                              data-popover="popover"
                              data-container="body"
                              data-placement="bottom"
                              data-title="<?php echo $pet_services->service_name;?>"
                              data-content="<?php echo htmlentities($pet_services->service_description);?>"
                              >View Details</a> -->

                              <button type="button" data-toggle="modal" data-target="#serviceDetail<?php echo $pet_services->service_id;?>" class="btn btn-sm btn-flat btn-info" style="border-radius: 15px">View Detail</button>
                             
                              <div class="modal fade" id="serviceDetail<?php echo $pet_services->service_id;?>">
                                <div class="modal-dialog">
                                  <div class="modal-content" style="border-radius: 15px">
                                    <div class="modal-header">
                                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span></button>
                                      <h4 class="modal-title"><?php echo ucfirst($pet_services->service_name);?></h4>
                                    </div>
                                    <div class="modal-body">
                                      <div class="row">
                                        <div class="col-md-12">
                                          <?php echo $pet_services->service_description;?>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="modal-footer">
                                     
                                    </div>
                                  </div>
                                  <!-- /.modal-content -->
                                </div>
                                <!-- /.modal-dialog -->
                              </div>
                              <!-- /.modal -->                              
                            </td>
                            <td>₱ <?php echo $pet_services->service_fee;?></td>



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
