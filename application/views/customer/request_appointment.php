<!DOCTYPE html>
<html>
<?php foreach($theme_color as $t_color){

  $skin_color = $t_color->theme_color;
  $settings_id =$t_color->settings_id;

}?>


<?php $this->load->view('include_pages_customer/page_header');?>

<body class="hold-transition <?php echo $skin_color;?>  sidebar-mini" id="requestappointment">
<div class="wrapper">


  <?php $this->load->view('include_pages_customer/document_header');?>
 
  <?php $this->load->view('include_pages_customer/sidebar');?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Appointment
        
      </h1>
    
    </section>

    <!-- Main content -->
    <section class="content">


      <div class="row">
        <div class="col-md-12">



             <?php if ($this->session->flashdata('send_request_success')) { ?>

                <div class="alert alert-success display-success alert-dismissible" id="close_print_slip">
                  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <p> <?php echo $this->session->flashdata('send_request_success'); ?> </p>


                   

                </div>

            <?php }?>
          
        </div>
      </div>
      

      <div class="row">
        <div class="col-md-12">
          <div class="box box-warning box-solid">
              <div class="box-header with-border">
                <h3 class="box-title text-center">Appointment Record</h3>
                <div class="box-tools pull-right">
                <button type="button" class="btn btn-flat  btn-sm" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
               
              </div>
              </div>
              <div class="box-body">

              <table  class="datatables table table-bordered table-striped">
                <thead>
                <tr>
                  
                  
                  
                  <th>Date</th>
                  <th>Time</th>
                  <th>Veterinarian in Charge</th>
                  <th>Status</th>
                  <th>Action</th>
                </tr>
                </thead>
                <tbody>
                

                <?php foreach($all_appointment_of_this_customer as $c_appointment):?>

                  <tr>
                    
                   
                    
                    <td> <?php 

                    $date =date_create($c_appointment->preferredDate);
                       echo  $preferred_date= date_format($date,"F d, Y");
                     ;?></td>

                    <td><?php echo $c_appointment->preferredtime;?></td>
                    <td><?php if(empty($c_appointment->vet_in_charge)){
                      echo "None";
                    }else{
                      echo $c_appointment->vet_in_charge;
                    }?></td>
                    <td>
                        
                         <?php if($c_appointment->appointment_status == "Pending"){
                                  $label_type = "warning";
                          }else if($c_appointment->appointment_status == "Approved"){
                                  $label_type = "info";
                          }else if($c_appointment->appointment_status == "Cancelled"){
                                  $label_type = "danger";
                          }else if($c_appointment->appointment_status == "Done"){
                             $label_type = "success";
                          }?>
                            
                            
                          <span class="label label-<?php echo $label_type;?>"><?php echo ucfirst($c_appointment->appointment_status)?></span>

                    </td>
                    <td>
                        <?php if($c_appointment->appointment_status == "Approved"):?>

                               <a href="<?php echo site_url()?>appointment/print_appointment_slip/<?php echo $c_appointment->appointment_table_id;?>"  class="btn btn-sm btn-info"  target="_blank">Print <span class="fa fa-print"></span></a>
                        <?php endif;?>
                    </td>
                  </tr>



                 

                  <?php endforeach;?>

                </tbody>
               
              </table>
                            
              </div>
              <!-- /.box-body -->
              <div class="box-footer">
               
              </div>
              <!-- /.box-footer-->
          </div>

        </div>
      </div>

      <div class="row">
        <div class="col-md-12">
          <div class="box box-warning box-solid collapsed-box">
              <div class="box-header with-border">
                <h3 class="box-title text-center">Send Request</h3>
                <div class="box-tools pull-right">
                <button type="button" class="btn btn-flat  btn-sm" data-widget="collapse"><i class="fa fa-plus"></i>
                </button>
               
              </div>
              </div>
              <div class="box-body">

                <form class="form-horizontal" action="<?php echo site_url()?>appointment/send_appointment_request" method="POST">
                  <div class="form-group">
                    <label for="preferredDate" class="col-sm-2 control-label">Date</label>

                    <div class="col-sm-10">
                      <input type="date" class="form-control" id="preferredDate" name="preferredDate" required="">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="preferredtime" class="col-sm-2 control-label">Time</label>

                    <div class="col-sm-10">
                      <select name="preferredtime" class="form-control" required="">
                        <?php foreach($time as $t):?>
                          <option value="<?php echo $t->time;?>"> <?php echo $t->time;?></option>
                      <?php endforeach;?>
                      </select>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="pet_name" class="col-sm-2 control-label">Pet Name</label>

                    <div class="col-sm-10">
                        <select name="pet_id" class="form-control">
                        <?php foreach($my_petsdata as $my_pets):?>
                          <option value="<?php echo $my_pets->pet_id;?>"><?php echo $my_pets->petname;?></option>
                      <?php endforeach;?>
                      </select>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="complaints" class="col-sm-2 control-label">Description / Complaints</label>

                    <div class="col-sm-10">
                      <textarea class="form-control" id="complaints" name="complaints" placeholder=""></textarea>
                    </div>
                  </div>
                
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                      <button type="submit" class="btn btn-danger">Submit</button>
                    </div>
                  </div>
                </form>

                            
              </div>
              <!-- /.box-body -->
              <div class="box-footer">
               
              </div>
              <!-- /.box-footer-->
          </div>

        </div>
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
<?php //$this->load->view('include_pages_customer/modals');?>

<!--page scripts -->


<!-- footer scripts -->

<script src="<?php echo site_url();?>assets/dist/js/generalscripts.js"></script>

<!-- page script -->
<script>

    $("#print_close").click(function(){
      $("#close_print_slip").hide();
    });


     

</script>


</body>
</html>