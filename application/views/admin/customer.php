<?php foreach($theme_color as $t_color){

  $skin_color = $t_color->theme_color;
  $settings_id =$t_color->settings_id;

}?>
<!DOCTYPE html>
<html>

<?php $this->load->view('include_pages_admin/page_header');?>

<body class="hold-transition <?php echo $skin_color;?>  sidebar-mini" id="customer">
<div class="wrapper">


  <?php $this->load->view('include_pages_admin/document_header');?>
 
  <?php $this->load->view('include_pages_admin/sidebar');?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Customer Section
        
      </h1>
    
    </section>

    <!-- Main content -->
    <section class="content">


      <div class="row">
        <div class="col-md-12">
          <button class="btn btn-flat btn-info btn-sm" data-toggle="modal" data-target="#addCustomer">Add New Customer</button>
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
     <br />


      <!-- messages-->
      <div class="row">
          <div class="col-md-12">



            <?php if ($this->session->flashdata('change_state_customer_success')) { ?>

                <div class="alert alert-success display-success">
                  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <p> <?php echo $this->session->flashdata('change_state_customer_success'); ?> </p>
                </div>

            <?php }?>



             <?php if ($this->session->flashdata('add_customer_success')) { ?>

                <div class="alert alert-success display-success">
                  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <p> <?php echo $this->session->flashdata('add_customer_success'); ?> </p>
                </div>

            <?php }?>

            

          </div>
      </div>



     <div class="row">
        <div class="col-md-12">
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Customers</h3>

              
            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive">

              <table  class="datatables table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Customer Status</th>
                  <th>User ID</th>
                  <th>Name</th>
                  <th>Contact Number</th>
                  <th>Action</th>
                </tr>
                </thead>
                <tbody>
                

                  <?php foreach($all_customers as $customers):?>

                  <tr>
                     <td>
                      
                     <form action="<?php echo site_url()?>user_management/update_state_customer" method="POST">

                      <?php if($customers->is_active == "Active"){

                            $btn_status = "btn-primary";
                      }else{

                          $btn_status = "btn-danger";
                      }?>
                       
                       <input type="submit" name="current_state" value="<?php echo $customers->is_active?>" class="btn btn-flat <?php echo $btn_status;?> btn-sm">

                       <input type="hidden" name="change_state_user" value="<?php echo $customers->customer_table_id;?>">

                     </form>

                    </td>
                    <td><?php echo $customers->customer_id;?></td>
                    <td>
                      <?php echo $customers->firstname .' '. $customers->middlename .' '. $customers->lastname;?>
                    </td>
                    <td><?php echo $customers->contact;?></td>
                   
                    <td>
                    <a href="<?php echo site_url()?>admin/customer_details/<?php echo $customers->customer_table_id;?>" data-tooltip="tooltip" data-title="View Full Detail"  class="btn btn-sm btn-flat btn-warning"><span class="fa fa-user"></span></a>
                      
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
      <b>Beta Version  <?php //var_dump(substr('A1806231044313', 0, 1));?></b> 
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
<?php $this->load->view('include_pages_admin/add_customer_modal');?>

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
