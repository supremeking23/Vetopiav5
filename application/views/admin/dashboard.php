<?php foreach($theme_color as $t_color){

    $skin_color = $t_color->theme_color;
    $settings_id =$t_color->settings_id;
    //$max_product_count = $t_color->max_product_count;
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







      <br />



      <!-- /.row -->


      <!-- /.box -->




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
              <div>
                
                <style>
                  ul.legend {
                        list-style-type: none;
                        margin: 0;
                        padding: 0;
                        overflow: hidden;
                    }

                    ul.legend li {
                        float: left;
                    }
                </style>
                <ul class="legend">
                  <li style="height: 20px;width: 20px;background: #00c0ef;margin:10px 10px 10px 0" data-tooltip="tooltip" data-title="product count is sufficient"></li>
                  <!--<li style="height: 20px;width: 20px;background: #f39c12;margin:10px 10px 10px 0" data-tooltip="tooltip" data-title="product count is below of half of the maximum product count"></li> -->
                  <li style="height: 20px;width: 20px;background: red;margin:10px 10px 10px 0" data-tooltip="tooltip" data-title="product count is critical"></li>
                </ul>
              </div>


              <table  class="datatablesproductcount table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Product Name</th>
                  <th>Product Id</th>
                  <th>Product Type</th>
                 
                  <th>Product Count in the Inventory</th>
                  <th>Status</th>
                </tr>
                </thead>
                <tbody>
               
                <?php foreach($all_products as $a_products):
                   $max_product_count = $a_products->max_product_count;
                  ?>

                <tr>

                  <td><?php echo $a_products->product_name;?></td>
                  <td><?php echo $a_products->product_id;?></td>
                  <td><?php echo $a_products->productType;?></td>
                  
                  
                  <td>


                    <?php 


                    /*$two_months = $this->inventory_management->get_two_months_in_inventory($a_products->product_id);
                        $safety_stock = 0;
                        foreach($two_months as $two){
                          $safety_stock =   $two->quantity - $safety_stock;
                        }

                       $abs_safety_stock = abs($safety_stock);

                      $monthly_order_quantity = $this->inventory_management->get_avg_total_quantity_in_inventory($a_products->product_id);
                      foreach($monthly_order_quantity as $average){
                         $monthly_average = $average->average;
                      }

                      $critical_stock_boundary = ($monthly_average + $abs_safety_stock) / 2;

                      */
                        $number_month = date('m');
                        $get_avg_order_by_month = $this->inventory_management->get_avg_order_by_month($a_products->product_id,$number_month );
                          foreach($get_avg_order_by_month as $avg_month){
                            $avg_month_orders =  $avg_month->quantity;
                          }

                          $get_max_order_by_month =  $this->inventory_management->get_max_order_by_month($a_products->product_id,$number_month );
                          foreach($get_max_order_by_month as $max_order){            
                            $max_order =  $max_order->quantity_sum_max;
                          }

                          $get_min_order_by_month =  $this->inventory_management->get_min_order_by_month($a_products->product_id,$number_month);
                          foreach($get_min_order_by_month as $min_order){            
                            $min_order =  $min_order->quantity_sum_min;
                          }   

                          $safety_stock = $max_order - $min_order;

                          $abs_safety_stock = abs($safety_stock);

                          $critical_stock_boundary = ($avg_month_orders + $abs_safety_stock) / 2;
                    ?>
                      <div class="progress-group">
                        <span class="progress-text">&nbsp;</span>
                        <span class="progress-number"><b><?php echo $a_products->productInStore;?></b>/<?php echo   $max_product_count;?> </span>

                        <div class="progress sm">

                          <?php 
                            $remaining_supply = $a_products->productInStore;

                            $get_decimal = $remaining_supply / $max_product_count;

                            $percentage = $get_decimal * 100;

                          /*  if($percentage < 50 AND $percentage > 26){
                              $progress_bar_status = "progress-bar-warning ". $percentage;
                              $data_tooltip_message = "Product Count is Below half of the maximum product count ". $percentage;
                            }else if($percentage < 25){
                              $progress_bar_status = "progress-bar-danger";
                              $data_tooltip_message = "Product Count is Critical";
                            }else{
                               $progress_bar_status = "progress-bar-aqua";
                               $data_tooltip_message = " ".$percentage;
                            }*/

                            $status = "";
                          if($remaining_supply > $critical_stock_boundary ){
                              $progress_bar_status = "progress-bar-aqua";
                               $data_tooltip_message = " ".$percentage;
                               $status = "Normal";
                             }else{
                               $progress_bar_status = "progress-bar-danger ". $percentage;
                              $data_tooltip_message = "Product Count is Below half of the maximum product count ". $percentage;
                              $status="Need to reorder";
                             }

                          ?>

                          <div class="progress-bar <?php echo $progress_bar_status?>" style="width: <?php echo $percentage;?>%" data-tooltip="tooltip" data-title="<?php echo 'Critical number of stock is :'.round($critical_stock_boundary);?>"></div>
                        </div>
                      </div>
                      <?php //echo $percentage;?>
                  </td>

                  <td><?php echo $status;?></td>
                  
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

      <div class="row">
        <div class="col-md-12">
                    <!-- BAR CHART -->
          <div class="box box-solid <?php echo $box_color?>">
            <div class="box-header with-border">
              <h3 class="box-title">Sales Chart (Sales By Day)</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                
              </div>
            </div>
            <div class="box-body chart-responsive">
              <div class="chart" id="bar-chart-day" style="height: 300px;"></div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
      </div>

      <div class="row">
        <div class="col-md-12">
                    <!-- BAR CHART -->
          <div class="box box-solid <?php echo $box_color?>">
            <div class="box-header with-border">
              <h3 class="box-title">Sales Chart (Sales By Month)</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                
              </div>
            </div>
            <div class="box-body chart-responsive">
              <div class="chart" id="bar-chart-month" style="height: 300px;"></div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
      </div>

 

      <div class="row">
        <div class="col-md-12">
                    <!-- BAR CHART -->
          <div class="box box-solid <?php echo $box_color?>">
            <div class="box-header with-border">
              <h3 class="box-title">Sales Chart (Sales By Year)</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                
              </div>
            </div>
            <div class="box-body chart-responsive">
              <div class="chart" id="bar-chart-year" style="height: 300px;"></div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
      </div>




      <div class="row">
        <div class="col-md-12">
                    <!-- BAR CHART -->
          <div class="box box-solid <?php echo $box_color?>">
            <div class="box-header with-border">
              <h3 class="box-title">Slow and Fast moving Products</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                
              </div>
            </div>
            <div class="box-body ">
              <table  class="datatablesfastslow table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Product Name</th>
                  <th>Product ID </th>
                  <th>Product Type</th>
                  <th>Inventory Turnover Ratio</th>
                </tr>
                </thead>
                <tbody>
               
                <?php foreach($slow_fast as $sf):
                  
                  ?>

                <tr>

                  <td><?php echo $sf->product_name;?></td>
                  <td><?php echo $sf->product_id;?></td>
                  <td><?php echo $sf->productType;?></td>
                
                  <td><?php 

                      //first compute for the beginning inventory
                      //beginning inventory = (cost of goods sold + ending inventory) - amount of inventory purchased
                      //get cost of good sold cogs
                      $product_detail_in_salesdetail = $this->inventory_management->get_sum_total_quantity_sales_detail_by_product_table_id($sf->product_table_id);
                      foreach($product_detail_in_salesdetail as $pds){
                             $cogs = $pds->sales_quantity * $sf->product_price;
                      }


                      $ending_inventory = $sf->productInstore;

                      $new_inventory = $this->inventory_management->new_inventory_detail_dashboard($sf->product_id);
                      foreach($new_inventory as $ni){
                         $new_inventory = $ni->quantity;
                      }

                      $beginning_inventory = ($cogs + $ending_inventory) - $new_inventory;

                      //compute for the inventory turonver ration(one way of knowing if a product is a slow/fast mover in the inventory)

                      //$inventory_turnover_ratio = cost of goods sold/(beginning_inventory + end_inventory)/2;
                      $inventory_turnover_ratio = $cogs/($beginning_inventory + $ending_inventory)/2;
                      echo  $inventory_turnover_ratio .'%';
                     //echo number_format($inventory_turnover_ratio,2);

                  ?></td>
                  
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



      <div class="row">
        <div class="col-md-12">
                    <!-- BAR CHART -->
          <div class="box box-solid <?php echo $box_color?>">
            <div class="box-header with-border">
              <h3 class="box-title">Economic Order Quantity</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                
              </div>
            </div>
            <div class="box-body ">
              <table  class="datatableseoq table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Product Name</th>
                  <th>Product ID </th>
                  <th>Product Type</th>
                  <th>Optimal Order Size</th>
                </tr>
                </thead>
                <tbody>
               
                <?php foreach($slow_fast as $sf):
                  
                  ?>

                <tr>

                  <td><?php echo $sf->product_name;?></td>
                  <td><?php echo $sf->product_id;?></td>
                  <td><?php echo $sf->productType;?></td>
                
                  <td><?php 

                      $product_detail_in_salesdetail = $this->inventory_management->get_sum_total_quantity_sales_detail_by_product_table_id($sf->product_table_id);
                      foreach($product_detail_in_salesdetail as $pds){
                             $demand = $pds->sales_quantity;
                      }

                     // echo "<br />";

                      $order_cost = $sf->product_price;
                      $carrying_host = 100;

                      /*
                        EOQ - econimic order quantity

                        little - stockout
                        too much - spoilage storage

                        total cost = purchase_cost + (ordering cost + carrying cost)-> balance these costs find optimal order size

                        Q* = optimal order
                        R = Order Cost  
                        H = carrying cost
                        D = Annual/Units demand

                        Q* - 2RD/H root sa labas

                        ex: D 200 milks 15
                            R 50 +  80
                            H 2 +  100


                        use EoQ to solve for the optimal ordering size
                      */


                      $optimal_order= sqrt((2*$order_cost)*$demand/$carrying_host);

                      echo round($optimal_order);

                  ?></td>
                  
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



     


      <div class="row">

        <div class="col-md-12">
          <!-- DONUT CHART -->
          <div class="box box-solid <?php echo $box_color;?>">
            <div class="box-header with-border">
              <h6 class="box-title">Data Statistics for Pet Diagnosis</h6>


            </div>
            <div class="box-body">
              <table  class="datatablestats table table-bordered table-striped">
                <thead>
                <tr>

                  <th>Date</th>
                  <th>Disease Name</th>
                 
                  <th>Total Number of cases</th>
                 
                </tr>
                </thead>
                <tbody>
                  <?php foreach($data_stat_pet_daignosis as $data):?>
                  <tr>
                    <td><?php 

                       $date =date_create($data->date);
                       echo  $format_date= date_format($date,"F d, Y");
                    ?></td>
                    <td><?php echo ucfirst( $data->possible_cause);?></td>
                    
                    <td><?php echo $data->counts;?></td>
                  
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

<?php 
  
 
?>


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
  $datas['y'] = $r['sales_D'];
  $datas['a'] = $r['total_am'];


  //merget the vent array into the return array
  array_push($sales, $datas);
}



/// by month

$connect = mysqli_connect("localhost", "root", "", "vetopia_db");
$query2 = "SELECT MONTHNAME(sales_date) as sales_M,SUM(total_amount) AS 'total_am' FROM tbl_sales group by MONTH(sales_date);";
$result2 = mysqli_query($connect, $query2);


$sales2 = array();
foreach($result2 as $r2){
  $datas = array();
  $datas['y'] = $r2['sales_M'];
  $datas['a'] = $r2['total_am'];


  //merget the vent array into the return array
  array_push($sales2, $datas);
}


//testing oct 17
$connect = mysqli_connect("localhost", "root", "", "vetopia_db");
$testing1 = "SELECT a.product_name,a.productType, a.product_id,a.product_price,monthname(c.sales_date) as 'sales_month',sum(a.product_price) as 'product_price',sum(sales_quantity) as 'qty' from tbl_products a join tbl_salesdetails b on(a.product_id = b.product_id) join tbl_sales c on(b.sales_id = c.sales_id);";
$resulttesting1 = mysqli_query($connect, $testing1);


$resultdata1 = array();
foreach($resulttesting1 as $rt1){
  $datas = array();
  echo $datas['y'] = $rt1['sales_month'];
 echo  $datas['item1'] = $rt1['product_name'];

  echo "<br />";
  //merget the vent array into the return array
 //echo  array_push($resultdata1, $datas);
}




// By Year

/*$connect = mysqli_connect("localhost", "root", "", "vetopia_db");
$query3 = "SELECT date(sales_date) as sales_Y,SUM(total_amount) AS 'total_am' FROM tbl_sales group by YEAR(sales_date);";
$result3 = mysqli_query($connect, $query3);


$sales3 = array();
foreach($result3 as $r3){
  $datas = array();
  $datas['x'] = $r3['sales_Y'];
  $datas['item1'] = $r3['total_am'];


  //merget the vent array into the return array
  array_push($sales3, $datas);
}*/



$connect = mysqli_connect("localhost", "root", "", "vetopia_db");
$query3 = "SELECT YEAR(sales_date) as sales_Y,SUM(total_amount) AS 'total_am' FROM tbl_sales group by YEAR(sales_date);";
$result3 = mysqli_query($connect, $query3);


$sales3 = array();
foreach($result3 as $r3){
  $datas = array();
  $datas['y'] = $r3['sales_Y'];
  $datas['a'] = $r3['total_am'];


  //merget the vent array into the return array
  array_push($sales3, $datas);
}




$connect = mysqli_connect("localhost", "root", "", "vetopia_db");
$query4 = "SELECT is_known,color,COUNT(*) as 'counts' FROM tbl_checkupdetails WHERE possible_cause !='none' group by is_known  ";
$result4 = mysqli_query($connect, $query4);


$pet_stat = array();
foreach($result4 as $r4){
  if($r4['is_known'] == 'Unknown'){
    $color = "rgb(229, 134, 39)";
  }else{
    $color = "rgb(127, 204, 51)";
  }

  $datas = array();
  $datas['value'] = $r4['counts'];
  $datas['color'] = $color;
  $datas['label'] = $r4['is_known'];
  $datas['highlight'] = $color;

  //merget the vent array into the return array
  array_push($pet_stat, $datas);
}


$connect = mysqli_connect("localhost", "root", "", "vetopia_db");
$query5 = "SELECT distinct(possible_cause) as 'possible_cause',count(possible_cause) as 'counts', color FROM tbl_checkupdetails WHERE is_known = 'Unknown' group by possible_cause";
$result5 = mysqli_query($connect, $query5);


$pet_stat2 = array();
foreach($result5 as $r5){
  $datas = array();
  $datas['value'] = $r5['counts'];
  $datas['color'] = $r5['color'];
  $datas['label'] = $r5['possible_cause'];
  $datas['highlight'] = $r5['color'];

  //merget the vent array into the return array
  array_push($pet_stat2, $datas);
}

//echo json_encode($sales);


//SELECT distinct(possible_cause),count(possible_cause) as 'counts' FROM vetopia_db.tbl_checkupdetails WHERE is_known = 'Unknown' ;
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



    $('.datatablestats').DataTable( {
        'ordering'    : false,
        "lengthMenu": [[5, 25, 50, -1], [5, 25, 50, "All"]],
        'paging'      : true,
        'info'        : true,
        dom: 'Bfrtip',
        /*buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ],*/

        buttons: [
            {
              extend: 'pdfHtml5',
              title: 'Data Statistics for Pet Diagnosis',
              message: 'Issued by <?php echo $this->session->userdata('complete_name');?> Date: <?php  
                $now = date('Y-m-d H:i:s');
                 $date =date_create($now);
                echo  $log_date_format= date_format($date,"F d, Y h:i:sa");
                ?>',
              customize: function(doc) {
                //setHeader2();
                doc.styles.title = {
                  color: '',
                  fontSize: '40',
                  background: '',
                  alignment: 'center'
                }   
              }  
            },

             {
               extend: 'excelHtml5',
               title: 'Data Statistics for Pet Diagnosis',
               message: 'Issued by <?php echo $this->session->userdata('complete_name');?> Date: <?php  
                $now = date('Y-m-d H:i:s');
                 $date =date_create($now);
                echo  $log_date_format= date_format($date,"F d, Y h:i:sa");
                ?>',
  
            },

            {
               extend: 'csvHtml5',
               title: 'Data Statistics for Pet Diagnosis',
               message: 'Issued by <?php echo $this->session->userdata('complete_name');?> Date: <?php  
                $now = date('Y-m-d H:i:s');
                 $date =date_create($now);
                echo  $log_date_format= date_format($date,"F d, Y h:i:sa");
                ?>',
               
            },

                ]
    } );






    $('.datatablesfastslow').DataTable( {
        'ordering'    : false,
        "lengthMenu": [[5, 25, 50, -1], [5, 25, 50, "All"]],
        'paging'      : true,
        'info'        : true,
        dom: 'Bfrtip',
        /*buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ],*/

        buttons: [
            {
              extend: 'pdfHtml5',
              title: 'Fast and Slow Moving Products in the Inventory',
              message: 'Issued by <?php echo $this->session->userdata('complete_name');?> Date: <?php  
                $now = date('Y-m-d H:i:s');
                 $date =date_create($now);
                echo  $log_date_format= date_format($date,"F d, Y h:i:sa");
                ?>',
              customize: function(doc) {
                //setHeader2();
                doc.styles.title = {
                  color: '',
                  fontSize: '40',
                  background: '',
                  alignment: 'center'
                }   
              }  
            },

             {
               extend: 'excelHtml5',
                title: 'Fast and Slow Moving Products in the Inventory',
               message: 'Issued by <?php echo $this->session->userdata('complete_name');?> Date: <?php  
                $now = date('Y-m-d H:i:s');
                 $date =date_create($now);
                echo  $log_date_format= date_format($date,"F d, Y h:i:sa");
                ?>',
  
            },

            {
               extend: 'csvHtml5',
                title: 'Fast and Slow Moving Products in the Inventory',
               message: 'Issued by <?php echo $this->session->userdata('complete_name');?> Date: <?php  
                $now = date('Y-m-d H:i:s');
                 $date =date_create($now);
                echo  $log_date_format= date_format($date,"F d, Y h:i:sa");
                ?>',
               
            },

                ]
    } );



    $('.datatableseoq').DataTable( {
        'ordering'    : false,
        "lengthMenu": [[5, 25, 50, -1], [5, 25, 50, "All"]],
        'paging'      : true,
        'info'        : true,
        dom: 'Bfrtip',
        /*buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ],*/

        buttons: [
            {
              extend: 'pdfHtml5',
              title: 'Economic Order Quantity',
              message: 'Issued by <?php echo $this->session->userdata('complete_name');?> Date: <?php  
                $now = date('Y-m-d H:i:s');
                 $date =date_create($now);
                echo  $log_date_format= date_format($date,"F d, Y h:i:sa");
                ?>',
              customize: function(doc) {
                //setHeader2();
                doc.styles.title = {
                  color: '',
                  fontSize: '40',
                  background: '',
                  alignment: 'center'
                }   
              }  
            },

             {
               extend: 'excelHtml5',
               title: 'Economic Order Quantity',
               message: 'Issued by <?php echo $this->session->userdata('complete_name');?> Date: <?php  
                $now = date('Y-m-d H:i:s');
                 $date =date_create($now);
                echo  $log_date_format= date_format($date,"F d, Y h:i:sa");
                ?>',
  
            },

            {
               extend: 'csvHtml5',
               title: 'Economic Order Quantity',
               message: 'Issued by <?php echo $this->session->userdata('complete_name');?> Date: <?php  
                $now = date('Y-m-d H:i:s');
                 $date =date_create($now);
                echo  $log_date_format= date_format($date,"F d, Y h:i:sa");
                ?>',
               
            },

                ]
    } );


    $('.datatablesproductcount').DataTable( {
        'ordering'    : false,
        "lengthMenu": [[5, 25, 50, -1], [5, 25, 50, "All"]],
        'paging'      : true,
        'info'        : true,
        dom: 'Bfrtip',
        /*buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ],*/

        buttons: [
            {
              extend: 'pdfHtml5',
              title: 'Product Count Report',
              message: 'Issued by <?php echo $this->session->userdata('complete_name');?> Date: <?php  
                $now = date('Y-m-d H:i:s');
                 $date =date_create($now);
                echo  $log_date_format= date_format($date,"F d, Y h:i:sa");
                ?>',
              customize: function(doc) {
                //setHeader2();
                doc.styles.title = {
                  color: '',
                  fontSize: '40',
                  background: '',
                  alignment: 'center'
                }   
              }  
            },

             {
               extend: 'excelHtml5',
               title: 'Product Count Report',
               message: 'Issued by <?php echo $this->session->userdata('complete_name');?> Date: <?php  
                $now = date('Y-m-d H:i:s');
                 $date =date_create($now);
                echo  $log_date_format= date_format($date,"F d, Y h:i:sa");
                ?>',
  
            },

            {
               extend: 'csvHtml5',
               title: 'Product Count Report',
               message: 'Issued by <?php echo $this->session->userdata('complete_name');?> Date: <?php  
                $now = date('Y-m-d H:i:s');
                 $date =date_create($now);
                echo  $log_date_format= date_format($date,"F d, Y h:i:sa");
                ?>',
               
            },

                ]
    } );


    // LINE CHART   Tago muna... try natin  ung bar graph lang
  /* var line = new Morris.Line({
      element: 'line-chart-sales-day',
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


    // LINE CHART
   var line2 = new Morris.Line({
      element: 'line-chart-sales-month',
      resize: true,
      data: 
        <?php echo json_encode($sales2);?>
      ,
      xkey: 'x',
      ykeys: ['item1'],
      labels: ['Sales'],
      lineColors: ['#3c8dbc'],
      hideHover: 'auto'
    });

    // LINE CHART
   var line3 = new Morris.Line({
      element: 'line-chart-sales-year',
      resize: true,
      data: 
        <?php echo json_encode($sales3);?>
      ,
      xkey: 'x',
      ykeys: ['item1'],
      labels: ['Sales'],
      lineColors: ['#3c8dbc'],
      hideHover: 'auto'
    });*/



    //BAR CHART

    /*
     [
        {y: '2006', a: 100, b: 90},
        {y: '2007', a: 75, b: 65},
        {y: '2008', a: 50, b: 40},
        {y: '2009', a: 75, b: 65},
        {y: '2010', a: 50, b: 40},
        {y: '2011', a: 75, b: 65},
        {y: '2012', a: 100, b: 90}
      ],*/

    // LINE CHART
   /* var line = new Morris.Line({
      element: 'line-chart',
      resize: true,
      data: [
        {y: '2011 Q1', item1: 2666},
        {y: '2011 Q2', item1: 2778},
        {y: '2011 Q3', item1: 4912},
        {y: '2011 Q4', item1: 3767},
        {y: '2012 Q1', item1: 6810},
        {y: '2012 Q2', item1: 5670},
        {y: '2012 Q3', item1: 4820},
        {y: '2012 Q4', item1: 15073},
        {y: '2013 Q1', item1: 10687},
        {y: '2013 Q2', item1: 8432}
      ],
      xkey: 'y',
      ykeys: ['item1'],
      labels: ['Turnover Ratio for this Month'],
      lineColors: ['#3c8dbc'],
      hideHover: 'auto'
    });*/

    var bar1 = new Morris.Bar({
      element: 'bar-chart-day',
      resize: true,
      data:<?php echo json_encode($sales);?>,
      barColors: ['#00a65a'],
      xkey: 'y',
      ykeys: ['a'],
      labels: ['Total sales for this day'],
      hideHover: 'auto'
    });

    var bar2 = new Morris.Bar({
      element: 'bar-chart-month',
      resize: true,
      data:<?php echo json_encode($sales2);?>,
      barColors: ['#00a65a'],
      xkey: 'y',
      ykeys: ['a'],
      labels: ['Total sales for this month'],
      hideHover: 'auto'
    });


    var bar3 = new Morris.Bar({
      element: 'bar-chart-year',
      resize: true,
      data:<?php echo json_encode($sales3);?>,
      barColors: ['#00a65a'],
      xkey: 'y',
      ykeys: ['a'],
      labels: ['Total sales for this year'],
      hideHover: 'auto'
    });



    //-------------
    //- PIE CHART -
   /*  [
      {
        value    : 700,
        color    : '#f56954',
        highlight: '#f56954',
        label    : 'Chrome'
      },
      {
        value    : 500,
        color    : '#00a65a',
        highlight: '#00a65a',
        label    : 'IE'
      },
     <?php echo json_encode($pet_stat);?>
    ]*/
    //-------------
    /*

    */

</script>
<!-- footer scripts -->

<script src="<?php echo site_url();?>assets/dist/js/generalscripts.js"></script>

</body>
</html>
