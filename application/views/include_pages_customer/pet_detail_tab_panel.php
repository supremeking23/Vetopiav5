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

          var passwordErrorMessage = $('.passwordErrorMessage');
          var passwordCorrectMessage = $('.passwordCorrectMessage');
         
          passwordErrorMessage.hide();
          passwordCorrectMessage.hide();

          var password = document.getElementById('password');
          var confirmPassword = document.getElementById('confirmPassword');
         

          confirmPassword.addEventListener('keyup',function(){
             if(password.value == confirmPassword.value ){
                  //alert('matched');
                 //confirmPassword.style.backgroundColor ="";
                 $('#password').css('border-color','#00AA08');
                 $('#confirmPassword').css('border-color','#00AA08');
                 passwordCorrectMessage.addClass("alert alert-success");
                 

                 passwordCorrectMessage.html("Password and Confirm Password Matched");
                 passwordErrorMessage.hide();
                 passwordCorrectMessage.show();
                 console.log("Password  Match");
             }else{
                //alert('doesnt matched');
                //confirmPassword.style.backgroundColor ="#ff6666";
                //$('#password').css('border-color','#ff6666');
                $('#confirmPassword').css('border-color','#ff6666');
                passwordErrorMessage.addClass("alert alert-danger");
                passwordErrorMessage.show();
                passwordCorrectMessage.hide();
                passwordErrorMessage.html("Password and Confirm Password Doesnt Matched");
                console.log("Password Dont Match");
             }

          });



            /* initialize the calendar
         -----------------------------------------------------------------*/
        //Date for the calendar events (dummy data)
        var date = new Date()
        var d    = date.getDate(),
            m    = date.getMonth(),
            y    = date.getFullYear()
        $('#calendar').fullCalendar({
          header    : {
            left  : 'prev,next today',
            center: 'title',
            right : 'month,agendaWeek,agendaDay'
          },
          buttonText: {
            today: 'today',
            month: 'month',
            week : 'week',
            day  : 'day'
          },
          //Random default events
          events    : [
            {
              title          : 'All Day Event',
              start          : new Date(y, m, 1),
              backgroundColor: '#f56954', //red
              borderColor    : '#f56954' //red
            },
            {
              title          : 'Long Event',
              start          : new Date(y, m, d - 5),
              end            : new Date(y, m, d - 2),
              backgroundColor: '#f39c12', //yellow
              borderColor    : '#f39c12' //yellow
            },
            {
              title          : 'Meeting',
              start          : new Date(y, m, d, 10, 30),
              allDay         : false,
              backgroundColor: '#0073b7', //Blue
              borderColor    : '#0073b7' //Blue
            },
            {
              title          : 'Lunch',
              start          : new Date(y, m, d, 12, 0),
              end            : new Date(y, m, d, 14, 0),
              allDay         : false,
              backgroundColor: '#00c0ef', //Info (aqua)
              borderColor    : '#00c0ef' //Info (aqua)
            },
            {
              title          : 'Birthday Party',
              start          : new Date(y, m, d + 1, 19, 0),
              end            : new Date(y, m, d + 1, 22, 30),
              allDay         : false,
              backgroundColor: '#00a65a', //Success (green)
              borderColor    : '#00a65a' //Success (green)
            },
            {
              title          : 'Click for Google',
              start          : new Date(y, m, 28),
              end            : new Date(y, m, 29),
              url            : 'http://google.com/',
              backgroundColor: '#3c8dbc', //Primary (light-blue)
              borderColor    : '#3c8dbc' //Primary (light-blue)
            }
          ],
          editable  : true,
          droppable : true, // this allows things to be dropped onto the calendar !!!
          drop      : function (date, allDay) { // this function is called when something is dropped

            // retrieve the dropped element's stored Event Object
            var originalEventObject = $(this).data('eventObject')

            // we need to copy it, so that multiple events don't have a reference to the same object
            var copiedEventObject = $.extend({}, originalEventObject)

            // assign it the date that was reported
            copiedEventObject.start           = date
            copiedEventObject.allDay          = allDay
            copiedEventObject.backgroundColor = $(this).css('background-color')
            copiedEventObject.borderColor     = $(this).css('border-color')

            // render the event on the calendar
            // the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
            $('#calendar').fullCalendar('renderEvent', copiedEventObject, true)

            // is the "remove after drop" checkbox checked?
            if ($('#drop-remove').is(':checked')) {
              // if so, remove the element from the "Draggable Events" list
              $(this).remove()
            }

          }
        })

  </script>




