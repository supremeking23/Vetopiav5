<?php foreach($theme_color as $t_color){

  
 $skin_color2 = $t_color->theme_color;
}?>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title><?php echo  $title;?></title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

  <link rel="shortcut icon" href="<?php echo site_url(); ?>assets/site_images/logo3.png">

  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="<?php echo site_url()?>assets/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?php echo site_url()?>assets/bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="<?php echo site_url()?>assets/bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo site_url()?>assets/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="<?php echo site_url()?>assets/dist/css/skins/<?php echo $skin_color2;?>.min.css">
  <!-- Morris chart -->
  <link rel="stylesheet" href="<?php echo site_url()?>assets/bower_components/morris.js/morris.css">
  <!-- jvectormap -->
  <link rel="stylesheet" href="<?php echo site_url()?>assets/bower_components/jvectormap/jquery-jvectormap.css">
  
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="<?php echo site_url()?>assets/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">


   <!-- DataTables -->
  <link rel="stylesheet" href="<?php echo site_url(); ?>assets/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">


   <!-- fullCalendar -->
  <link rel="stylesheet" href="<?php echo site_url(); ?>assets/bower_components/fullcalendar/dist/fullcalendar.min.css">
  <link rel="stylesheet" href="<?php echo site_url(); ?>assets/bower_components/fullcalendar/dist/fullcalendar.print.min.css" media="print">

  <!-- Jquery UI -->
  <link rel="stylesheet" href="<?php echo site_url(); ?>assets/bower_components/jquery-ui/themes/ui-lightness/jquery-ui.min.css">


  <!-- Select2 -->
  <link rel="stylesheet" href="<?php echo site_url(); ?>assets/bower_components/select2/dist/css/select2.min.css">

  <!--- 
    date picker
  <link rel="stylesheet" href="<?php echo site_url()?>assets/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">

  <link rel="stylesheet" href="<?php echo site_url()?>assets/bower_components/bootstrap-daterangepicker/daterangepicker.css">

    --->

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

<style>
    .example-modal .modal {
      position: relative;
      top: auto;
      bottom: auto;
      right: auto;
      left: auto;
      display: block;
      z-index: 1;
    }

    .example-modal .modal {
      background: transparent !important;
    }


    .select2{
      width: 100%;
    }

    
      /* The switch - the box around the slider */
  .switch {
    position: relative;
    display: inline-block;
    width: 60px;
    height: 34px;
  }

  /* Hide default HTML checkbox */
  .switch input {display:none;}

  /* The slider */
  .slider {
    position: absolute;
    cursor: pointer;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: #ccc;
    -webkit-transition: .4s;
    transition: .4s;
  }

  .slider:before {
    position: absolute;
    content: "";
    height: 26px;
    width: 26px;
    left: 4px;
    bottom: 4px;
    background-color: white;
    -webkit-transition: .4s;
    transition: .4s;
  }

  input:checked + .slider {
    background-color: green;
  }

  input:focus + .slider {
    box-shadow: 0 0 1px #2196F3;
  }

  input:checked + .slider:before {
    -webkit-transform: translateX(26px);
    -ms-transform: translateX(26px);
    transform: translateX(26px);
  }

  /* Rounded sliders */
  .slider.round {
    border-radius: 34px;
  }

  .slider.round:before {
    border-radius: 50%;
  }



#products {
    /*.product-list*/
}

#productControls {
    margin-left: 5pt;
    margin-bottom: 10pt;
}

#products .imageheader {
    background: -webkit-linear-gradient(top, transparent, transparent), url(../images/backgrounds/swimming.jpg);
    background: linear-gradient(180deg, transparent, transparent), url(../images/backgrounds/swimming.jpg);
    background-repeat: no-repeat;
    background-position: center center;
    background-size: cover;
    height: 100vh;
    max-height: auto
}

#products .product-list {
    padding: 0;
    margin: 0;
    list-style: none;
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-flex-flow: row wrap;
    -ms-flex-flow: row wrap;
    flex-flow: row wrap/*.product-item*/
}

#products .product-list .product-item {
    position: relative;
    color: #fff;
    overflow: hidden;
    width: 50%;
    -webkit-transition: all .4s ease-in-out;
    transition: all .4s ease-in-out;
    opacity: .8/*.product-name*/
}

#products .product-list .product-item .product-name {
    background: #d14348;
    color: #f3d350;
    font-weight: 700;
    font-size: 80%;
    text-align: center;
    position: absolute;
    bottom: 0;
    width: 100%;
    display: none
}

#products .product-list .product-item:focus .product-name,
#products .product-list .product-item:hover .product-name {
    display: block
}

#products .product-list .product-item:focus,
#products .product-list .product-item:hover {
    opacity: 1;
    -webkit-transform: scale(1.3);
    transform: scale(1.3);
    z-index: 1
}

#products .product-list .product-item:focus .product-name,
#products .product-list .product-item:hover .product-name {
    display: block;
    -webkit-animation: a 1s;
    animation: a 1s
}


@-webkit-keyframes a {
    0% {
        -webkit-transform: translate3d(0, 100%, 0);
        transform: translate3d(0, 100%, 0);
        visibility: visible
    }
    to {
        -webkit-transform: translateZ(0);
        transform: translateZ(0)
    }
}

@keyframes a {
    0% {
        -webkit-transform: translate3d(0, 100%, 0);
        transform: translate3d(0, 100%, 0);
        visibility: visible
    }
    to {
        -webkit-transform: translateZ(0);
        transform: translateZ(0)
    }
}

@media screen and (min-width:600px) {
    #products .product-list .product-item {
        width: 33.33333%
    }
}

@media screen and (min-width:900px) {
    #products .product-list .product-item {
        width: 25%
    }
}

@media screen and (min-width:1200px) {
    #products .product-list .product-item {
        width: 16.66667%
    }
}





  </style>



    <!-- jQuery 3 -->
  <script src="<?php echo site_url()?>assets/bower_components/jquery/dist/jquery.min.js"></script>
  <!-- jQuery UI 1.11.4 -->
  <script src="<?php echo site_url()?>assets/bower_components/jquery-ui/jquery-ui.min.js"></script>
  <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
  <script>
    $.widget.bridge('uibutton', $.ui.button);
  </script>
  <!-- Bootstrap 3.3.7 -->
  <script src="<?php echo site_url()?>assets/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
  <!-- Morris.js charts -->
  <script src="<?php echo site_url()?>assets/bower_components/raphael/raphael.min.js"></script>
  <script src="<?php echo site_url()?>assets/bower_components/morris.js/morris.min.js"></script>
  <!-- Sparkline -->
  <script src="<?php echo site_url()?>assets/bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
  <!-- jvectormap -->
  <script src="<?php echo site_url()?>assets/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
  <script src="<?php echo site_url()?>assets/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
  <!-- jQuery Knob Chart -->
  <script src="<?php echo site_url()?>assets/bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
  
  <!-- Bootstrap WYSIHTML5 -->
  <script src="<?php echo site_url()?>assets/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
  <!-- Slimscroll -->
  <script src="<?php echo site_url()?>assets/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
  <!-- FastClick -->
  <script src="<?php echo site_url()?>assets/bower_components/fastclick/lib/fastclick.js"></script>
  <!-- AdminLTE App -->
  <script src="<?php echo site_url()?>assets/dist/js/adminlte.min.js"></script>
  <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
  <script src="<?php echo site_url()?>assets/dist/js/pages/dashboard.js"></script>
  <!-- AdminLTE for demo purposes -->
  <script src="<?php echo site_url()?>assets/dist/js/demo.js"></script>


  <!-- DataTables -->
<script src="<?php echo site_url()?>assets/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="<?php echo site_url()?>assets/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>


<!-- fullCalendar -->
<script src="<?php echo site_url()?>assets/bower_components/moment/moment.js"></script>
<script src="<?php echo site_url()?>assets/bower_components/fullcalendar/dist/fullcalendar.min.js"></script>

<!-- Select2 -->
<script src="<?php echo site_url()?>assets/bower_components/select2/dist/js/select2.full.min.js"></script>
</head>