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

<body class="hold-transition <?php echo $skin_color;?>  sidebar-mini" id="mypet">
<div class="wrapper">


  <?php $this->load->view('include_pages_customer/document_header');?>
 
  <?php $this->load->view('include_pages_customer/sidebar');?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        My Pets
        
      </h1>
    
    </section>

    <!-- Main content -->
    <section class="content">
   

      <div class="row">
        
        <?php foreach($customers_pet as $c_pets):?>


          <div class="col-xs-12 col-md-6 col-lg-4">
              
                      <div class="box <?php echo $box_color?> box-solid">
                            <div class="box-header with-border">
                              <h3 class="box-title text-center"><?php echo $c_pets->petname?></h3>

                            </div>
                            <div class="box-body">
                              <?php if(empty($c_pets->pet_profile)){?>


                                <img src="<?php echo site_url()?>assets/images/pets/stock-vector-paw-print-205756207.jpg" class="img-responsive" >

                              <?php }else{ ?>


                                <img src="<?php echo site_url()?>assets/images/pets/<?php echo $c_pets->pet_profile;?>" class="img-responsive" width="400px" height="100px">

                              <?php }?>
                            </div>
                            <!-- /.box-body -->
                            <div class="box-footer">
                              <a href="<?php echo site_url()?>customer/pet_details/<?php echo $c_pets->pet_table_id;?>" class="btn btn-flat btn-sm btn-primary btn-block">View Details</a>
                            </div>
                            <!-- /.box-footer-->
                      </div>

           </div>
      

        <?php endforeach;?>

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

    var check_status = document.querySelector('#check_status').addEventListener('click',function(){
         alert('ivan');
    });


     

</script>


</body>
</html>
