<?php foreach($theme_color as $t_color){

  $skin_color = $t_color->theme_color;
  $settings_id =$t_color->settings_id;

}?>

<!DOCTYPE html>
<html>

<?php $this->load->view('include_pages_customer/page_header');?>

<body class="hold-transition <?php echo $skin_color;?> sidebar-mini" id="purchasehistory">
<div class="wrapper">


  <?php $this->load->view('include_pages_customer/document_header');?>
 
  <?php $this->load->view('include_pages_customer/sidebar');?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Purchase History
      </h1>
    
    </section>

    <!-- Main content -->
    <section class="content">
   
      <div class="row">
            <div class="col-xs-12">
               <div class="box">
                    <div class="box-header">
                      <h3 class="box-title"></h3>

                      <div class="box-tools pull-right">
                      </div>


                    </div>
                    <!-- /.box-header -->
                    <div class="box-body table-responsive">
                      <table  class="datatables table table-bordered table-striped">
                        <thead>
                        <tr>
                          <th>Date</th>
                          <th>Total Purchase</th>
                          <th></th>
                        </tr>
                        </thead>
                        <tbody>
                 
                          <?php foreach($sales as $s):?>                    
                            <tr>
                             <td> <?php 

                             $date =date_create($s->sales_date);
                             echo  $sales_date_format= date_format($date,"F d, Y h:i:sa");
                           ;?></td>
                                  <td>₱<?php echo $s->total_amount;?></td>
                                  <td>  <a role="button"  class="btn btn-primary btn-sm" data-toggle="modal" data-target="#sales_full_details<?php echo $s->sales_id?>"><span class="glyphicon glyphicon-fullscreen"> </span>View Full Detail</a>

                                  <div class="modal fade" id="sales_full_details<?php echo $s->sales_id?>">
                                        <div class="modal-dialog">
                                          <div class="modal-content">
                                            <div class="modal-header">
                                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span></button>
                                              <h4 class="modal-title">Purchase Full Details</h4>
                                            </div>
                                            <div class="modal-body">
                                              <div class="container-fluid">
                                                
                                                <div class="row">
                                                  <div class="col-lg-12">
                                                      <span class="pull-left">Customer: <strong> <?php echo $s->customer_name;?></strong></span>
                                                      <span class="pull-right">Date: <strong><?php echo  $s->sales_date ;?></strong></span>
                                                      <div style="clear: both"></div>
                                                      <span class="pull-right">Staff: <strong><?php echo  $s->staff ;?></strong></span>
                                                       <span class="">Invoice Number: <strong><?php echo $s->invoice_number;?></strong></span>
                                                  </div>
                                                </div>
                                                <div style="height:10px;"></div>

                                                <div class="row">
                                                  <div class="col-lg-12">
                                                    <table width="100%" class="table table-striped table-bordered table-hover">
                                                        <thead>
                                                              <tr>
                                                                <th>Product Name</th>
                                                                <th>Product Type</th>
                                                                <th>Product Price</th>
                                                                <th>Purchase Qty</th>
                                                                <th>SubTotal</th>
                                                              </tr>
                                                            </thead>

                                                             <tbody>
                                                              
                                                              <?php $get_all_sales_details = $this->pos_management->find_sales_detail_by_sales_id($s->sales_id);
                                                              ?>


                                                              <?php foreach($get_all_sales_details as $sales_detail):?>
                                                              <tr>
                                                                  <td><?php echo $sales_detail->product_name;?></td>
                                                                  <td><?php echo $sales_detail->product_type;?></td>
                                                                  <td>₱<?php echo $sales_detail->price_per_product;?></td>
                                                                  <td align="right"><?php echo $sales_detail->sales_quantity;?></td>
                                                                 
                                                                  <td align="right">
                                                                    ₱<?php echo $sales_detail->total_per_product;?>
                                                                  </td>
                                                              </tr>

                                                              <?php endforeach;?>


                                                                <tr>
                                                                  <td align="right" colspan="4"><strong>Total Amount</strong></td>
                                                                  <td align="right"><strong>₱<?php echo $s->total_amount;?></strong></td>
                                                                </tr>

                                                                
                                                                </tr>
                                                               
                                                               
                                                            </tbody>
                                                      </table>
                                                  </div>
                                                </div>

                                              </div>
                                            </div>
                                            <div class="modal-footer">
                                              <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                                              <button type="button" class="btn btn-primary">Save changes</button>
                                            </div>
                                          </div>
                                          <!-- /.modal-content -->
                                        </div>
                                        <!-- /.modal-dialog -->
                                  </div>
                                  <!-- /.modal -->
                                  </td>
                            </tr>
                          <?php endforeach;?>
                        </tbody>
                        
                      </table>
                    </div>
                    <!-- /.box-body -->
                  </div>
                <!-- /.box -->

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
