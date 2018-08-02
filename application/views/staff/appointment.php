<?php foreach($theme_color as $t_color){

  $skin_color = $t_color->theme_color;
  $settings_id =$t_color->settings_id;

}?>

<!DOCTYPE html>
<html>

<?php $this->load->view('include_pages_staff/page_header');?>

<body class="hold-transition <?php echo $skin_color;?> sidebar-mini" id="appointment">
  <div class="wrapper">


    <?php $this->load->view('include_pages_staff/document_header');?>
   
    <?php $this->load->view('include_pages_staff/sidebar');?>
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
            <button class="btn btn-flat btn-info btn-sm" data-toggle="modal" data-target="#addAppointment">Set An Appointment</button>
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
       <br />

        <div class="row">
            <div class="col-md-12">



                 <?php if ($this->session->flashdata('schedule_appointment')) { ?>

                    <div class="alert alert-success display-success alert-dismissible" id="">
                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                        <p> <?php echo $this->session->flashdata('schedule_appointment'); ?> </p>
                    </div>

                <?php }?>

                 <?php if ($this->session->flashdata('assigned_vet')) { ?>

                    <div class="alert alert-success display-success alert-dismissible" id="">
                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                        <p> <?php echo $this->session->flashdata('assigned_vet'); ?> </p>
                    </div>

                <?php }?>

                 <?php if ($this->session->flashdata('cancel_appointment')) { ?>

                    <div class="alert alert-success display-success alert-dismissible" id="">
                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                        <p> <?php echo $this->session->flashdata('cancel_appointment'); ?> </p>
                    </div>

                <?php }?>
              
            </div>
        </div>
       
      <div class="row">
        <div class="col-md-12">
          <div class="box box-warning box-solid">
              <div class="box-header with-border">
                <h3 class="box-title text-center">Appointment Records</h3>

              </div>
              <div class="box-body">

              <table  class="datatables table table-bordered table-striped">
                <thead>
                <tr>
                  
                  <th>Customer Name</th>
                  
                  <th>Date</th>
                  <th>Time</th>
                  <th>Veterinarian in Charge</th>
                  <th>Status</th>
                  <th>Action</th>
                </tr>
                </thead>
                <tbody>
                

                <?php foreach($all_appointment as $a_appointment):?>

                  <tr>
                    
                    <td><?php echo $a_appointment->customer_name;?></td>
                    
                    <td> <?php 

                    $date =date_create($a_appointment->preferredDate);
                       echo  $preferred_date= date_format($date,"F d, Y");
                     ;?></td>

                    <td><?php echo $a_appointment->preferredtime;?></td>
                    <td><?php if(empty($a_appointment->vet_in_charge)){
                      echo "None";
                    }else{
                      echo $a_appointment->vet_in_charge;
                    }?></td>
                    <td>
                        
                         <?php if($a_appointment->appointment_status == "Pending"){
                                  $label_type = "warning";
                          }else if($a_appointment->appointment_status == "Approved"){
                                  $label_type = "info";
                          }else if($a_appointment->appointment_status == "Cancelled"){
                                  $label_type = "danger";
                          }else if($a_appointment->appointment_status == "Done"){
                             $label_type = "success";
                          }?>
                            
                            
                          <span class="label label-<?php echo $label_type;?>"><?php echo ucfirst($a_appointment->appointment_status)?></span>

                    </td>
                    <td>

                      <?php if($a_appointment->appointment_status == "Pending"){?>
                        <button type="button" data-toggle="modal" data-target="#assignVet<?php echo $a_appointment->appointment_table_id?>" class="btn btn-sm btn-primary btn-flat">Assign a veterinarian</button>
                        | <button type="button" class="btn btn-flat btn-sm btn-danger" data-toggle="modal" data-target="#cancelAppointment<?php echo $a_appointment->appointment_table_id?>">Cancel Appointment</button>
                         |
                      <button type="button" class="btn btn-flat btn-sm btn-info" data-toggle="modal" data-target="#detailAppointment<?php echo $a_appointment->appointment_table_id?>">View Details</button>

                        <?php }else if($a_appointment->appointment_status == "Approved"){ ?>

                           <button type="button" class="btn btn-flat btn-sm btn-info" data-toggle="modal" data-target="#detailAppointment<?php echo $a_appointment->appointment_table_id?>">View Details</button>

                          | <button type="button" class="btn btn-flat btn-sm btn-danger" data-toggle="modal" data-target="#cancelAppointment<?php echo $a_appointment->appointment_table_id?>">Cancel Appointment</button>
                          |
                          <br>
                            <?php echo form_open_multipart('appointment/done_appointment_for_staff');?>
                             <input type="hidden" name="appointment_table_id" value="<?php echo $a_appointment->appointment_table_id;?>">
                              <input type="submit" name="submit" class="btn btn-flat btn-sm btn-success" value="Done" />
                            </form>

                        <?php }else if($a_appointment->appointment_status == "Done"){?>

                            <button type="button" class="btn btn-flat btn-sm btn-info" data-toggle="modal" data-target="#detailAppointment<?php echo $a_appointment->appointment_table_id?>">View Details</button>


                        <?php }else if($a_appointment->appointment_status == "Cancelled"){ ?>


                            <button type="button" class="btn btn-flat btn-sm btn-info" data-toggle="modal" data-target="#detailAppointment<?php echo $a_appointment->appointment_table_id?>">View Details</button>


                        <?php }?>
                     
                    </td>
                  </tr>



                   <div class="modal fade" id="assignVet<?php echo $a_appointment->appointment_table_id?>">
                      <div class="modal-dialog">
                        <div class="modal-content">
                          <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title">Veterinarians</h4>
                          </div>

                          
                           <?php echo form_open_multipart('appointment/set_veterinarian_for_staff');?>
                          <div class="modal-body">
                            <select name="veterinarian" class="form-control select2" style="width: 100%;min-height: 150px;max-height: 150px;overflow-y: auto;">
                              <?php foreach($all_vets as $vets):?>
                              <option value="<?php echo $vets->veterinarian_table_id?>"><?php echo $vets->firstname .''. $vets->middlename .' '. $vets->lastname;?></option>
                            <?php endforeach?>
                            </select>
                          </div>
                          <div class="modal-footer">

                            <input type="hidden" name="appointment_table_id" value="<?php echo $a_appointment->appointment_table_id;?>">
                            <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                            <input type="Submit" name="submit" value="Submit" class="btn btn-primary btn-sm btn-flat">
                          </div>

                          </form>
                        </div>
                        <!-- /.modal-content -->
                      </div>
                      <!-- /.modal-dialog -->
                   </div>
                    <!-- /.modal -->





                    <div class="modal fade" id="cancelAppointment<?php echo $a_appointment->appointment_table_id?>">
                      <div class="modal-dialog">
                        <div class="modal-content">
                          <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title">Cancel Reason</h4>
                          </div>

                          <?php echo form_open_multipart('appointment/cancel_appointment_for_staff');?>
                          <div class="modal-body">
                            <textarea class="form-control" name="cancel_reason">
                              
                            </textarea>
                          </div>
                          <div class="modal-footer">
                            <input type="hidden" name="appointment_table_id" value="<?php echo $a_appointment->appointment_table_id;?>">
                            <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                             <input type="Submit" name="submit" value="Submit" class="btn btn-primary btn-sm btn-flat">
                          </div>
                        </form>
                        </div>
                        <!-- /.modal-content -->
                      </div>
                      <!-- /.modal-dialog -->
                   </div>
                    <!-- /.modal -->



                    <div class="modal fade" id="detailAppointment<?php echo $a_appointment->appointment_table_id?>">
                      <div class="modal-dialog">
                        <div class="modal-content">
                          <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title">Appointment Detail</h4>
                          </div>
                          <div class="modal-body">
                              <dl class="dl-horizontal">
                                <dt>Customer Name</dt>
                                <dd><?php echo $a_appointment->customer_name;?></dd>
                                <dt>Pet Name</dt>
                                <dd><?php echo $a_appointment->pet_name;?></dd>

                                <dt>Reason/Complaint</dt>
                                <dd><?php echo $a_appointment->complaints;?></dd>
                               
                              </dl>

                              <?php if($a_appointment->appointment_status == "Cancelled"):?>
                                <hr>
                                  <dl class="dl-horizontal">
                                    <dt>Date Cancelled</dt>
                                    <dd><?php  $date =date_create($a_appointment->cancel_date);
                                  echo  $cancel_date= date_format($date,"F d, Y h:i:s a");?></dd>
                                    <dt>Cancel Reason</dt>
                                    <dd><?php echo $a_appointment->cancel_reason;;?></dd>
                                 </dl>

                              <?php endif;?>
                          </div>
                          <div class="modal-footer">
                            <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary">Save changes</button>
                          </div>
                        </div>
                        <!-- /.modal-content -->
                      </div>
                      <!-- /.modal-dialog -->
                   </div>
                    <!-- /.modal -->


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
<?php $this->load->view('include_pages_staff/appointment_modal');?>


<script src="<?php echo site_url();?>assets/dist/js/generalscripts.js"></script>
<script src="<?php echo site_url();?>assets/dist/js/databasejson.json"></script>

<script>
      /*var xhttp = new XMLHttpRequest();

      xhttp.onreadystatechange = function(){
        if(this.readyState == 4 && this.status == 200){
          console.log(xhttp.responseText);
        }
      };

      xhttp.open("GET","<?php echo site_url()?>assets/dist/js/databasejson.json",true);
      xhttp.send();
      */
</script>

<!-- footer scripts -->

<!--page scripts -->
<script>





 

</script>


</body>
</html>
