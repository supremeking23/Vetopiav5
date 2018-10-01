

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title><?php echo $title?> | Sales Report</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="<?php echo site_url()?>assets/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?php echo site_url()?>assets/bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="<?php echo site_url()?>assets/bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo site_url()?>assets/dist/css/AdminLTE.min.css">
  <!-- Morris chart -->
  <link rel="stylesheet" href="<?php echo site_url()?>assets/bower_components/morris.js/morris.css">
  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font window.print(); -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

  <style type="text/css">
    #logo{
      width: 200px;
      margin-left: 250px
    }
  </style>

  <script src="<?php echo site_url()?>assets/bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Morris.js charts -->
  <script src="<?php echo site_url()?>assets/bower_components/raphael/raphael.min.js"></script>
  <script src="<?php echo site_url()?>assets/bower_components/morris.js/morris.min.js"></script>
</head>
<body onload="window.print()">
<div class="wrapper">
  <!-- Main content -->
  <section class="invoice">
    <!-- title row -->
    <div class="row">
      <div class="col-xs-12">
        <h2 class="page-header">
            <?php 
      foreach($clinic_detail as $clinic_d){
         $clinic_address =  $clinic_d->clinic_home_address .' '.$clinic_d->clinic_barangay_address .' '. $clinic_d->clinic_city_address.', '.$clinic_d->clinic_postal_id;
         $clinic_email = $clinic_d->clinic_email_address;
         $clinic_name = $clinic_d->store_name;
          $skin_color = $clinic_d->theme_color;
          $telephone = $clinic_d->telephone;
          $cellphone = $clinic_d->cellphone;
      }

    if($skin_color == "skin-green"){
      $box_color = "box-success";
    }else if($skin_color == "skin-blue"){
      $box_color = "box-primary";
    }else if($skin_color == "skin-red"){
      $box_color = "box-danger";
    }else if($skin_color == "skin-yellow"){
      $box_color = "box-warning";
    }
  ?>
          <img src="<?php echo site_url()?>assets/site_images/logo3.png" width="50"> <?php echo $title;?>
          <small class="pull-right"></small>
           <center>  
              <b><span style="font-size:24px"></span></b><br>
              <b><span style="font-size:36px"><?php echo $clinic_name;?></span></b><br>
              <i><?php echo $clinic_address;?></i><br>
              <i>Tel. No.:<?php echo $telephone?></i><br>
              <i>Cel. No.:<?php echo $cellphone?></i><br>
             <!-- <i>Email: <?php echo $clinic_email;?></i><br> -->
              
          </center>
        </h2>
      </div>
      <!-- /.col -->
    </div>
    <!-- info row -->

    <?php 

      $from = $_SESSION['from'];
      $to = $_SESSION['to'];

      $date_from =date_create($from);
      $format_from= date_format($date_from,"F d, Y ");

      $date_to = date_create($to);
      $format_to= date_format($date_to,"F d, Y ");
    ?>

   <!--<div class="row">
        <div class="col-md-12">
                    
          <div class="box box-solid <?php echo $box_color;?>">
            <div class="box-header with-border">
              <h3 class="box-title ">Sales Chart (<?php echo $format_from.' - '. $format_to;?>)</h3>

              <div class="box-tools pull-right">
                
              </div>
            </div>
            <div class="box-body chart-responsive">
              <div class="chart" id="line-chart-day" style="height: 300px;"></div>
            </div>
        
          </div>
       
        </div>
      </div> -->
      <br />


<?php 
  $connect = mysqli_connect("localhost", "root", "", "vetopia_db");
  $query = "SELECT date(sales_date) as sales_D,SUM(total_amount) AS 'total_am' FROM tbl_sales  WHERE sales_date BETWEEN '$from'  AND '$to' group by date(sales_date)";
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
  //"SELECT date(sales_date) as sales_D,SUM(total_amount) AS 'total_am' FROM tbl_sales  WHERE sales_date BETWEEN '$from'  AND '$to' group by date(sales_date)";
  echo $sales = json_encode($chart_data);
   $sample = "{ label:'ivan'}";
   $sm = json_encode($chart_labels);
  */

 /* $sales = array();
  foreach($result as $r){
    $datas = array();
    $datas['y'] = $r['sales_D'];
    $datas['item1'] = $r['total_am'];


    //merget the vent array into the return array
    array_push($sales, $datas);
  }*/

  // json_encode($sales);
?>

      <div class="row">
        <div class="col-md-12">
               
          <div class="box box-solid <?php echo $box_color;?>">
            <div class="box-header with-border">
              <h3 class="box-title ">Sales Chart (<?php echo $format_from.' - '. $format_to;?>)</h3>

              <div class="box-tools pull-right">
                
              </div>
            </div>
            <div class="box-body ">
              <table class="table table-hover table-stripes">
                <thead>
                 <tr>
                  <th>Date</th>
                  <th>Total Sales</th>
                 </tr>
                </thead>
                <tbody>
                  <?php foreach($result as $r):?>
                  <tr>
                    <td><?php  
                          $date =date_create($r['sales_D']);
                          $format_date= date_format($date,"F d, Y ");
                          echo $format_date;
                     ;?></td>
                    <td>₱ <?php echo number_format($r['total_am'],2); ?></td>
                  </tr>
                  <?php endforeach;?>
                </tbody>
              </table>
            </div>
        
          </div>
       
        </div>
      </div>

    <!-- /.row -->
  </section>
  <!-- /.content -->
</div>
<!-- ./wrapper -->




<script>
   /* var bar1 = new Morris.Bar({
      element: 'bar-chart-day',
      resize: true,
      data:<?php echo json_encode($sales);?>,
      barColors: ['#00a65a'],
      xkey: 'y',
      ykeys: ['a'],
      labels: ['Total sales for this day'],
      hideHover: 'auto'
    });*/ //17 6 55 54 


    // LINE CHART
    var line = new Morris.Line({
      element: 'line-chart-day',
      resize: true,
      data: <?php echo json_encode($sales); ?>,
      xkey: 'y',
      ykeys: ['item1'],
      labels: ['Total sales for this day'],
      lineColors: ['#3c8dbc'],
      hideHover: 'auto'
    });

</script>

</body>
</html>
