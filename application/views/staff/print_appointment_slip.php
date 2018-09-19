<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title><?php echo $title?> | Appointment Summary</title>
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

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font onload="window.print(); window.print();-->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">


  <link rel="stylesheet" href="css/print.css" type="text/css" media="print"/>
  <style type="text/css">



  </style>

  <style type="text/css" media="print">
    @media print{ .wrapper{ height:100%;overflow:visible;} } 
  </style>

<!-- jQuery 3 -->
<script src="<?php echo site_url()?>assets/bower_components/jquery/dist/jquery.min.js"></script>
  
<script>
  
  $("body").css("overflow", "hidden");
  $("body").css("overflow", "auto");
</script>
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
      }
  ?>
          <img src="<?php echo site_url()?>assets/site_images/logo3.png" width="50"> <?php echo $title;?>
          <small class="pull-right"></small>
           <center>  
              <b><span style="font-size:24px"></span></b><br>
              <b><span style="font-size:36px"><?php echo $clinic_name;?></span></b><br>
              <i><?php echo $clinic_address;?></i><br>
              <i>Tel. No.:865-8400</i><br>
              <i>Email: <?php echo $clinic_email;?></i><br>
              
          </center>
        </h2>
      </div>
      <!-- /.col -->
    </div>
    <!-- info row -->
    <div class="row invoice-info">

      <?php //get customer_name,invoice number and date

       foreach ($get_appointment_detail_by_appointment_data_id as $appointment_detail):

          $total_payment = $appointment_detail->total_payment;
      ?>
        <div class="col-sm-4 invoice-col">
          <!-- <b>Invoice Number: <?php echo $appointment_detail->appointment_table_id;?> </b><br> -->
          <br>
          <b>Pet Name: <?php echo $appointment_detail->pet_name;?></b>
           <br>
          <b>Owner Name: <?php echo $appointment_detail->customer_name  ?></b>
          <br /> <br />
           <?php
                                $date =date_create($appointment_detail->preferredDate);
                                $diagnosis_date = date_format($date,"F j, Y,");
                        ?>
          <b>Assess By: <?php echo $appointment_detail->vet_in_charge ; ?></b>
          <br/>
          <b> Assessment Date:</b> <?php echo $diagnosis_date?><br>

        </div>
        <!-- /.col -->


        <div class="col-md-offset-4 col-sm-4 invoice-col">

          <b > Date Issued:</b> <?php echo date("F j, Y, g:i a");?><br>
        </div>


        <div class="clearfix"></div>

        <br /><br />

        <div class="col-md-12">
          


          <hr />

        
        <?php foreach($get_prescription_by_appointment_table_id as $prescription):?>
          <div class="row">
            <div class="col-md-12">
              <label>Prescription : </label> 
              <div class="form-group">
               <div><?php echo $prescription->prescription; ?></div>
              </div>
            </div>
          </div>
          <?php endforeach;//for prescription?>


        <hr />



        
          <div class="row">
            <div class="col-md-12">
              <label>Services : </label> 
              <div class="form-group">
                Profession Fee <br />
                <?php foreach($get_services_by_appointment_table_id as $services):?>
                <?php echo $services->service_name;?> <br />
                 <?php endforeach;?>
              </div>
            </div>
          </div>




          <div class="row">
            <div class="col-md-12">
              <label>Total Payment : </label> 
              <div class="form-group">
              ₱ <?php echo $total_payment;?>
              </div>
            </div>
          </div>
       


     </div>
        

      <?php endforeach;?>

    </div>
    <!-- /.row -->

  
  </section>
  <!-- /.content -->
</div>
<!-- ./wrapper -->
</body>
</html>
