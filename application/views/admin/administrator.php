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


  }

?>

<!DOCTYPE html>
<html>

<?php $this->load->view('include_pages_admin/page_header');?>

<body class="hold-transition <?php echo $skin_color;?> sidebar-mini" id="admin">
<div class="wrapper">


  <?php $this->load->view('include_pages_admin/document_header');?>
 
  <?php $this->load->view('include_pages_admin/sidebar');?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Administrators
        
      </h1>
    
    </section>

    <!-- Main content -->
    <section class="content">
     
      <div class="row">
        <div class="col-md-12">

          <?php if($this->session->userdata('account_type') == "Super Admin"):?>

          <button class="btn btn-flat btn-info btn-sm" data-toggle="modal" data-target="#addAdmin">Add New Admin</button>

        <?php endif;?>
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->

      <br /> 
      <!-- messages-->
      <div class="row">
          <div class="col-md-12">

            

             
             <?php if ($this->session->flashdata('add_admin_success')) { ?>

            <div class="alert alert-success display-success">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <p> <?php echo $this->session->flashdata('add_admin_success'); ?> </p>
            </div>

          <?php }?>


           <?php if ($this->session->flashdata('change_state_admin_success')) { ?>

            <div class="alert alert-success display-success">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <p> <?php echo $this->session->flashdata('change_state_admin_success'); ?> </p>
            </div>

          <?php }?>



          </div>
      </div>


     <div class="row">
        <div class="col-md-12">
          <div class="box <?php echo $box_color;?> box-solid">
            <div class="box-header with-border">
              <h3 class="box-title">Administrators</h3>

              
            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive">

              <table  class="datatables table table-bordered table-striped">
                <thead>
                <tr>

                  <?php if($this->session->userdata('account_type') == "Super Admin"):?>
                  <th>Admin Status</th>
                  <?php endif;?>

                  <th>Admin Type</th>
                  <th>User ID</th>
                  <th>Name</th>
                  <th>Contact Number</th>
                  <th>Action</th>
                </tr>
                </thead>
                <tbody>
                

                  <?php foreach($all_admin as $admins):?>

                  <tr>

                    <?php if($this->session->userdata('account_type') == "Super Admin"):?>
                     <td>
                      <?php if($this->session->userdata('account_type') != $admins->admin_type):?>
                       <form action="<?php echo site_url()?>user_management/update_state_admin" method="POST">

                          <?php if($admins->is_active == "Active"){

                                $btn_status = "btn-primary";
                          }else{

                              $btn_status = "btn-danger";
                          }?>
                           
                           <input type="submit" name="current_state" value="<?php echo $admins->is_active?>" class="btn btn-flat <?php echo $btn_status;?> btn-sm">

                           <input type="hidden" name="change_state_user" value="<?php echo $admins->admin_table_id;?>">

                       </form>
                     <?php endif;?>
                    </td>
                    <?php endif;?>

                    <td><?php echo $admins->admin_type;?></td>
                    <td><?php echo $admins->admin_id;?></td>
                    <td>
                      <?php echo $admins->firstname .' '. $admins->middlename .' '. $admins->lastname;?>
                    </td>
                    <td><?php echo $admins->contact;?></td>
                   
                    <td>
                    <a href="<?php echo site_url()?>admin/admin_details/<?php echo $admins->admin_table_id;?>" data-tooltip="tooltip" data-title="View Full Detail"  class="btn btn-sm btn-flat btn-info">View Full Detail</a>
                      
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
<?php $this->load->view('include_pages_admin/add_admin_modal');?>

<!--page scripts -->


<!-- footer scripts -->

<script src="<?php echo site_url();?>assets/dist/js/generalscripts.js"></script>

<!-- page script -->
<script>

      $(function(){

        //all are not use

        var check_status = document.querySelector('#check_status').addEventListener('click',function(){
        // alert('ivan');
        //alert(check_status.val());
    });
      

        function removeSuccessMessage() {
          setTimeout(function(){ 

          $(".display-success").fadeOut("slow");
          location.reload();
           }, 2000);
         }


          //removeSuccessMessage();


         //passwordChecker();

         //addAdmin();
      });

</script>


</body>
</html>
