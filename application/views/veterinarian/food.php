<?php foreach($theme_color as $t_color){

  $skin_color = $t_color->theme_color;
  $settings_id =$t_color->settings_id;

}?>

<!DOCTYPE html>
<html>

<?php $this->load->view('include_pages_vets/page_header');?>

<body class="hold-transition <?php echo $skin_color;?> sidebar-mini" id="food">
<div class="wrapper">


  <?php $this->load->view('include_pages_vets/document_header');?>
 
  <?php $this->load->view('include_pages_vets/sidebar');?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Food Section
        
      </h1>
    
    </section>

    <!-- Main content -->
    <section class="content">
     
      <div class="row">
        <div class="col-md-12">
          <?php if($this->session->userdata('account_type') == "Super Admin"):?>
          <button class="btn btn-flat btn-info btn-sm" data-toggle="modal" data-target="#addProduct">Add New Product</button>
        <?php endif;?>
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->

      <br /> 
      <!-- messages-->
      <div class="row">
          <div class="col-md-12">

            

             
             <?php if ($this->session->flashdata('add_product_success')) { ?>

            <div class="alert alert-success display-success">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <p> <?php echo $this->session->flashdata('add_product_success'); ?> </p>
            </div>

          <?php }?>


           <?php if ($this->session->flashdata('add_product_supply')) { ?>

            <div class="alert alert-success display-success">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <p> <?php echo $this->session->flashdata('add_product_supply'); ?> </p>
            </div>

          <?php }?>


          
        



          </div>
      </div>


     <div class="row">
        <div class="col-md-12">
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Foods</h3>

              
            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive">

              <table  class="datatables table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Product Name</th>
                  <th>Product Image</th>
                  <th>Actions</th>
                  
                </tr>
                </thead>
                <tbody>
                

                  <?php foreach($all_foods as $foods):?>

                  <tr>
                     <td>
                    <?php echo $foods->foodname;?>
                    </td>
                    <td><img src="<?php echo site_url()?>assets/images/products/<?php echo $foods->foodImage;?>" class="img-responsive"></td>
                    
                    <td>
                      <button class="btn btn-sm btn-fat btn-info"  data-toggle="modal" data-target="#product_detail<?php echo$foods->food_table_id?>">View Detail</button>
                      <button type="button" class="btn btn-sm btn-flat btn-warning" data-toggle="modal" data-target="#product_pullout<?php echo$foods->food_table_id?>">Pull Out</button>



                      <div class="modal fade" id="product_detail<?php echo $foods->food_table_id?>">
                        <div class="modal-dialog">
                          <div class="modal-content">
                            <div class="modal-header">
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span></button>
                              <h4 class="modal-title">Product Detail</h4>
                            </div>
                            <div class="modal-body">
                              <dl class="dl-horizontal">
                                <dt>Product Name</dt>
                                <dd><?php echo $foods->foodname;?></dd>
                                <dt>Food for what Pet</dt>
                                <dd><?php echo $foods->forwhatpet;?></dd>

                                <dt>Food Description</dt>
                                <dd><?php echo $foods->fooddescription;?></dd>
                               
                              </dl>
                            </div>
                            <div class="modal-footer">
                              <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                              
                            </div>
                          </div>
                          <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->
                      </div>
                      <!-- /.modal -->


                     


               </tr>


              
                <div class="modal fade" id="product_pullout<?php echo $foods->food_table_id?>">
                        <div class="modal-dialog">
                          <div class="modal-content">
                            <div class="modal-header">
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span></button>
                              <h4 class="modal-title">Pull Out</h4>
                            </div>

                            <?php echo form_open_multipart('inventory/pull_out_food','id=""');?>
                            <div class="modal-body">

                             <div class="form-group">
                              <label for="number_of_pullout">Number of Product</label>
                              <input type="number" class="form-control" name="number_of_pullout" max="2" min="1">
                            </div>

                             <div class="form-group">
                              <label for="number_of_pullout">Remarks</label>
                              <textarea class="form-control" name="pull_out_detail"></textarea>
                            </div>
                              
                            </div>
                            <div class="modal-footer">
                              <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                              <input type="submit" name="submit" value="pull-out" class="btn btn-primary btn-sm btn-flat">
                            </div>
                            <?php echo form_close();?>
                          </div>
                          <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->
                      </div>
                      <!-- /.modal -->
                 

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


<!--page scripts -->


<!-- footer scripts -->

<script src="<?php echo site_url();?>assets/dist/js/generalscripts.js"></script>

<!-- page script -->
<script>


</script>


</body>
</html>
