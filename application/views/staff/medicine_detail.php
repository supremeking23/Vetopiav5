<?php foreach($theme_color as $t_color){

  $skin_color = $t_color->theme_color;
  $settings_id =$t_color->settings_id;

}?>

<!DOCTYPE html>
<html>

<?php $this->load->view('include_pages_admin/page_header');?>

<body class="hold-transition <?php echo $skin_color;?> sidebar-mini" id="medicine">
<div class="wrapper">


  <?php $this->load->view('include_pages_admin/document_header');?>
 
  <?php $this->load->view('include_pages_admin/sidebar');?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Product Information Section
        
      </h1>
    
    </section>

    <!-- Main content -->
    <section class="content">


               <!-- messages-->
      <div class="row">
          <div class="col-md-12">



             <?php if ($this->session->flashdata('update_product_success')) { ?>

                <div class="alert alert-success display-success">
                  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <p> <?php echo $this->session->flashdata('update_product_success'); ?> </p>
                </div>

            <?php }?>

            

          </div>
      </div>
        
       <div class="row">
        
        <?php foreach($medicine_details as $m_detail):?>

         <div class="col-md-3">
             <div class="box box-primary">
                  <div class="box-body box-profile">
                      <a href="" data-toggle="modal" data-target="#changeProfile">

                      <?php if(empty($m_detail->medImage)){ //guest2?>
                             <img class="profile-user-img img-responsive img-circle" src="<?php echo site_url()?>assets/images/profiles/guest2.jpg" alt="User profile picture">

                          <?php }else{ ?>
                                <img class="profile-user-img img-responsive img-circle" src="<?php echo site_url()?>assets/images/products/<?php echo $m_detail->medImage; ?>" alt="Picture">
                          <?php } ?>
                      </a>

                      <h3 class="profile-username text-center"><?php echo $m_detail->medname;?></h3>

                      <p class="text-muted text-center"><?php echo $m_detail->med_id;?></p>


                      <ul class="list-group list-group-unbordered">
                       
                       

                          <li class="list-group-item">
                           <b> Supply Count</b> <a class="pull-right"><?php echo $m_detail->productInStore?>
                           
                           <?php if($m_detail->productInStore <20):?>  
                            <span class="fa fa-exclamation-circle text-danger" data-tooltip="tooltip" data-title="product count is critical"></span>
                           <?php endif?>

                           </a>
                        </li>


                          <li class="list-group-item">
                           <b> Medicine Type</b> <a class="pull-right"><?php echo $m_detail->medType?>
                           
                       
                           </a>
                        </li>
                             

                      </ul>

                     
                  </div>
             </div>
         </div>


          <div class="modal fade" id="changeProfile">
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                      <h4 class="modal-title">Change  Picture</h4>
                    </div>

                    <form action="<?php echo site_url()?>inventory/update_medicine_image" method="POST" enctype="multipart/form-data">
                      <div class="modal-body">
                        <input type="file" name="upload_image" required="" class="form-control">
                        <input type="hidden" name="med_table_id" value="<?php echo $m_detail->med_table_id?>">
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                        
                        <input type="submit" name="btnchangeProfile" class="btn btn-flat btn-sm btn-primary">
                      </div>
                    </form>
                  </div>
                  <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
         </div>

       <?php endforeach;?>


         <div class="col-md-9">
            <?php $this->load->view('include_pages_admin/medicine_detail_tab_panel');?>
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


<!--page scripts -->


<!-- footer scripts -->

<script src="<?php echo site_url();?>assets/dist/js/generalscripts.js"></script>

<!-- page script -->
<script>
</script>


</body>
</html>
