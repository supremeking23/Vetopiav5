<?php foreach($theme_color as $t_color){

  $skin_color = $t_color->theme_color;
  $settings_id =$t_color->settings_id;
  
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


}?>
<!DOCTYPE html>
<html>

<?php $this->load->view('include_pages_admin/page_header');?>

<body class="hold-transition <?php echo $skin_color;?> sidebar-mini" id="pets">
<div class="wrapper">


  <?php $this->load->view('include_pages_admin/document_header');?>
 
  <?php $this->load->view('include_pages_admin/sidebar');?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Pet Medical Records
        
      </h1>
    
    </section>

    <!-- Main content -->
    <section class="content">


      <div class="row">
        <div class="col-md-12">
           <a href="<?php echo site_url()?>admin/pets" class="btn btn-info btn-flat btn-sm">View Pet List</a>
           <a href="<?php echo site_url()?>admin/view_pettype" class="btn btn-warning btn-flat btn-sm">View Pet Type</a>
           <a href="<?php echo site_url()?>admin/view_petbreed" class="btn btn-success btn-flat btn-sm">View Pet Breed</a>
           <a href="<?php echo site_url()?>admin/view_petmedicalrecords" class="btn btn-primary btn-flat btn-sm">View Pet Medical Records</a>
          <?php if($this->session->userdata('account_type') == "Super Admin"):?>
           <!--<button class="btn btn-flat btn-warning btn-sm" data-toggle="modal" data-target="#addpetbreed">Pet Breed</button>
           <button class="btn btn-flat btn-success btn-sm" data-toggle="modal" data-target="#petbreed">View Pet Breed</button> -->
           <?php endif;?>
           
        </div>


        <!-- /.col -->
      </div>
      <!-- /.row -->

      <br>



     
      <div class="row">
        <div class="col-md-12">
          <div class="box box-solid <?php echo $box_color;?>">
            <div class="box-header with-border">
              <h3 class="box-title"></h3>


            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive">

              <table  class="datatablemedicalrecord table table-bordered table-striped">
                <thead>
                <tr>
                  
                  <th>Date</th>
                  <th>Pet Name</th>
                  <th>Possible Cause/Illness</th>
                  
                </tr>
                
                </thead>
                <tbody>
                    <?php foreach($pet_medicalrecords as $pet_md):?>
                      <tr>
                        <td><?php  $pet_md->date;
                        $date =date_create($pet_md->date);
                        echo  $format_date= date_format($date,"F d, Y");
                        ?></td>
                        <td><?php echo $pet_md->petname;?></td>
                       <td><?php echo $pet_md->possible_cause;?></td>
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


<!--page scripts -->


<!-- footer scripts -->

<script src="<?php echo site_url();?>assets/dist/js/generalscripts.js"></script>

<!-- page script -->
<script>
    $('.datatablemedicalrecord').DataTable( {
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
              title: 'Medical Records of Pet Illness',
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
               title: 'Medical Records of Pet Illness',
               message: 'Issued by <?php echo $this->session->userdata('complete_name');?> Date: <?php  
                $now = date('Y-m-d H:i:s');
                 $date =date_create($now);
                echo  $log_date_format= date_format($date,"F d, Y h:i:sa");
                ?>',
  
            },

            {
               extend: 'csvHtml5',
               title: 'Medical Records of Pet Illness',
               message: 'Issued by <?php echo $this->session->userdata('complete_name');?> Date: <?php  
                $now = date('Y-m-d H:i:s');
                 $date =date_create($now);
                echo  $log_date_format= date_format($date,"F d, Y h:i:sa");
                ?>',
               
            },

                ]
    } );

   
     

</script>


</body>
</html>
