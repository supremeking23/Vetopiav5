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
                                  <td><?php echo $appointment_detail->vet_in_charge; //echo $appointment_detail->appointment_table_id;?> </td>
                                  <td><?php if($appointment_detail->appointment_status != "Pending"):?>
                                      <button type="button" class="btn btn-flat btn-sm btn-info" data-toggle="modal" data-target="#detailAppointment<?php echo $appointment_detail->appointment_table_id?>">View Details</button>
                                    <?php endif;?>

                                        <div class="modal fade" id="detailAppointment<?php echo $appointment_detail->appointment_table_id?>">
                                            <div class="modal-dialog">
                                              <div class="modal-content">
                                                <div class="modal-header">
                                                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span></button>
                                                  <h4 class="modal-title">Checkup Detail </h4>
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
                                                       $checkup_id = $c_detail->checkup_id;
                                                       $possible_cause  =$c_detail->possible_cause;
                                                    }

                                                  ?>


                                                

                                                   
                                                            <table width="100%" class="table table-striped table-bordered table-hover">
                                                              <tbody>

                                                                <?php if($appointment_detail->appointment_status != "Cancelled" AND $appointment_detail->appointment_status !="Confirmed" AND  $appointment_detail->appointment_status !="On-Process"):?>
                                                                <tr>
                                                                  <td><b>Customer Name</b></td>
                                                                  <td><?php echo $appointment_detail->customer_name ?></td>
                                                                </tr>
                                                                <tr>
                                                                  <td><b>Reason/Complaints:</b></td>
                                                                  <td><?php echo $complaints?></td>
                                                                </tr>
                                                                <tr>
                                                                  <td><b>Treatments:</b></td>
                                                                  <td><?php echo $treatment;?></td>
                                                                </tr> 
                                                                <tr>
                                                                  <td><b>Prescriptions:</b></td>
                                                                  <td><?php echo $prescription;?></td>
                                                                </tr> 
                                                               <tr>
                                                                  <td><b>Possible Cause:</b></td>
                                                                  <td><?php echo $possible_cause;?></td>
                                                                </tr>                                                              
                                                                <tr>
                                                                  <td><b>Services</b></td>
                                                                  <td><?php $services = $this->pet_management_model->get_services_by_checkup_id($checkup_id);
                                                                  $service_fee = 0;
                                                                 ?>

                                                                  <ul>
                                                                    
                                                                  <?php  foreach($services as $s):?>
                                                                    
                                                                    <li><?php echo $s->service_name;?>
                                                                  </li>
                                                                   <?php 
                                                                
                                                                  endforeach; //end service?>
                                                                  </ul>
                                                                 </td>
                                                                </tr>                                                                

                                                                <?php endif;?>


                                                                <?php if($appointment_detail->appointment_status == "Cancelled"):?>
                                                                  <tr>
                                                                    <td><b>Date Cancelled:</b></td>
                                                                    <td><?php  $date =date_create($appointment_detail->cancel_date);
                                                                         echo  $cancel_date= date_format($date,"F d, Y h:i:s a");?></td>
                                                                  </tr>
                                                                  <tr>
                                                                    <td><b>Cancel Reason</b></td>
                                                                    <td><?php echo $appointment_detail->cancel_reason;?></td>
                                                                  </tr>
                                                               
                                                               <?php endif;?>
                                                              </tbody>
                                                                     
                                                            </table>  

                                                      
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
                                  </td>

                                  


                                  

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




