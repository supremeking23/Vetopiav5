<?php foreach($theme_color as $t_color){

  $skin_color = $t_color->theme_color;
  $settings_id =$t_color->settings_id;

}?>

<!DOCTYPE html>
<html>

<?php $this->load->view('include_pages_customer/page_header');?>
<style type="text/css">
  a {
    padding-left: 5px;
    padding-right: 5px;
    margin-left: 5px;
    margin-right: 5px;
  }
</style>

<body class="hold-transition <?php echo $skin_color;?> sidebar-mini" id="pethealthlibrary">
<div class="wrapper">


  <?php $this->load->view('include_pages_customer/document_header');?>
 
  <?php $this->load->view('include_pages_customer/sidebar');?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       Pet Health Library
        <small>Subject</small>
      </h1>
    
    </section>

    <!-- Main content -->
    <section class="content">
   
    
      <div class="row">
        <div class="col-md-12">
          img
        </div>
      </div>


      <div class="div">
          <div class="col-md-12">
            Detail
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


<!--page scripts -->


<!-- footer scripts -->

<script src="<?php echo site_url();?>assets/dist/js/generalscripts.js"></script>

<!-- page script -->
<script>

  

     

</script>


</body>
</html>
