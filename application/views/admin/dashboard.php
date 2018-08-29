<?php foreach($theme_color as $t_color){

    $skin_color = $t_color->theme_color;
    $settings_id =$t_color->settings_id;
    $max_product_count = $t_color->max_product_count;
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

<?php $this->load->view('include_pages_admin/page_header');?>

<body class="hold-transition <?php echo $skin_color;?> sidebar-mini" id="dashboard">
<div class="wrapper">


  <?php $this->load->view('include_pages_admin/document_header');?>

  <style type="text/css">
    .common-task{
      margin-bottom: 7px
    }
  </style>
 
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

        <div class="col-md-4 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-blue"><i class="fa fa-user-secret"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Total number of admins</span>
               <?php foreach($count_admins as $admin_count):?>
              <span class="info-box-number"><?php echo $admin_count->count_all;?></span>
              <?php endforeach;?>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->

        <div class="col-md-4 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-red"><i class="fa fa-users"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Total number of veterinarians</span>
               <?php foreach($count_vets as $vet_count):?>
              <span class="info-box-number"><?php echo $vet_count->count_all;?></span>
              <?php endforeach;?>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->


        <div class="col-md-4 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-green"><i class="fa fa-users"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Total number of staff</span>
               <?php foreach($count_staffs as $staff_count):?>
              <span class="info-box-number"><?php echo $staff_count->count_all;?></span>
              <?php endforeach;?>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->


      </div>

      <div class="row">


        <div class="col-md-4 col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-yellow"><i class="fa fa-users"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Total number of customer</span>
               <?php foreach($count_customers as $customer_count):?>
              <span class="info-box-number"><?php echo $customer_count->count_all;?></span>
              <?php endforeach;?>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
        
      
        <div class="col-md-4  col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-orange"><i class="fa fa-paw"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Total number of pets</span>
               <?php foreach($count_pets as $pet_count):?>
              <span class="info-box-number"><?php echo $pet_count->count_all;?></span>
              <?php endforeach;?>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->

        <div class="col-md-4  col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-aqua"><i class="fa fa-archive"></i></span>

            <div class="info-box-content" >
              <span class="info-box-text">Total number of Products</span>
               <?php foreach($count_products as $product_count):?>
              <span class="info-box-number"><?php echo $product_count->count_all?></span>
              <?php endforeach;?>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->
      </div>


      <div class="row">
       
          <div class="col-md-12">
             <div class="callout callout-default">
                <h4 class="text-center">Welcome to Vetopia, Please choose a common task below to get started!</h4>
              </div>

              <div class="row">
                  <div class="col-md-12">
                    

                    <div class="row">
                        <div class=" col-md-6 col-xs-12">
                          <a class="btn btn-block btn-social btn-default common-task" href="<?php echo site_url()?>admin/appointments">
                            <i class="fa fa-calendar"></i> View appointment records

                            <?php foreach($count_appointment_pending as $cap):?>
                            <?php if($cap->count_all == 0){
                            }else{ ?>

                              <span class="badge label-danger" data-tooltip="tooltip" title="You have <?php echo $cap->count_all; ?> new appointment request" >
                              <?php  echo $cap->count_all; ?>
                              </span>
                           <?php  }?>
                          <?php endforeach;?>
                          </a>
                        </div>
                        <div class=" col-md-6  col-xs-12">
                          <a class="btn btn-block btn-social btn-default common-task" href="<?php echo site_url()?>admin/pos">
                            <i class="fa fa-shopping-cart"></i> Start a new sale
                          </a>
                        </div>

                       
                    </div>

                    <div class="row">

                           <div class="col-md-6  col-xs-12">
                              <a class="btn btn-block btn-social btn-default common-task" href="<?php echo site_url()?>admin/inventory">
                                <i class="fa fa-sticky-note"></i> View Inventory Report
                              </a>
                          </div>


                          <div class="col-md-6  col-xs-12">
                              <a class="btn btn-block btn-social btn-default common-task" href="<?php echo site_url()?>admin/sales">
                                <i class="fa fa-cart-arrow-down"></i> View Sales Report
                              </a>
                            </div>

                    </div>  

                    <?php 
                      if($this->session->userdata('account_type') == "Super Admin"):
                      
                      ?>        

                    <div class="row">

                           <div class="col-md-6  col-xs-12">
                              <a class="btn btn-block btn-social btn-default common-task" href="<?php echo site_url()?>admin/logs">
                                <i class="fa fa-sticky-note-o"></i> View Log Report
                              </a>
                          </div>


                          <div class="col-md-6  col-xs-12">
                              <a class="btn btn-block btn-social btn-default common-task" href="<?php echo site_url()?>admin/settings">
                                <i class="fa fa-gear"></i> View Store Setting
                              </a>
                            </div>

                    </div>

                  <?php endif;?>
                    

                   

                  </div>
              </div>
          </div>

      </div>

      <br />
     
      <div class="row">
        <div class="col-md-12">
          <div class="box box-solid <?php echo $box_color;?>">
            <div class="box-header with-border">
              <h3 class="box-title">Product Count Report</h3>
              <div class="box-tools pull-right">
                  <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="">
                    <i class="fa fa-minus"></i></button>
                  
                </div>
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
                        <span class="progress-number"><b><?php echo $a_products->productInStore;?></b>/<?php echo   $max_product_count;?></span>

                        <div class="progress sm">

                          <?php 
                            $remaining_supply = $a_products->productInStore;
                            $get_decimal = $remaining_supply / $max_product_count;

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


      <!-- /.box -->

      <div class="row">
              <div class="col-md-12">
          <!-- LINE CHART -->
          <div class="box box-solid <?php echo $box_color?>">
            <div class="box-header with-border">
              <h3 class="box-title">Sales Chart</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
               
              </div>
            </div>
              <div class="box-body chart-responsive">
              <div class="chart" id="line-chart" style="height: 300px;"></div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->


      </div>
        <!-- /.col (RIGHT) -->
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
<?php $this->load->view('include_pages_admin/modals');?>

<!--page scripts -->

<?php 
//index.php
$connect = mysqli_connect("localhost", "root", "", "vetopia_db");
$query = "SELECT date(sales_date) as sales_D,SUM(total_amount) AS 'total_am' FROM tbl_sales group by date(sales_date);";
$result = mysqli_query($connect, $query);
/*$chart_data = '';
$chart_labels = '';
while($row = mysqli_fetch_array($result))
{
  $chart_data .= $row["total_am"];
  $date =date_create($row["sales_D"]);
  $sales_d= date_format($date,"F d, Y ");
 $chart_labels .= $sales_d;



}

echo $sales = json_encode($chart_data);
 $sample = "{ label:'ivan'}";
 $sm = json_encode($chart_labels);
*/

$sales = array();
foreach($result as $r){
  $datas = array();
  $datas['x'] = $r['sales_D'];
  $datas['item1'] = $r['total_am'];


  //merget the vent array into the return array
  array_push($sales, $datas);
}

//echo json_encode($sales);



//for labels 




//execute query
/*$result = mysqli_query($connect, $query);
//$result = $mysqli->query($query);

//loop through the returned data
$data = array();
foreach ($result as $row) {
  $data[] = $row;
}


$datas = json_encode($data);*/
?>


<!-- page script -->
<script>

    // LINE CHART
   var line = new Morris.Line({
      element: 'line-chart',
      resize: true,
      data: 
        <?php echo json_encode($sales);?>
      ,
      xkey: 'x',
      ykeys: ['item1'],
      labels: ['Sales'],
      lineColors: ['#3c8dbc'],
      hideHover: 'auto'
    });








</script>
<!-- footer scripts -->

<script src="<?php echo site_url();?>assets/dist/js/generalscripts.js"></script>

</body>
</html>
