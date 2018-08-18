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


}?>

<!DOCTYPE html>
<html>

<?php $this->load->view('include_pages_admin/page_header');?>

<body class="hold-transition <?php echo $skin_color;?> sidebar-mini" id="staff">
<div class="wrapper">


  <?php $this->load->view('include_pages_admin/document_header');?>
 
  <?php $this->load->view('include_pages_admin/sidebar');?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
         Staff 
      </h1>
    
    </section>

    <!-- Main content -->
    <section class="content">

      <div class="row">
        <div class="col-md-12">
         
          <button class="btn btn-flat btn-info btn-sm" data-toggle="modal" data-target="#addStaff">Add New Staff</button>
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->


      <br /> 
      <!-- messages-->
      <div class="row">
          <div class="col-md-12">

            

             
            

           <?php if ($this->session->flashdata('add_staff_success')) { ?>

            <div class="alert alert-success display-success">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <p> <?php echo $this->session->flashdata('add_staff_success'); ?> </p>
            </div>

          <?php }?>


            <div class="alert alert-success display-success_change_status_staff" style="display: none">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
               <div class="success-message_change_status_staff"></div>
            </div> 






          </div>
      </div>
     

        <div class="row">
          <div class="col-md-12">
            
            <div class="box <?php echo $box_color;?> box-solid">
            <div class="box-header with-border">
              <h3 class="box-title">Staff</h3>

              
            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive">

              <table  class="datatables table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Staff Status</th>
                  <th>User ID</th>
                  <th>Name</th>
                  <th>Contact Number</th>
                  <th>Action</th>
                </tr>
                </thead>
                <tbody>
                

                  <?php foreach($all_staff as $staffs):?>

                  <tr>
                     <td>
                          <div class="row">
                            <div class="form-group">
                                <div class="col-sm-6">
                                  <div class="checkbox">
                                    <label class="switch">

                                      <input type="checkbox" class="status_changer" data-stafftableid="<?php echo $staffs->staff_table_id;?>" data-staffid="<?php echo $staffs->staff_id;?>" data-status="<?php echo $staffs->staff_status?>" data-staffname=" <?php echo $staffs->firstname .' '. $staffs->middlename .' '. $staffs->lastname;?>" <?php echo ($staffs->staff_status == "Active") ?  "checked": ""; ?> > 
                                      <span class="slider round"></span>
                                    </label>
                                  </div>
                                </div>    
                            </div>
                          </div>   
                    </td>
                    <td><?php echo $staffs->staff_id;?></td>
                    <td>
                      <?php echo $staffs->firstname .' '. $staffs->middlename .' '. $staffs->lastname;?>
                    </td>
                    <td><?php echo $staffs->contact;?></td>
                   
                    <td>
                    <a href="<?php echo site_url()?>admin/staff_details/<?php echo $staffs->staff_table_id;?>"   class="btn btn-sm btn-flat btn-info">View Full Detail</a>
                      
                    </td>
               </tr>





             <?php endforeach;?>

                </tbody>
               
              </table>


            </div>
            <!-- ./box-body -->
            <div class="box-footer">
            
            </div>
            <!-- /.box-footer -->
          </div>
          <!-- /.box -->

          </div>
        <!-- /.col -->
      </div>


     
   

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Beta Version</b> 
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
<?php $this->load->view('include_pages_admin/add_staff_modal');?>

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
      var staff_table_id = $(this).data("stafftableid");
      var staff_name = $(this).data("staffname");
      var staff_id  = $(this).data("staffid");
      var new_status = "";
      if(status == "Active"){
          new_status = "Inactive";
      }else{
          new_status = "Active";
      }
      //alert('status is ' + libraryid);
      $.ajax({
          url : "<?php echo site_url('user_management/change_status_staff');?>",
          method : "POST",

          data : {staff_table_id: staff_table_id,staff_id: staff_id, status:new_status,staff_name:staff_name},
          success: function(data){
             $(".display-success_change_status_staff").css("display","block");
             $(".success-message_change_status_staff").html("<p>Staff " +staff_name + " status has been updated to "+ new_status  +"</p>");
             reload();
          }
      });
    });  
  });
      
</script>

</body>
</html>
