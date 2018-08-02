<?php foreach($theme_color as $t_color){

  $skin_color = $t_color->theme_color;
  $settings_id =$t_color->settings_id;

}?>

<!DOCTYPE html>
<html>

<?php $this->load->view('include_pages_admin/page_header');?>

<body class="hold-transition <?php echo $skin_color;?> sidebar-mini" id="dashboard">
<div class="wrapper">


  <?php $this->load->view('include_pages_admin/document_header');?>
 
  <?php $this->load->view('include_pages_admin/sidebar');?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Dashboard
        <small>Control panel</small>
      </h1>
    
    </section>

    <!-- Main content -->
    <section class="content">

      <div class="row">
        <div class="col-lg-4 col-xs-12">
          <!-- small box -->
          <div class="small-box bg-aqua">
            <div class="inner">
              <?php foreach($count_customers as $customer_count):?>
              <h3><?php echo $customer_count->count_all;?></h3>
              <?php endforeach;?>
              <p>Customers</p>
            </div>
            <div class="icon">
              <i class="ion ion-person"></i>
            </div>
            
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-4 col-xs-12">
          <!-- small box -->
          <div class="small-box bg-green">
            <div class="inner">

              <?php foreach($count_pets as $pet_count):?>
              <h3><?php echo $pet_count->count_all;?></h3>
            <?php endforeach;?>

              <p>Pets</p>
            </div>
            <div class="icon">
              <i class="fa fa-paw"></i>
            </div>
            
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-4 col-xs-12">
          <!-- small box -->
          <div class="small-box bg-yellow">
            <div class="inner">
              <?php foreach($count_products as $product_count):?>
              <h3><?php echo $product_count->count_all?></h3>
            <?php endforeach;?>
              <p>Product</p>
            </div>
            <div class="icon">
              <i class="ion ion-archive"></i>
            </div>
           
          </div>
        </div>
        <!-- ./col -->
      
      </div>
     
      <div class="row">
        <div class="col-md-12">
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Product Count Report</h3>

            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive">

              <table  class="datatables table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Product Name</th>
                  <th>Product Type</th>
                  
                  <th>Product Count</th>
                 
                </tr>
                </thead>
                <tbody>
               
                <?php foreach($all_products as $a_products):?>

                <tr>

                  <td><?php echo $a_products->product_name;?></td>
                  <td><?php echo $a_products->productType;?></td>
                
                  <td>
                      <div class="progress-group">
                        <span class="progress-text">&nbsp;</span>
                        <span class="progress-number"><b><?php echo $a_products->productInStore;?></b>/200</span>

                        <div class="progress sm">

                          <?php 
                            $remaining_supply = $a_products->productInStore;
                            $get_decimal = $remaining_supply / 200;

                            $percentage = $get_decimal * 100;

                            if($percentage < 50){
                              $progress_bar_status = "progress-bar-red";
                              $data_tooltip_message = "Product count is critical";
                            }else{
                               $progress_bar_status = "progress-bar-aqua";
                               $data_tooltip_message = "";
                            }

                          ?>

                          <div class="progress-bar <?php echo $progress_bar_status?>" style="width: <?php echo $percentage;?>%" data-tooltip="tooltip" data-title="<?php echo $data_tooltip_message?>"></div>
                        </div>
                      </div>
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
      <!-- /.row -->


   

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
<?php $this->load->view('include_pages_admin/modals');?>

<!--page scripts -->

<!-- page script -->
<script>

</script>
<!-- footer scripts -->

<script src="<?php echo site_url();?>assets/dist/js/generalscripts.js"></script>

</body>
</html>
