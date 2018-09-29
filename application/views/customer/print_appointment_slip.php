<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title><?php echo $title?> | Appointment Slip</title>
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

  <!-- Google Font window.print(); -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

  <style type="text/css">
    #logo{
      width: 200px;
      margin-left: 250px
    }
  </style>
</head>
<body onload="window.print();">
<div class="wrapper">
  <!-- Main content -->
  <section class="invoice" style="background: ">
    
  <div class="row">

  <?php 
      foreach($clinic_detail as $clinic_d){
         $clinic_address =  $clinic_d->clinic_home_address .' '.$clinic_d->clinic_barangay_address .' '. $clinic_d->clinic_city_address.', '.$clinic_d->clinic_postal_id;
         $clinic_email = $clinic_d->clinic_email_address;
         $clinic_name = $clinic_d->store_name;
         $telephone = $clinic_d->telephone;
         $cellphone = $clinic_d->cellphone;
      }
  ?>

    <div class="col-md-3"><img src="<?php echo site_url()?>assets/site_images/logo3.png" id="logo" class="img-circle"></div>
    <div class="col-md-6">
      <center>  
              <b><span style="font-size:24px"></span></b><br>
              <b><span style="font-size:36px"><?php echo $clinic_name;?></span></b><br>
              <i><?php echo $clinic_address;?></i><br>
              <i>Tel. No.:<?php echo $telephone?></i><br>
             <!-- <i>Email: <?php echo $clinic_email;?></i><br> -->
             <i>Cel. No.:<?php echo $cellphone;?></i>
              
              </center>
    </div>
    <div class="col-md-3"></div>
  </div>



  <div class="row">
      <div class="col-md-3"></div>
      <div class="col-md-6">

        <br />
        <br >

        <?php 

              foreach ($search_appointment as $s_appointment) {
                    $appointment_id = $s_appointment->appointment_id;
                    $customer_name = $s_appointment->customer_name;
                    $pet_name = $s_appointment->pet_name;
                    $temp_date =  date_create($s_appointment->preferredDate);

                    $appointment_date = date_format($temp_date,"F d Y");

                    $time = $s_appointment->preferredtime;

              }
        ?>

       

         <table border="0" cellpadding="0" cellspacing="1" class="printFontSize" width="100%" style="margin-left: 50px">
            <tr>
              <td width="20%"><b><span style="font-size: 18px">Appointment ID</span></b></td>
              <td><b><span style="font-size: 18px"> : </span></b></td>
              <td><span style="font-size: 18px"><?php echo $appointment_id;?></span></td>
             </tr>
           <tr>
            <td><b><span style="font-size: 18px">Customer Name </span></b></td>
            <td><b><span style="font-size: 18px"> : </span></b></td>
            <td><span style="font-size: 18px"><?php echo $customer_name;?></span></td>
           </tr> 
           <tr>
            <td><b><span style="font-size: 18px">Pet Name </span></b></td>
            <td><b><span style="font-size: 18px"> : </span></b></td>
            <td><span id="print_dept" style="font-size: 18px"><?php echo $pet_name?></span></td>
           </tr>
           <tr>
            <td><b><span style="font-size: 18px">Date </span></b></td>
            <td><b><span style="font-size: 18px"> : </span></b></td>
            <td><span id="print_date" style="font-size: 18px"><?php echo  $appointment_date ;?></span></td>
           </tr>
           <tr>
            <td><b><span style="font-size: 18px">Time </span></b></td>
            <td><b><span style="font-size: 18px"> : </span></b></td>
            <td><span id="print_time" style="font-size: 18px"> <?php echo  $time ;?> </span></td>
           </tr>
        </table>

        <br />
          <p style="margin-left: 50px;font-size: 18px">
          <i>*Note<br>
            <span style="margin-left: 20px">1.  Please be there 30 minutes before your appointment time.</span><br>
            <span style="margin-left: 20px">2.  Present this appointment slip to the <?php echo $clinic_name;?> staff.</span><br>
            <span style="margin-left: 20px">3.  Don't forget your Pet ;).</span>
          
          </i>
        </p>
      </div>




      <div class="col-md-3"></div>
  </div>
  </section>
  <!-- /.content -->
</div>
<!-- ./wrapper -->
</body>
</html>
