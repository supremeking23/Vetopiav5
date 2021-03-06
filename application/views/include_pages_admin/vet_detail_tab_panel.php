  <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
               
                  
                  
                  <li class="active"><a href="#settings" data-toggle="tab">Account Setting</a></li>
                  <li ><a href="#logHistory" data-toggle="tab">Log History</a></li>
                </ul>
                <div class="tab-content">
                  <div class="active tab-pane" id="settings">
                    <form class="form-horizontal" action="<?php echo site_url()?>user_management/update_vet_details" method="POST">


                    <?php foreach($vet_details as $v_details):?>

                      <div class="form-group">
                        <label for="veterinarian_id" class="col-sm-2 control-label">Veterinarian ID</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $v_details->veterinarian_id;?>" name="veterinarian_id" id="veterinarian_id" placeholder="Veterinarian ID" readonly="" style="border-radius: 15px">
                        </div>
                      </div>

                      <div class="form-group">
                        <label for="firstName" class="col-sm-2 control-label">First Name</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $v_details->firstname;?>" name="firstname" placeholder="First Name" style="border-radius: 15px">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="middleName" class="col-sm-2 control-label" >Middle Name</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $v_details->middlename;?>" name="middlename" placeholder="Middle Name" style="border-radius: 15px">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="lastName" class="col-sm-2 control-label">Last Name</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $v_details->lastname;?>" name="lastname" placeholder="Last Name" style="border-radius: 15px">
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
                             <?php echo form_dropdown('gender',$option,$v_details->gender,'class="form-control" required style="border-radius: 15px"');?>
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label for="birthDate" class="col-sm-2 control-label">Birth Date</label>

                        <div class="col-sm-10">
                          <input type="date" class="form-control" value="<?php echo $v_details->birthdate;?>" name="birthdate"style="border-radius: 15px" >
                        </div>
                      </div>


                       <div class="form-group">
                        <label for="contact" class="col-sm-2 control-label">Contact Number</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $v_details->contact;?>" name="contact" placeholder="Contact Number" style="border-radius: 15px">
                        </div>
                      </div>
                       <div class="form-group">
                        <label for="email" class="col-sm-2 control-label">Email</label>

                        <div class="col-sm-10">
                          <input type="email" class="form-control" value="<?php echo $v_details->email;?>" name="email" placeholder="Email" style="border-radius: 15px">
                        </div>
                      </div> 
                      
                       <div class="form-group">
                        <label for="homeAddress" class="col-sm-2 control-label">Home Address</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $v_details->homeAddress;?>" name="homeAddress" placeholder="Home Address" style="border-radius: 15px">
                        </div>
                      </div>



                      <div class="form-group">
                        <label for="barangayAddress" class="col-sm-2 control-label">Barangay Address</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $v_details->barangayAddress;?>" name="barangayAddress"  placeholder="Barangay Address" style="border-radius: 15px">
                        </div>
                      </div>


                      <div class="form-group">
                        <label for="cityAddress" class="col-sm-2 control-label">City Address</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $v_details->cityAddress;?>" name="cityAddress" placeholder="City Address" style="border-radius: 15px">
                        </div>
                      </div>


                       <div class="form-group">
                        <label for="postalID" class="col-sm-2 control-label">Zip Code</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $v_details->postalID;?>" name="postalID" placeholder="Zip Code"style="border-radius: 15px">
                        </div>
                      </div>


                        <div class="form-group">
                        <label for="vetbio" class="col-sm-2 control-label">Vet Bio</label>

                        <div class="col-sm-10">
                         <textarea name="vetbio" class="form-control textareas"  style="border-radius: 15px"><?php echo $v_details->vetbio;?></textarea>
                        </div>
                      </div>


                      <hr />

                      <?php $get_credentials_by_user_id = $this->admin_management->get_credentials_by_user_id($v_details->veterinarian_id);
                            foreach($get_credentials_by_user_id as $credentials){
                             $username=  $credentials->username;
                              $password = $credentials->password;
                            }
                      ?>

                      <div class="form-group">
                        <label for="username" class="col-sm-2 control-label">Username</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $username;?>" name="username" placeholder="Username" style="border-radius: 15px">
                        </div>
                      </div>


                      <div class="form-group">
                        <label for="password" class="col-sm-2 control-label">Password</label>

                        <div class="col-sm-10">
                          <input type="password" id="password" class="form-control" value="<?php echo $password;?>" name="password" placeholder="Password" style="border-radius: 15px">
                          <button class="btn btn-sm btn-warning btn-flat" id="showPass" type="button" style="border-radius: 15px;margin-top: 10px"><span id="maskMark"><b>show</b></span></button>
                        </div>
                      </div>


                      <input type="hidden" name="user_id_update" value="<?php echo $v_details->veterinarian_table_id;?>" >

                    <?php endforeach;?>

                     
                      <br />

                      <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">

                          <button type="submit" class="btn btn-danger btn-sm btn-flat" style="border-radius: 15px">Submit</button>
                        </div>
                      </div>
                    </form>
                  </div>
                  <!-- /.tab-pane -->
                   <div class=" tab-pane" id="logHistory">
                    <?php 
                          $datatable = "";
                          if($this->session->userdata('account_type') == "Super Admin"){
                            $datatable = "datatablelogvet";
                          }else{
                            $datatable = "datatables";
                          }
                    ?>
                       <table  class="<?php echo $datatable;?> table table-bordered table-striped">
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
                </div>
                <!-- /.tab-content -->
  </div>
    <!-- /.nav-tabs-custom -->


  <script>



  $(function(){

    $('.datatablelogvet').DataTable( {
        'ordering'    : false,
        "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
        'paging'      : true,
        'info'        : true,
        dom: 'Bfrtip',
        /*buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ],*/

        buttons: [
            {
              extend: 'pdfHtml5',
              title: 'Log Report for Doctor: <?php echo $logs->log_user;?>' ,
               message: 'Issued by <?php echo $this->session->userdata('complete_name');?> Date: <?php  
                $now = date('Y-m-d H:i:s');
                 $date =date_create($now);
                echo  $log_date_format= date_format($date,"F d, Y h:i:sa");
                ?>',
              customize: function(doc) {
                //setHeader2();
                doc.styles.title = {
                  color: '',
                  fontSize: '40',
                  background: '',
                  alignment: 'center'
                }   
              }  
            },

             {
               extend: 'excelHtml5',
               title: 'Log Report for Doctor <?php echo $logs->log_user;?>' ,
                message: 'Issued by <?php echo $this->session->userdata('complete_name');?> Date: <?php  
                $now = date('Y-m-d H:i:s');
                 $date =date_create($now);
                echo  $log_date_format= date_format($date,"F d, Y h:i:sa");
                ?>',
  
            },

            {
               extend: 'csvHtml5',
               title: 'Log Report for Doctor <?php echo $logs->log_user;?>' ,
               message: 'Issued by <?php echo $this->session->userdata('complete_name');?> Date: <?php  
                $now = date('Y-m-d H:i:s');
                 $date =date_create($now);
                echo  $log_date_format= date_format($date,"F d, Y h:i:sa");
                ?>',
               
            },

                ]
    } );
  });


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



  </script>




