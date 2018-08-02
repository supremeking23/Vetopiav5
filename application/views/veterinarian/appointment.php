<?php foreach($theme_color as $t_color){

  $skin_color = $t_color->theme_color;
  $settings_id =$t_color->settings_id;

}?>

<!DOCTYPE html>
<html>

<?php $this->load->view('include_pages_vets/page_header');?>

<body class="hold-transition <?php echo $skin_color;?> sidebar-mini" id="appointment">
  <div class="wrapper">


    <?php $this->load->view('include_pages_vets/document_header');?>
   
    <?php $this->load->view('include_pages_vets/sidebar');?>
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
                <h3 class="box-title text-center">Today's Appointment</h3>

              </div>
              <div class="box-body">

              <table  class="datatables table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Time</th>
                  <th>Customer Name</th>
                  <th>Pet Name</th>
                  <th>Pet Type</th>
                 <th>Age</th>
                  <th>Action</th>
                </tr>
                </thead>
                <tbody>
                
                <?php foreach($my_appointment_this_day as $vets_appointment_today):?>
                  <tr>
                    <td><?php echo $vets_appointment_today->preferredtime;?></td>
                    <td><?php echo $vets_appointment_today->customer_name;?></td>
                    <td><?php echo $vets_appointment_today->pet_name;
                    ?> </td>
                    <td><?php echo $vets_appointment_today->pettype;
                    ?> </td>
                    <td>
                      <?php echo $vets_appointment_today->age;?>
                    </td>
                    <td><?php if($vets_appointment_today->tapos_na == 0){ ?>
                    <button type="button" data-toggle="modal" data-target="#checkup<?php echo $vets_appointment_today->appointment_table_id?>" class="btn btn-sm btn-flat btn-primary">Add Record</button>
                    <?php }else{ ?>  
                      <label class="label label-success"> Done</label>
                    <?php }?>
                    </td>
                        <div class="modal fade" id="checkup<?php echo $vets_appointment_today->appointment_table_id?>">
                            <div class="modal-dialog">
                              <div class="modal-content">
                                <div class="modal-header">
                                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span></button>
                                  <h4 class="modal-title">Pet Medical Record
                                   
                                  </h4>
                                </div>

                                <?php echo form_open_multipart('pet_management/add_diagnosis','id=""');?>
                                  <div class="modal-body">
                                    <div class="row">
                                          <div class="col-md-9 offset-md-3">
                                            <div class="row">
                                              <div class="col-md-4">
                                                <b>Pet ID:</b>
                                              </div>
                                              <div class="col-md-8">
                                                <div class="form-group">
                                                  <input type="text" class="form-control" id="pet_data_id" name="pet_data_id" value="<?php echo $vets_appointment_today->pet_id;?>" readonly="true" style="border-radius: 6px;" />  
                                                </div>  
                                              </div>
                                            </div>  
                                          </div>
                                    </div>




                                     <div class="row">
                                          <div class="col-md-9 offset-md-3">
                                            <div class="row">
                                              <div class="col-md-4">
                                                <b>Pet Name:</b>
                                              </div>
                                              <div class="col-md-8">
                                                <div class="form-group">
                                                  <input type="text" class="form-control" id="pet_name" name="pet_name" value="<?php echo $vets_appointment_today->pet_name;?>" readonly="true" style="border-radius: 6px;" />  
                                                </div>  
                                              </div>
                                            </div>  
                                          </div>
                                    </div>


                                 


                                    <div class="row">
                                      <div class="col-md-12">
                                        <label>Customer Description/Complaints : </label> 
                                        <div class="form-group">
                                        <textarea name="complaints" id="complaints" class="form-control" style="height:100px" placeholder="Input Owner Statement"><?php echo $vets_appointment_today->complaints;?></textarea>
                                        </div>
                                      </div>
                                    </div>

                                    <div class="row">
                                      <div class="col-md-12">
                                        <label> Treatment : </label> 
                                        <div class="form-group">
                                        <textarea name="treatment" id="treatment" class="form-control" style="height:100px" placeholder="Input Veterinarian Statement/ Observation / Treatment"></textarea>
                                        </div>
                                      </div>
                                    </div>


                                    <div class="row">
                                      <div class="col-md-12">
                                        <label> Prescription: </label> 
                                        <div class="form-group">
                                        <textarea name="prescription" id="prescription" class="form-control" style="height:100px" placeholder="Prescrition / ">
                                            
                                        </textarea>
                                        </div>
                                      </div>
                                    </div>


                                    <div class="row">
                                  <div class="col-md-12">
                                        <label> Pet Services: </label> 
                                           <?php 
                                      $pettype = $vets_appointment_today->pettype;
                                      $is_adult = $vets_appointment_today->is_adult;
                                      
                                      if($pettype == "Dog" && $is_adult == 1){
                                        //echo "Pet Services"; ?>
                                        <div class="form-group">



                                        <select name="services" class="form-control select2" required="" style="width: 100%;min-height: 150px;max-height: 150px;overflow-y: auto;">

                                          <option value="0">General Checkup</option>
                                        
                                          <?php foreach($get_pet_services_for_adult_dogs as $s_dogs):?>
                                                                       <!-- checkbox -->
                                            <option value="<?php echo $s_dogs->adult_dog_prog_id;?>"><?php echo $s_dogs->adult_dog_prog_name;?></option>
                               
                                          <?php endforeach;?>
                                         </select>

                                         
                                        </div>

                                      <?php }else if($pettype == "Dog" && $is_adult == 0){
                                       // echo "puppies"; ?>

                                       <div class="form-group">

                                        <select name="services" class="form-control select2" required="" style="width: 100%;min-height: 150px;max-height: 150px;overflow-y: auto;">


                                          <option value="0">General Checkup</option>
                                        
                                          <?php foreach($get_pet_services_puppies as $s_pups):?>
                                                                       <!-- checkbox -->
                                            <option value="<?php echo $s_pups->puppies_prog_id;?>"><?php echo $s_pups->puppies_prog_name;?></option>
                               
                                          <?php endforeach;?>
                                         </select>

                                     
                                        </div>

                                      <?php }else if($pettype == "Cat" && $is_adult == 1){
                                        //echo "Cat";?>


                                      <div class="form-group">

                                        <select name="services" class="form-control select2" required="" style="width: 100%;min-height: 150px;max-height: 150px;overflow-y: auto;">


                                          <option value="0">General Checkup</option>
                                        
                                          <?php foreach($get_pet_services_cats as $s_cats):?>
                                                                       <!-- checkbox -->
                                            <option value="<?php echo $s_cats->cats_prog_id;?>"><?php echo $s_pups->cats_prog_name;?></option>
                               
                                          <?php endforeach;?>
                                         </select>
                                      </div>


                                      <?php }else if($pettype == "Cat" && $is_adult == 0){
                                       // echo "Kitten"; ?>

                                      <div class="form-group">

                                        <select name="services" class="form-control select2" required="" style="width: 100%;min-height: 150px;max-height: 150px;overflow-y: auto;">

                                          <option value="0">General Checkup</option>
                                        
                                          <?php foreach($get_pet_services_kittens as $s_kittens):?>
                                                                       <!-- checkbox -->
                                            <option value="<?php echo $s_cats->cats_prog_id;?>"><?php echo $s_kittens->kittens_prog_name;?></option>
                               
                                          <?php endforeach;?>
                                         </select>
                                      </div>

                                      <?php }
                                    ?>
                                    </div>
                                </div>

                                   




                                   
                                 <?php //other data?>
                                 <input type="hidden" name="date" value="<?php echo $vets_appointment_today->preferredDate;?>">

                                 <input type="hidden" name="time" value="<?php echo $vets_appointment_today->preferredtime;?>">

                                 <input type="hidden" name="appointment_id" value="<?php echo $vets_appointment_today->appointment_id;?>">

                                 <input type="hidden" name="veterinarian" value="<?php echo $this->session->userdata('complete_name');?>">

                                 <input type="hidden" name="vet_id" value="<?php echo $this->session->userdata("user_id");?>">


                                 <input type="hidden" name="pet_id" value="<?php echo $vets_appointment_today->pet_id;?>">
                                 <input type="hidden" name="pet_name" value="<?php echo $vets_appointment_today->pet_name;?>">

                                 <input type="hidden" name="age" value="<?php echo $vets_appointment_today->age;?>">
                                 
                                 <input type="hidden" name="pettype" value="<?php echo $pettype;?>">
                                 <input type="hidden" name="is_adult" value="<?php echo $is_adult;?>">

                                  </div>
                                  <div class="modal-footer">
                                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                                    <input type="submit" class="btn btn-primary" name="submit" value="Save">
                                  </div>

                                <?php echo form_close();?>
                              </div>
                              <!-- /.modal-content -->
                            </div>
                            <!-- /.modal-dialog -->
                        </div>
                        <!-- /.modal -->  






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
     
      </section>
      <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <footer class="main-footer">
      <div class="pull-right hidden-xs">
        <b></b> 
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
<?php //$this->load->view('include_pages_admin/appointment_modal');?>


<script src="<?php echo site_url();?>assets/dist/js/generalscripts.js"></script>


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


    //iCheck for checkbox and radio inputs
    $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
      checkboxClass: 'icheckbox_minimal-blue',
      radioClass   : 'iradio_minimal-blue'
    })
    //Red color scheme for iCheck
    $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
      checkboxClass: 'icheckbox_minimal-red',
      radioClass   : 'iradio_minimal-red'
    })
    //Flat red color scheme for iCheck
    $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
      checkboxClass: 'icheckbox_flat-green',
      radioClass   : 'iradio_flat-green'
    })

</script>


</body>
</html>
