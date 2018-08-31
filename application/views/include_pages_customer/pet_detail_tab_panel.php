  <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
               
                  
                 
                  <li class="active"><a href="#checkupHistory" data-toggle="tab">Checkup History</a></li>

                </ul>
                <div class="tab-content">

                

                  <div class="tab-pane active" id="checkupHistory">
                        
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
                                              $checkup_detail = $this->pet_management_model->get_prescription_by_appointment_table_id($appointment_detail->appointment_table_id);


                                              foreach($checkup_detail as $c_detail){
                                                 $complaints = $c_detail->complaints;
                                                 $treatment = $c_detail->treatment;
                                                 $prescription = $c_detail->prescription;
                                                 /*$service_get = $c_detail->service_name;
                                                 $service_fee = $c_detail->service_fee;*/
                                              }

                                            ?>


                                           

                                             <?php if($appointment_detail->appointment_status != "Cancelled" AND $appointment_detail->appointment_status !="Confirmed" AND  $appointment_detail->appointment_status !="On-Process"):?>
                                               <dl class="dl-horizontal">
                                                <?php //$checkup_detail = 1;?>

                                                <!--  <dt>Reason/Complaint</dt>
                                                  <dd><?php echo $complaints;?></dd>
                                                  <dt>Treatment</dt>
                                                  <dd><?php echo $treatment;?></dd> -->
                                                   <dt>Prescription</dt>
                                                  <dd><?php echo $prescription;?></dd>
                                                  <dt>Services</dt>

                                                  <?php $services = $this->pet_management_model->get_services_by_checkup_id($c_detail->checkup_id);

                                                        $service_fee = 0;
                                                        foreach($services as $s):
                                                        
                                                  ?>

                                                  <dd ><?php echo $s->service_name;?> = ₱<?php echo $s->service_fees;?></dd>
                                                  <?php 
                                                  $service_format = $service_fee + $s->service_fees;
                                                  $service_fee = number_format($service_format,2);
                                                endforeach; //end service?>
                                  
                                                 <dt>Total Fee</dt>
                                                 <dd>₱<?php echo $service_fee;?><dd/>
                                              </dl>
                                             <?php endif;?>

                                            <!-- 

                                               <?php if($appointment_detail->is_finished == 1){?>
                                             <?php }else{ ?>

                                               <dl class="dl-horizontal">
                                                  <dt>Reason/Complaint</dt>
                                                  <dd>N/A</dd>
                                                  <dt>Treatment</dt>
                                                  <dd>N/A</dd>
                                                  <dt>Prescription</dt>
                                                  <dd>N/A</dd>
                                               </dl>

                                             <?php }?> -->

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



                                           
                                          </div>
                                          <div class="modal-footer">
                                           <!-- <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                                           <?php if($appointment_detail->appointment_status != "Cancelled" AND $appointment_detail->appointment_status !="Confirmed" AND  $appointment_detail->appointment_status !="On-Process"):?> <a class="btn btn-primary btn-sm btn-flat" href="<?php echo site_url();?>pet_management/print_prescription" target="_blank">Print Priscription khkj</a> <?php endif;?> -->
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




