<!DOCTYPE html>
<html>

<?php $this->load->view('include_pages_admin/page_header');?>

<body class="hold-transition skin-blue sidebar-mini" id="staff">
<div class="wrapper">


  <?php $this->load->view('include_pages_admin/document_header');?>
 
  <?php $this->load->view('include_pages_admin/sidebar');?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Veterinarian and Staff
        
      </h1>
    
    </section>

    <!-- Main content -->
    <section class="content">

      <div class="row">
        <div class="col-md-12">
          <button class="btn btn-flat btn-info btn-sm" data-toggle="modal" data-target="#addVet">Add New Veterinarian</button>
          <button class="btn btn-flat btn-info btn-sm" data-toggle="modal" data-target="#addStaff">Add New Staff</button>
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->


      <br /> 
      <!-- messages-->
      <div class="row">
          <div class="col-md-12">

            

             
             <?php if ($this->session->flashdata('add_vet_success')) { ?>

            <div class="alert alert-success display-success">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <p> <?php echo $this->session->flashdata('add_admin_success'); ?> </p>
            </div>

          <?php }?>


           <?php if ($this->session->flashdata('add_staff_success')) { ?>

            <div class="alert alert-success display-success">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <p> <?php echo $this->session->flashdata('add_staff_success'); ?> </p>
            </div>

          <?php }?>


           <?php if ($this->session->flashdata('change_state_veterinarian_success')) { ?>

            <div class="alert alert-success display-success">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <p> <?php echo $this->session->flashdata('change_state_veterinarian_success'); ?> </p>
            </div>

          <?php }?>


          <?php if ($this->session->flashdata('change_state_staff_success')) { ?>

            <div class="alert alert-success display-success">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <p> <?php echo $this->session->flashdata('change_state_staff_success'); ?> </p>
            </div>

          <?php }?>



          </div>
      </div>
     
      <div class="row">
        <div class="col-md-12">
            
            <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Veterinarian</h3>

              
            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive">

              <table  class="datatables table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Veterinarian Status</th>
                  <th>User ID</th>
                  <th>Name</th>
                  <th>Contact Number</th>
                  <th>Action</th>
                </tr>
                </thead>
                <tbody>
                

                  <?php foreach($all_vets as $vets):?>

                  <tr>
                     <td>
                      
                     <form action="<?php echo site_url()?>user_management/update_state_vet" method="POST">

                      <?php if($vets->is_active == "Active"){

                            $btn_status = "btn-primary";
                      }else{

                          $btn_status = "btn-danger";
                      }?>
                       
                       <input type="submit" name="current_state" value="<?php echo $vets->is_active?>" class="btn btn-flat <?php echo $btn_status;?> btn-sm">

                       <input type="hidden" name="change_state_user" value="<?php echo $vets->veterinarian_table_id;?>">

                     </form>

                    </td>
                    <td><?php echo $vets->veterinarian_id;?></td>
                    <td>
                      <?php echo $vets->firstname .' '. $vets->middlename .' '. $vets->lastname;?>
                    </td>
                    <td><?php echo $vets->contact;?></td>
                   
                    <td>
                    <a href="<?php echo site_url()?>admin/admin_details/<?php echo $vets->veterinarian_table_id;?>" data-tooltip="tooltip" data-title="View Full Detail"  class="btn btn-sm btn-flat btn-warning"><span class="fa fa-user"></span></a>
                      
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


        <div class="row">
        <div class="col-md-12">
            
            <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Staff</h3>

              
            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive">

              <table  class="datatables table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Staff Status</th>
                  <th>User ID</th>
                  <th>Name</th>
                  <th>Contact Number</th>
                  <th>Action</th>
                </tr>
                </thead>
                <tbody>
                

                  <?php foreach($all_staff as $staffs):?>

                  <tr>
                     <td>
                      
                     <form action="<?php echo site_url()?>user_management/update_state_staff" method="POST">

                      <?php if($staffs->is_active == "Active"){

                            $btn_status = "btn-primary";
                      }else{

                          $btn_status = "btn-danger";
                      }?>
                       
                       <input type="submit" name="current_state" value="<?php echo $staffs->is_active?>" class="btn btn-flat <?php echo $btn_status;?> btn-sm">

                       <input type="hidden" name="change_state_user" value="<?php echo $staffs->staff_table_id;?>">

                     </form>

                    </td>
                    <td><?php echo $staffs->staff_id;?></td>
                    <td>
                      <?php echo $staffs->firstname .' '. $staffs->middlename .' '. $staffs->lastname;?>
                    </td>
                    <td><?php echo $staffs->contact;?></td>
                   
                    <td>
                    <a href="<?php echo site_url()?>admin/staff_details/<?php echo $staffs->staff_table_id;?>" data-tooltip="tooltip" data-title="View Full Detail"  class="btn btn-sm btn-flat btn-warning"><span class="fa fa-user"></span></a>
                      
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
<?php $this->load->view('include_pages_admin/modals');?>

<!--page scripts -->


<!-- footer scripts -->

<script src="<?php echo site_url();?>assets/dist/js/generalscripts.js"></script>

<!-- page script -->
<script>

    var check_status = document.querySelector('#check_status').addEventListener('click',function(){
         alert('ivan');
    });


     

</script>


</body>
</html>
