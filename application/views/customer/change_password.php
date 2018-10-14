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

<?php $this->load->view('include_pages_customer/page_header');?>

<body class="hold-transition <?php echo $skin_color;?> sidebar-mini sidebar-collapse" id="pos">
<div class="wrapper">


  <?php $this->load->view('include_pages_customer/document_header');?>
 
  <?php $this->load->view('include_pages_customer/sidebar');?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       Change Password
        
      </h1>
    
    </section>

    <!-- Main content -->
    <section class="content">


   <?php if ($this->session->flashdata('update_customer_password')) { ?>

      <div class="alert alert-success display-success">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
          <p> <?php echo $this->session->flashdata('update_customer_password'); ?> </p>
      </div>

     <?php }?>



    <?php if ($this->session->flashdata('update_customer_password_mismatched')) { ?>

      <div class="alert alert-danger display-danger">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
          <p> <?php echo $this->session->flashdata('update_customer_password_mismatched'); ?> </p>
      </div>

     <?php }?>


    <?php if ($this->session->flashdata('update_customer_password_failed')) { ?>

      <div class="alert alert-danger display-danger">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
          <p> <?php echo $this->session->flashdata('update_customer_password_failed'); ?> </p>
      </div>

     <?php }?>


      <br />
      <div class="row">
        <div class="col-md-12">
          <div class="box box-solid <?php echo $box_color;?>">
            <div class="box-header with-border">
              <h3 class="box-title"></h3>


            </div>
            <!-- /.box-header -->
            <div class="box-body ">

              <?php echo form_open_multipart('user_management/change_password_customer','id="change_password"');?>
                  
                     <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Old Password', 'old_password','class="control-label"');
                              ?>



                              <input type="password" name="old_password" id="old_password" class="form-control" required="" style="border-radius: 15px">
                         </div>   
                    </div>
                    <br />
                     <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('New Password', 'new_password','class="control-label"');
                              ?>



                              <input type="password" name="new_password" id="new_password" class="form-control" required="" style="border-radius: 15px">
                         </div>   
                    </div>
                    <br />
                    
                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Confirm Password', 'confirm_password','class="control-label"');
                              ?>



                              <input type="password" name="confirm_password" id="confirm_password" class="form-control" required="" style="border-radius: 15px">
                         </div>   
                    </div>
                    <br />

                    <input type="submit" name="change_password" id="change_password" value="Save" class="pull-left btn btn-danger btn-sm btn-flat" style="border-radius: 15px">
             </form>

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
<?php $this->load->view('include_pages_staff/modals');?>

<!--page scripts -->


<!-- footer scripts -->

<script src="<?php echo site_url();?>assets/dist/js/generalscripts.js"></script>
<!-- page script -->
<script>

$(function(){


});

</script>


</body>
</html>
