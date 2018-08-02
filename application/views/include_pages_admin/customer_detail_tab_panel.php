  <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
                  <li class="active"><a href="#settings" data-toggle="tab">Account Setting</a></li>
                 
                  <li><a href="#pets" data-toggle="tab">Pets</a></li>
                  
                   <li ><a href="#logHistory" data-toggle="tab">Log History</a></li>
                </ul>
                <div class="tab-content">

                  <div class="active tab-pane" id="settings">
                    <form class="form-horizontal" action="<?php echo site_url()?>user_management/update_customer_details" method="POST">


                    <?php foreach($customer_details as $c_details):?>

                      <div class="form-group">
                        <label for="customerID" class="col-sm-2 control-label">Customer ID</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $c_details->customer_id;?>" name="customer_id" placeholder="Customer ID" readonly="">
                        </div>
                      </div>

                      <div class="form-group">
                        <label for="firstName" class="col-sm-2 control-label">First Name</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $c_details->firstname;?>" name="firstname" placeholder="First Name">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="middleName" class="col-sm-2 control-label">Middle Name</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $c_details->middlename;?>" name="middlename" placeholder="Middle Name">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="lastName" class="col-sm-2 control-label">Last Name</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $c_details->lastname;?>" name="lastname" placeholder="Last Name">
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
                             <?php echo form_dropdown('gender',$option,$c_details->gender,'class="form-control" required');?>
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label for="birthDate" class="col-sm-2 control-label">Birth Date</label>

                        <div class="col-sm-10">
                          <input type="date" class="form-control" value="<?php echo $c_details->birthdate;?>" name="birthdate" >
                        </div>
                      </div>


                       <div class="form-group">
                        <label for="contact" class="col-sm-2 control-label">Contact Number</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $c_details->contact;?>" name="contact" placeholder="Contact Number">
                        </div>
                      </div>
                      
                       <div class="form-group">
                        <label for="homeAddress" class="col-sm-2 control-label">Home Address</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $c_details->homeAddress;?>" name="homeAddress" placeholder="Home Address">
                        </div>
                      </div>



                      <div class="form-group">
                        <label for="barangayAddress" class="col-sm-2 control-label">Barangay Address</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $c_details->barangayAddress;?>" name="barangayAddress"  placeholder="Barangay Address">
                        </div>
                      </div>


                      <div class="form-group">
                        <label for="cityAddress" class="col-sm-2 control-label">City Address</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $c_details->cityAddress;?>" name="cityAddress" placeholder="City Address">
                        </div>
                      </div>


                       <div class="form-group">
                        <label for="postalID" class="col-sm-2 control-label">Postal ID</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $c_details->postalID;?>" name="postalID" placeholder="Postal ID">
                        </div>
                      </div>


                      <hr />

                      <div class="form-group">
                        <label for="username" class="col-sm-2 control-label">Username</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $c_details->username;?>" name="username" placeholder="Username">
                        </div>
                      </div>


                      <div class="form-group">
                        <label for="password" class="col-sm-2 control-label">Password</label>

                        <div class="col-sm-10">
                          <input type="password" class="form-control" value="<?php echo $c_details->password;?>" name="password" placeholder="Password">
                        </div>
                      </div>


                      <input type="hidden" name="user_id_update" value="<?php echo $c_details->customer_table_id;?>">

                    <?php endforeach;?>

                     
                      <br />

                      <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">

                          <button type="submit" class="btn btn-danger">Submit</button>
                        </div>
                      </div>
                    </form>
                  </div>

                 



                  <div class="tab-pane" id="pets">
                    
                  
                        <table  class="datatables table table-bordered table-striped">
                            <thead>
                            <tr>
                              
                              <th>Pet ID</th>
                              <th>Pet Name</th>
                              <th>Pet Type</th>
                              <th>Breed</th>
                              <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                           
                            <?php foreach($customers_pet as $cus_pet):?>
                                <tr>
                                  
                                  <td><?php echo $cus_pet->pet_id?></td>
                                  <td>
                                    <?php echo $cus_pet->petname?>
                                  </td>
                                   <td>
                                    <?php echo $cus_pet->pettype?>
                                  </td>
                                  <td><?php echo $cus_pet->pet_breed?></td>
                                 
                                  <td>
                                  <a href="<?php echo site_url()?>admin/pet_details/<?php echo $cus_pet->pet_table_id?>" data-tooltip="tooltip" data-title="View Full Detail"  class="btn btn-sm btn-flat btn-warning"><span class="fa fa-paw"></span></a>
                                    
                                  </td>
                               </tr>

                              <?php endforeach; ?>
                            </tbody>
                           
                        </table>
                  </div>
                  <!-- /.tab-pane -->




                    <div class=" tab-pane" id="logHistory">
                        
                        <table  class="datatables table table-bordered table-striped">
                          <thead>
                          <tr>
                            <th>Log Date</th>
                           
                            <th>Action</th>
                          </tr>
                          </thead>
                          <tbody>
                          
                          <?php foreach($user_logs as $logs):?>
                          <tr>
                            <td><?php 

                          $date =date_create($logs->log_date);
                             echo  $log_date_format= date_format($date,"F d, Y h:i:sa");
                           ;?> </td>
                           
                            <td><?php echo $logs->log_action;?>  </td>
                          </tr>
                        <?php endforeach;?>
                          </tbody>
                         
                        </table>
                    </div>
                  <!-- /.tab-pane -->

                
                  <!-- /.tab-pane -->
                </div>
                <!-- /.tab-content -->
  </div>
    <!-- /.nav-tabs-custom -->


  <script>


    /*

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


          */



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




