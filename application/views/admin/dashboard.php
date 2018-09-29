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
              <span class="info-box-text">Total number of Products left</span>
               <?php foreach($count_products as $product_count):?>
              <span class="info-box-number"><?php echo $product_count->count_all?></span>
              <?php endforeach;?>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
        </div>
        <!-- /.col -->


        <div class="col-md-4  col-sm-6 col-xs-12">
          <div class="info-box">
            <span class="info-box-icon bg-aqua"><i class="fa fa-calendar"></i></span>

            <div class="info-box-content" >
              <span class="info-box-text">Today's appointment</span>
               <?php foreach($count_todays_appointment as $todays_appointment_count):?>
              <span class="info-box-number"><?php echo $todays_appointment_count->count_all?></span>
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
                          <a class="btn btn-block btn-social btn-default common-task" href="<?php echo site_url()?>Admin/Appointments">
                            <i class="fa fa-calendar"></i> View appointment records

                            <?php foreach($count_appointment_pending as $cap):?>
                            <?php if($cap->count_all == 0){
                            }else{ ?>

                              <span class="badge label-danger" data-tooltip="tooltip" data-placement="right" title="You have <?php echo $cap->count_all; ?> new appointment request" >
                              <?php  echo $cap->count_all; ?>
                              </span>
                           <?php  }?>
                          <?php endforeach;?>
                          </a>
                        </div>
                        <div class=" col-md-6  col-xs-12">
                          <a class="btn btn-block btn-social btn-default common-task" href="<?php echo site_url()?>Admin/Pos">
                            <i class="fa fa-shopping-cart"></i> Start a new sale
                          </a>
                        </div>

                       
                    </div>

                    <div class="row">

                           <div class="col-md-6  col-xs-12">
                              <a class="btn btn-block btn-social btn-default common-task" href="<?php echo site_url()?>Admin/Inventory">
                                <i class="fa fa-sticky-note"></i> View Inventory Report
                              </a>
                          </div>


                          <div class="col-md-6  col-xs-12">
                              <a class="btn btn-block btn-social btn-default common-task" href="<?php echo site_url()?>Admin/Sales">
                                <i class="fa fa-cart-arrow-down"></i> View Sales Report
                              </a>
                            </div>

                    </div>  

                    <?php 
                      if($this->session->userdata('account_type') == "Super Admin"):
                      
                      ?>        

                    <div class="row">

                           <div class="col-md-6  col-xs-12">
                              <a class="btn btn-block btn-social btn-default common-task" href="<?php echo site_url()?>Admin/Logs">
                                <i class="fa fa-sticky-note-o"></i> View Log Report
                              </a>
                          </div>


                          <div class="col-md-6  col-xs-12">
                              <a class="btn btn-block btn-social btn-default common-task" href="<?php echo site_url()?>Admin/Settings">
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

      <!--<div class="col-md-4">
          
          <div class="box box-solid <?php echo $box_color;?>">
            <div class="box-header with-border">
              <h6 class="box-title">Data Statistics for Pet Diagnosis(Pie graph view)</h6>


            </div>
            <div class="box-body">
              <canvas id="pieChart" style="height:50px"></canvas>
            </div>
           
          </div>
        
        </div> -->
     
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
                  <li style="height: 20px;width: 20px;background: #f39c12;margin:10px 10px 10px 0" data-tooltip="tooltip" data-title="product count is below of half of the maximum product count"></li>
                  <li style="height: 20px;width: 20px;background: red;margin:10px 10px 10px 0" data-tooltip="tooltip" data-title="product count is critical"></li>
                </ul>
              </div>

              <table  class="datatablesproductcount table table-bordered table-striped">
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
                        <span class="progress-number"><b><?php echo $a_products->productInStore;?></b>/<?php echo   $max_product_count;?> </span>

                        <div class="progress sm">

                          <?php 
                            $remaining_supply = $a_products->productInStore;
                            $get_decimal = $remaining_supply / $max_product_count;

                            $percentage = $get_decimal * 100;

                            if($percentage < 50 AND $percentage > 26){
                              $progress_bar_status = "progress-bar-warning ". $percentage;
                              $data_tooltip_message = "Product Count is Below half of the maximum product count ". $percentage;
                            }else if($percentage < 25){
                              $progress_bar_status = "progress-bar-danger";
                              $data_tooltip_message = "Product Count is Critical";
                            }else{
                               $progress_bar_status = "progress-bar-aqua";
                               $data_tooltip_message = " ".$percentage;
                            }

                          ?>

                          <div class="progress-bar <?php echo $progress_bar_status?>" style="width: <?php echo $percentage;?>%" data-tooltip="tooltip" data-title="<?php //echo $data_tooltip_message;?>"></div>
                        </div>
                      </div>
                      <?php //echo $percentage;?>
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

<?php 
  
 




 
//var_dump($rgbColor);
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
    // Get context with jQuery - using jQuery's .get() method.  
    var pieChartCanvas = $('#pieChart').get(0).getContext('2d')
    var pieChart       = new Chart(pieChartCanvas)
    var PieData        = <?php echo json_encode($pet_stat);?>

    var pieOptions     = {
      //Boolean - Whether we should show a stroke on each segment
      segmentShowStroke    : true,
      //String - The colour of each segment stroke
      segmentStrokeColor   : '#fff',
      //Number - The width of each segment stroke
      segmentStrokeWidth   : 2,
      //Number - The percentage of the chart that we cut out of the middle
      percentageInnerCutout: 50, // This is 0 for Pie charts
      //Number - Amount of animation steps
      animationSteps       : 100,
      //String - Animation easing effect
      animationEasing      : 'easeOutBounce',
      //Boolean - Whether we animate the rotation of the Doughnut
      animateRotate        : true,
      //Boolean - Whether we animate scaling the Doughnut from the centre
      animateScale         : false,
      //Boolean - whether to make the chart responsive to window resizing
      responsive           : true,
      // Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container
      maintainAspectRatio  : true,
      //String - A legend template
      legendTemplate       : '<ul class="<%=name.toLowerCase()%>-legend"><% for (var i=0; i<segments.length; i++){%><li><span style="background-color:<%=segments[i].fillColor%>"></span><%if(segments[i].label){%><%=segments[i].label%><%}%></li><%}%></ul>'
    }
    //Create pie or douhnut chart
    // You can switch between pie and douhnut using the method below.
    pieChart.Doughnut(PieData, pieOptions)


    //pie2
        //-------------
    //- PIE CHART -
    //-------------
    // Get context with jQuery - using jQuery's .get() method.
    var pieChartCanvas2 = $('#pieChart2').get(0).getContext('2d')
    var pieChart2       = new Chart(pieChartCanvas2)
    var PieData2        = <?php echo json_encode($pet_stat2);?>

    var pieOptions2     = {
      //Boolean - Whether we should show a stroke on each segment
      segmentShowStroke    : true,
      //String - The colour of each segment stroke
      segmentStrokeColor   : '#fff',
      //Number - The width of each segment stroke
      segmentStrokeWidth   : 2,
      //Number - The percentage of the chart that we cut out of the middle
      percentageInnerCutout: 50, // This is 0 for Pie charts
      //Number - Amount of animation steps
      animationSteps       : 100,
      //String - Animation easing effect
      animationEasing      : 'easeOutBounce',
      //Boolean - Whether we animate the rotation of the Doughnut
      animateRotate        : true,
      //Boolean - Whether we animate scaling the Doughnut from the centre
      animateScale         : false,
      //Boolean - whether to make the chart responsive to window resizing
      responsive           : true,
      // Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container
      maintainAspectRatio  : true,
      //String - A legend template
      legendTemplate       : '<ul class="<%=name.toLowerCase()%>-legend"><% for (var i=0; i<segments.length; i++){%><li><span style="background-color:<%=segments[i].fillColor%>"></span><%if(segments[i].label){%><%=segments[i].label%><%}%></li><%}%></ul>'
    }
    //Create pie or douhnut chart
    // You can switch between pie and douhnut using the method below.
    pieChart2.Doughnut(PieData2, pieOptions2)





    //pie3
        //-------------
    //- PIE CHART -
    //-------------
    // Get context with jQuery - using jQuery's .get() method.
    var pieChartCanvas3 = $('#pieChart3').get(0).getContext('2d')
    var pieChart3       = new Chart(pieChartCanvas3)
    var PieData3        = [
      {
        value    : 700,
        color    : 'rgb(233,22,221)',
        highlight: 'rgb(233,22,221)',
        label    : 'Ivan'
      },
      {
        value    : 500,
        color    : '#00a65a',
        highlight: '#00a65a',
        label    : 'Ivan'
      },
     
    ]

    var pieOptions3     = {
      //Boolean - Whether we should show a stroke on each segment
      segmentShowStroke    : true,
      //String - The colour of each segment stroke
      segmentStrokeColor   : '#fff',
      //Number - The width of each segment stroke
      segmentStrokeWidth   : 2,
      //Number - The percentage of the chart that we cut out of the middle
      percentageInnerCutout: 50, // This is 0 for Pie charts
      //Number - Amount of animation steps
      animationSteps       : 100,
      //String - Animation easing effect
      animationEasing      : 'easeOutBounce',
      //Boolean - Whether we animate the rotation of the Doughnut
      animateRotate        : true,
      //Boolean - Whether we animate scaling the Doughnut from the centre
      animateScale         : false,
      //Boolean - whether to make the chart responsive to window resizing
      responsive           : true,
      // Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container
      maintainAspectRatio  : true,
      //String - A legend template
      legendTemplate       : '<ul class="<%=name.toLowerCase()%>-legend"><% for (var i=0; i<segments.length; i++){%><li><span style="background-color:<%=segments[i].fillColor%>"></span><%if(segments[i].label){%><%=segments[i].label%><%}%></li><%}%></ul>'
    }
    //Create pie or douhnut chart
    // You can switch between pie and douhnut using the method below.
    pieChart3.Doughnut(PieData3, pieOptions3)

</script>
<!-- footer scripts -->

<script src="<?php echo site_url();?>assets/dist/js/generalscripts.js"></script>

</body>
</html>
