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
        Pet Type List
        
      </h1>
    
    </section>

    <!-- Main content -->
    <section class="content">


      <div class="row">
        <div class="col-md-12">


          <?php if($this->session->userdata('account_type') == "Super Admin"):?>
           <!--<button class="btn btn-flat btn-warning btn-sm" data-toggle="modal" data-target="#addpetbreed">Pet Breed</button>
           <button class="btn btn-flat btn-success btn-sm" data-toggle="modal" data-target="#petbreed">View Pet Breed</button> -->


          <a href="<?php echo site_url()?>admin/pets" class="btn btn-info btn-flat btn-sm">View Pet List</a>
          <a href="<?php echo site_url()?>admin/view_pettype" class="btn btn-warning btn-flat btn-sm">View Pet Type</a>
          <button class="btn btn-flat btn-success btn-sm" data-toggle="modal" data-target="#addpetbreed">Add Pet Breed </button>
          <a href="<?php echo site_url()?>admin/view_petmedicalrecords" class="btn btn-primary btn-flat btn-sm">View Pet Medical Records</a>

  


           <?php endif;?>
           
        </div>


        <!-- /.col -->
      </div>
      <!-- /.row -->

      <br>


      <div class="row">
          <div class="col-md-12">

         
            

          </div>
      </div>
     
      <div class="row">
        <div class="col-md-12">
          <div class="box box-solid <?php echo $box_color;?>">
            <div class="box-header with-border">
              <h3 class="box-title">Pet Breed</h3>


            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive">

              <table  class="datatable_view_petbreed table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Pet Type</th>
                  <th>Breed</th>
                  <th>Breed Description</th>
                  <th>Number of Pets</th>
                </tr>
                </thead>
                <tbody>
                   
                   <?php foreach($breed_list as $bl):?>
                    <tr>
                      <td><?php echo ucfirst($bl->pettype_code);?></td>

                      <td><?php echo ($bl->pet_breed);?></td>
                      <td>
                          <?php echo ($bl->breed_description);?>
                      </td>

                      <td>
                        <?php $no_pets = $this->pet_management_model->count_pets_by_breed($bl->breed_id);
                           
                           foreach($no_pets as $no_pet){
                             echo $no_pet->count_all;
                           }
                        ?>
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
<?php $this->load->view('include_pages_admin/add_pet_breed');?>


<!--page scripts -->


<!-- footer scripts -->

<script src="<?php echo site_url();?>assets/dist/js/generalscripts.js"></script>

<!-- page script -->
<script>

$(function(){

     $('.datatable_view_petbreed ').DataTable( {
        'ordering'    : false,
        "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
        'paging'      : true,
        'info'        : true,
        dom: 'Bfrtip',
        /*buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ],*/

        buttons: [
            {
              extend: 'pdfHtml5',
              title: 'Pet Breed List',
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
               title: 'Pet Breed List',
               message: 'Issued by <?php echo $this->session->userdata('complete_name');?> Date: <?php  
                $now = date('Y-m-d H:i:s');
                 $date =date_create($now);
                echo  $log_date_format= date_format($date,"F d, Y h:i:sa");
                ?>',
  
            },

            {
               extend: 'csvHtml5',
               title: 'Pet Breed List',
               message: 'Issued by <?php echo $this->session->userdata('complete_name');?> Date: <?php  
                $now = date('Y-m-d H:i:s');
                 $date =date_create($now);
                echo  $log_date_format= date_format($date,"F d, Y h:i:sa");
                ?>',
               
            },

                ]
            } );


});
   
     

</script>


</body>
</html>
