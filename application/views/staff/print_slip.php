<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title><?php echo $title?> | Invoice</title>
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
         $telephone = $clinic_d->telephone;
         $cellphone =  $clinic_d->cellphone;
      }
  ?>
          <img src="<?php echo site_url()?>assets/site_images/logo3.png" width="50"> <?php echo $title;?>
          <small class="pull-right"></small>
           <center>  
              <b><span style="font-size:24px"></span></b><br>
              <b><span style="font-size:36px"><?php echo $clinic_name;?></span></b><br>
              <i><?php echo $clinic_address;?></i><br>
              <i>Tel. No.:<?php echo $telephone;?></i><br>
              <i>Cel. No.: <?php echo $cellphone;?></i><br>
              
          </center>
        </h2>
      </div>
      <!-- /.col -->
    </div>
    <!-- info row -->
    <div class="row invoice-info">

      <?php //get customer_name,invoice number and date

       foreach ($get_all_data_from_sales as $data_from_sales):
      ?>
        <div class="col-sm-4 invoice-col">
          <b>Invoice <?php echo $data_from_sales->invoice_number;?> </b><br>
          <br>
          <b>Customer Name: <?php echo $data_from_sales->customer_name;?>  (<?php echo ucfirst($data_from_sales->customer_type); ?>)</b>
          <br/>
          <b>Staff: <?php echo $data_from_sales->staff;?></b>
          <br /> <br />
           <?php
                                $date =date_create($data_from_sales->sales_date);
                                $sales_date = date_format($date,"F j, Y, g:i a");
                        ?>
          <b> Date:</b> <?php echo $sales_date?><br>
        </div>
        <!-- /.col -->

        <?php //for total_amount,total_tax,sales_total
            $total_amount = $data_from_sales->total_amount;
            $cash = $data_from_sales->cash;
            $change = $data_from_sales->change;
        ?>

      <?php endforeach;?>

    </div>
    <!-- /.row -->

    <!-- Table row -->
    <div class="row">
      <div class="col-xs-12 table-responsive">
        <table class="table table-striped" border="3">
          <thead>
            <tr>
              
              <th rowspan="2">Product</th>
              <th rowspan="2">Product Type</th>
              <th rowspan="2">Quantity</th>
              <th rowspan="2">Price</th>
              <th rowspan="2">Actual Amt.</th>
              <th colspan="2"><center>Tax (%)</center></th>
              <th rowspan="2">Total</th>
            </tr>
            <tr>
              <th>Rate</th>
              <th>Amt.</th>
            </tr>
          </thead>
          <tbody>

          <?php foreach($get_all_data_from_sales_detail as $data_from_sales_detail):?>

            <tr>
              
              <td><?php echo $data_from_sales_detail->product_name;?></td>
              <td><?php echo $data_from_sales_detail->product_type;?></td>
              <td><?php echo $data_from_sales_detail->sales_quantity;?></td>
              <td>₱<?php echo $data_from_sales_detail->price_per_product;?></td> 
              <td>₱<?php $actual_amt = $data_from_sales_detail->price_per_product * $data_from_sales_detail->sales_quantity; echo number_format($actual_amt, 2)?></td>
              <td><?php echo 100 * $data_from_sales_detail->tax;?>%</td>
            <td align="right">₱<?php  $tax_nadagdag =  $actual_amt *  $data_from_sales_detail->tax;
                        echo  number_format($tax_nadagdag, 2)
            ?></td>
            <td align="right">₱<?php echo  number_format($actual_amt + $tax_nadagdag, 2) ;?></td>
            </tr>
          
          <?php endforeach;?>
          </tbody>
        </table>
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->

    <div class="row">
      <!-- accepted payments column -->
      <div class="col-xs-6">
       
      </div>
      <!-- /.col -->
      <div class="col-xs-6">
        <p class="lead"></p>

        <div class="table-responsive">
          <table class="table">
            <tr>
              <th style="width:50%">Total Amount:</th>
              <td>₱<?php echo number_format($total_amount, 2);?></td>
            </tr>
            <tr>
              <th style="width:50%">Cash:</th>
              <td>₱<?php echo number_format($cash, 2);?></td>
            </tr>
            <tr>
              <th style="width:50%">Change:</th>
              <td>₱<?php echo number_format($change, 2);?></td>
            </tr>
           
          </table>
        </div>
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->
  </section>
  <!-- /.content -->
</div>
<!-- ./wrapper -->
</body>
</html>
