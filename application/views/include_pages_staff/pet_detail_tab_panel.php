  <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
               
                  
                  <li class="active"><a href="#changePetInfo" data-toggle="tab">Change Pet Information</a></li>
                  <li ><a href="#checkupHistory" data-toggle="tab">Checkup History</a></li>

                </ul>
                <div class="tab-content">

                  <div class="tab-pane active" id="changePetInfo">
                   
                   <?php foreach($pet_details as $p_detail):?>
                    <form class="form-horizontal" action="<?php echo site_url()?>pet_management/update_pet_details_staff_action" method="POST">



                      <div class="form-group">
                        <label for="customerID" class="col-sm-2 control-label">Pet ID</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="pet_id" placeholder="Pet ID" readonly="" value="<?php echo $p_detail->pet_id;?>">
                        </div>
                      </div>

                      <div class="form-group">
                        <label for="customer_id" class="col-sm-2 control-label">Customer Name</label>

                        <div class="col-sm-10">
                            <select name="customer_id" class="form-control select2"  style="width: 100%;min-height: 150px;max-height: 150px;overflow-y: auto;">
                                  
                                  <?php foreach($all_customers as $customer):?>
                                    <option value="<?php echo $customer->customer_table_id; ?>"
                                      <?php if($customer->customer_table_id == $p_detail->customer_table_id){echo "selected";} ?> ><?php echo $customer->firstname.' '.$customer->middlename.' '.$customer->lastname;?></option>

                                 <?php endforeach;?>
                            </select>
                        </div>
                      </div>

                       <div class="form-group">
                        <label for="petname" class="col-sm-2 control-label">Pet Name</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="petname" name="petname" placeholder="Pet Name" value="<?php echo $p_detail->petname;?>">
                        </div>
                      </div>

                      <!--emergency -->

                      <?php $pet_breedAndType = $this->pet_management_model->get_pet_by_id_2($p_detail->pet_table_id);

                        foreach ($pet_breedAndType as $breedandtype) {
                            $pettype_id_of_pet = $breedandtype->pettype;
                             $breed_id_of_pet = $breedandtype->breed;
                            

                        }
                      ?>

                      <div class="form-group">
                        <label for="pettype" class="col-sm-2 control-label">Pet Type</label>

                        <div class="col-sm-10">
                         
                              <select name="pet_type" class="form-control select2"  style="width: 100%;min-height: 150px;max-height: 150px;overflow-y: auto;">
                                  
                                  <?php foreach($all_pettype as $pettypes):?>
                                   <option value="<?php echo $pettypes->pettype_id;?>"
                                        <?php if($pettypes->pettype_id == $pettype_id_of_pet){echo "selected";} ?> ><?php echo $pettypes->pettype;?></option>
                                  <?php endforeach;?>

                            </select>

                        </div>
                      </div>
                      <div class="form-group">
                        <label for="breed" class="col-sm-2 control-label">Pet Breed</label>

                        <div class="col-sm-10">
                           

                             <select name="breed" class="form-control select2" style="width: 100%;min-height: 150px;max-height: 150px;overflow-y: auto;">
                                  
                                
                            </select>
                        </div>

                        <input type="hidden" name="breed_init" value="<?php echo $breed_id_of_pet;?>">
                      </div>
                      
                      <div class="form-group">
                        <label for="birthDate" class="col-sm-2 control-label">Birth Date</label>

                        <div class="col-sm-10">
                          <input type="date" class="form-control" name="birthdate" value="<?php echo $p_detail->birthdate;?>">
                        </div>
                      </div>


                      <div class="form-group">
                        <label for="gender" class="col-sm-2 control-label">Gender</label>

                        <div class="col-sm-10">

                             <?php //option for  gender
                                $option = array(
                                  
                                    "Male" => "Male",
                                    "Female" => "Female",
                                    
                                );
                            ?>

                      <?php //parameters(attribute name , options,selected option,added attibute ex:class,required)?>
                             <?php echo form_dropdown('gender',$option,$p_detail->gender,'class="form-control" ');?>
                              
                        </div>
                      </div>


                    

                      <input type="hidden" name="pet_id_update" value="<?php echo $p_detail->pet_table_id;?>">
                    
                     
                      <br />

                      <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                          <button type="submit" class="btn btn-danger">Submit</button>
                        </div>
                      </div>
                    </form>


                    

                        <?php endforeach;?>
                  </div>
                  

                <div class="tab-pane " id="checkupHistory">
                        
                            <table  class="datatables table table-bordered table-striped">
                              <thead>
                              <tr>
                                <th>Date</th>
                                <th>Time</th>
                                <th>Veterinarian</th>
                               
                                <th>Action</th>
                              </tr>
                              </thead>
                              <tbody>
                              
                              <?php 
                                 $id = $this->uri->segment(3);

                                 $get_pet_id = $this->pet_management_model->get_pet_by_id($id);

                                foreach($get_pet_id as $g_pet_id){
                                  $pet_id = $g_pet_id->pet_id;
                                }


                                $get_appointment_detail_by_pet_id = $this->appointment_management->get_all_appointment_by_pet_id($pet_id);

                              ?>
                              

                              <?php foreach($get_appointment_detail_by_pet_id as $appointment_detail):?>

                                <tr>
                                  
                                  <td><?php  $date =date_create($appointment_detail->preferredDate);
                                    echo  $preferred_date= date_format($date,"F d, Y");?></td>
                                  <td><?php echo $appointment_detail->preferredtime;?></td>
                                  <td><?php echo $appointment_detail->vet_in_charge;?></td>
                                  <td><button type="button" class="btn btn-flat btn-sm btn-info" data-toggle="modal" data-target="#detailAppointment<?php echo $appointment_detail->appointment_table_id?>">View Details</button></td>

                                  

                                  <div class="modal fade" id="detailAppointment<?php echo $appointment_detail->appointment_table_id?>">
                                      <div class="modal-dialog">
                                        <div class="modal-content">
                                          <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                              <span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title">Appointment Detail </h4>
                                          </div>
                                          <div class="modal-body">

                                            <?php //checkup details
                                              $checkup_detail = $this->pet_management_model->get_pet_service_by_pet_id($pet_id);


                                              foreach($checkup_detail as $c_detail){
                                                 $complaints = $c_detail->complaints;
                                                 $treatment = $c_detail->treatment;
                                                 $prescription = $c_detail->prescription;
                                              }

                                            ?>


                                            <?php if($appointment_detail->tapos_na == 1){?>

                                              <dl class="dl-horizontal">
                                              <?php $checkup_detail = 1;?>

                                                <dt>Reason/Complaint</dt>
                                                <dd><?php echo $complaints;?></dd>
                                                <dt>Treatment</dt>
                                                <dd><?php echo $treatment;?></dd>
                                                 <dt>Prescription</dt>
                                                <dd><?php echo $prescription;?></dd>
                                               
                                              </dl>

                                              <?php }else{ ?>

                                               <dl class="dl-horizontal">
                                                  <dt>Reason/Complaint</dt>
                                                  <dd>N/A</dd>
                                                  <dt>Treatment</dt>
                                                  <dd>N/A</dd>
                                                  <dt>Prescription</dt>
                                                  <dd>N/A</dd>
                                               </dl>

                                             <?php }?>

                                              <?php if($appointment_detail->appointment_status == "Cancelled"):?>
                                                <hr>
                                                  <dl class="dl-horizontal">
                                                    <dt>Date Cancelled</dt>
                                                    <dd><?php  $date =date_create($appointment_detail->cancel_date);
                                                  echo  $cancel_date= date_format($date,"F d, Y h:i:s a");?></dd>
                                                    <dt>Cancel Reason</dt>
                                                    <dd><?php echo $appointment_detail->cancel_reason;?></dd>
                                                 </dl>

                                              <?php endif;?>



                                              <?php if($appointment_detail->tapos_na == 1):?>

                                                <?php //echo $a_appointment->appointment_id;?>

                                                <?php 

                                                //echo $a_appointment->$appointment_id;
                                                $tapos_na_detail =  $this->pet_management_model->get_pet_service_by_appointment_id($appointment_detail->appointment_id);?>


                                                <?php foreach($tapos_na_detail as $tn_d):?>
                                                  <hr>
                                                  <dl class="dl-horizontal">
                                                    <dt>Services</dt>
                                                    <dd><?php echo $tn_d->all_services?></dd>
                                                    <dt>Service Fee</dt>
                                                    <dd>₱<?php echo $tn_d->service_fee;?></dd>
                                                 </dl>

                                                <?php endforeach;?>
                                                  
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

                                </tr>


                              <?php endforeach;?>
                              
                              </tbody>
                             
                            </table>
                  </div><!--checkup -->
             

                 
                  <!-- /.tab-pane -->
                </div>
                <!-- /.tab-content -->
  </div>
    <!-- /.nav-tabs-custom -->


  <script>

     $(document).ready(function() {



      var hidden_init = $('input[name="breed_init"]').val();
      console.log(hidden_init);
      //$('#breed').hide();
      //var stateID = $(this).val();
        var typeID = $('select[name="pet_type"]').val();
        //alert('session' + typeID);
        console.log(typeID)


         if(typeID) {

                
                $.ajax({

                    url: '<?php echo base_url('admin/pet_breed/')?>'+typeID,

                    type: "GET",

                    dataType: "json",

                    success:function(data) {



                        $('select[name="breed"]').empty();
                         $.each(data, function(key, value) {

                              var added_att = "";
                              if(hidden_init == value.breed_id){
                                  added_att = "selected";
                              }else{
                                  added_att = "";
                              }

                            $('select[name="breed"]').append('<option value="'+ value.breed_id +'" '+ added_att +'>'+ value.pet_breed +'</option>');

                        });

                    }

                });

            }



        

          $('#breed').hide(); 

          $('select[name="pet_type"]').on('change', function() {

            var pet_type = $(this).val();

            if(pet_type) {

                 $('#breed').show(); 
                 
                 $.ajax({

                    url: '<?php echo base_url('admin/pet_breed/')?>'+pet_type,

                    type: "GET",

                    dataType: "json",

                    success:function(data) {

                        $('select[name="breed"]').empty();
                         $.each(data, function(key, value) {

                            $('select[name="breed"]').append('<option value="'+ value.breed_id +'">'+ value.pet_breed +'</option>');

                        });

                    }

                  });

            }else{

                $('select[name="breed"]').empty();

            }

        });



    //modal test
     

    });

  </script>




