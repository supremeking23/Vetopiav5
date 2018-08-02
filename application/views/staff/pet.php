<?php foreach($theme_color as $t_color){

  $skin_color = $t_color->theme_color;
  $settings_id =$t_color->settings_id;

}?>
<!DOCTYPE html>
<html>

<?php $this->load->view('include_pages_staff/page_header');?>

<body class="hold-transition <?php echo $skin_color;?> sidebar-mini" id="pets">
<div class="wrapper">


  <?php $this->load->view('include_pages_staff/document_header');?>
 
  <?php $this->load->view('include_pages_staff/sidebar');?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Pet Section
        
      </h1>
    
    </section>

    <!-- Main content -->
    <section class="content">


      <div class="row">
        <div class="col-md-12">
          <button class="btn btn-flat btn-info btn-sm" data-toggle="modal" data-target="#addPet">Add New Pet</button>
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->

      <br>


      <div class="row">
          <div class="col-md-12">

            

             
             <?php if ($this->session->flashdata('add_pet_success')) { ?>

            <div class="alert alert-success display-success">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <p> <?php echo $this->session->flashdata('add_pet_success'); ?> </p>
            </div>

          <?php }?>


           <?php if ($this->session->flashdata('change_state_pet_success')) { ?>

            <div class="alert alert-success display-success">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <p> <?php echo $this->session->flashdata('change_state_admin_success'); ?> </p>
            </div>

          <?php }?>



          </div>
      </div>
     
      <div class="row">
        <div class="col-md-12">
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Pet List</h3>


            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive">

              <table  class="datatables table table-bordered table-striped">
                <thead>
                <tr>
                  
                  <th>Pet ID</th>
                  <th>Pet Name</th>
                  <th>Pet Type</th>
                  <th>Pet Breed</th>
                  <th>Owner's Name</th>
                  <th>Action</th>
                </tr>
                </thead>
                <tbody>
                      
                  <?php foreach($all_pets as $pets):?>
                      <tr>
                         <td>
                          <?php echo $pets->pet_id;?>
                        </td>
                        <td><?php echo $pets->petname;?></td>
                        <td>
                          <?php echo $pets->pettype;?>
                        </td>
                         <td>
                          <?php echo $pets->pet_breed;?>
                        </td>
                        <td> <?php echo $pets->firstname .' '. $pets->middlename .' '. $pets->lastname;?></td>
                       
                        <td>
                        <a href="<?php echo site_url()?>staff/pet_details/<?php echo $pets->pet_table_id;?>" data-tooltip="tooltip" data-title="View Full Detail"  class="btn btn-sm btn-flat btn-warning"><span class="fa fa-paw"></span></a>
                          
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
      <b>Beta Version</b> 
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
<?php $this->load->view('include_pages_staff/add_pet_modal');?>

<!--page scripts -->


<!-- footer scripts -->

<script src="<?php echo site_url();?>assets/dist/js/generalscripts.js"></script>

<!-- page script -->
<script>

   
     

</script>


</body>
</html>
