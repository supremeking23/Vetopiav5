<!DOCTYPE html>
<html>

<?php $this->load->view('include_pages_customer/page_header');?>

<body class="hold-transition skin-blue sidebar-mini" id="products">
<div class="wrapper">


  <?php $this->load->view('include_pages_customer/document_header');?>
 
  <?php $this->load->view('include_pages_customer/sidebar');?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Products
        
      </h1>
    
    </section>

    <!-- Main content -->
    <section class="content">
   
        <div class="row">
          <div class="col-md-4">
            <button class="btn btn-flat btn-success  btn-block">Featured</button>
          </div>
          <div class="col-md-4">
            <button class="btn btn-flat btn-warning  btn-block">For Dogs</button>
          </div>

          <div class="col-md-4">
            <button class="btn btn-flat btn-danger  btn-block">For Cat</button>
          </div>
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
<?php $this->load->view('include_pages_customer/modals');?>

<!--page scripts -->


<!-- footer scripts -->

<script src="<?php echo site_url();?>assets/dist/js/generalscripts.js"></script>

<!-- page script -->
<script>

</script>


</body>
</html>
