  <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
               
                  
                  
                  <li class="active"><a href="#settings" data-toggle="tab">Account Setting</a></li>
                  <li ><a href="#logHistory" data-toggle="tab">Log History</a></li>
                </ul>
                <div class="tab-content">
                  <div class="active tab-pane" id="settings">
                    <form class="form-horizontal" action="<?php echo site_url()?>user_management/update_admin_details" method="POST">


                    <?php foreach($admin_details as $a_details):?>

                      <div class="form-group">
                        <label for="adminID" class="col-sm-2 control-label">Admin ID</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $a_details->admin_id;?>" name="admin_id" placeholder="Admin ID" id="admin_id" readonly="">
                        </div>
                      </div>

                      <div class="form-group">
                        <label for="firstName" class="col-sm-2 control-label">First Name</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $a_details->firstname;?>" name="firstname" placeholder="First Name">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="middleName" class="col-sm-2 control-label">Middle Name</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $a_details->middlename;?>" name="middlename" placeholder="Middle Name">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="lastName" class="col-sm-2 control-label">Last Name</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $a_details->lastname;?>" name="lastname" placeholder="Last Name">
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
                             <?php echo form_dropdown('gender',$option,$a_details->gender,'class="form-control" required');?>
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label for="birthDate" class="col-sm-2 control-label">Birth Date</label>

                        <div class="col-sm-10">
                          <input type="date" class="form-control" value="<?php echo $a_details->birthdate;?>" name="birthdate" >
                        </div>
                      </div>


                       <div class="form-group">
                        <label for="contact" class="col-sm-2 control-label">Contact Number</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $a_details->contact;?>" name="contact" placeholder="Contact Number">
                        </div>
                      </div>

                       <div class="form-group">
                        <label for="email" class="col-sm-2 control-label">Email</label>

                        <div class="col-sm-10">
                          <input type="email" class="form-control" value="<?php echo $a_details->email;?>" name="email" placeholder="Email">
                        </div>
                      </div>                     
                      
                       <div class="form-group">
                        <label for="homeAddress" class="col-sm-2 control-label">Home Address</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $a_details->homeAddress;?>" name="homeAddress" placeholder="Home Address">
                        </div>
                      </div>



                      <div class="form-group">
                        <label for="barangayAddress" class="col-sm-2 control-label">Barangay Address</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $a_details->barangayAddress;?>" name="barangayAddress"  placeholder="Barangay Address">
                        </div>
                      </div>


                      <div class="form-group">
                        <label for="cityAddress" class="col-sm-2 control-label">City Address</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $a_details->cityAddress;?>" name="cityAddress" placeholder="City Address">
                        </div>
                      </div>


                       <div class="form-group">
                        <label for="postalID" class="col-sm-2 control-label">Zip Code</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $a_details->postalID;?>" name="postalID" placeholder="Zip Code">
                        </div>
                      </div>


                      <hr />


                      <?php $get_credentials_by_user_id = $this->admin_management->get_credentials_by_user_id($a_details->admin_id);
                            foreach($get_credentials_by_user_id as $credentials){
                             $username=  $credentials->username;
                              $password = $credentials->password;
                            }
                      ?>

                      <div class="form-group">
                        <label for="username" class="col-sm-2 control-label">Username</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $username;?>" name="username" placeholder="Username">
                        </div>
                      </div>


                      <div class="form-group">
                        <label for="password" class="col-sm-2 control-label">Password</label>

                        <div class="col-sm-10">
                          <input type="password" id="password" class="form-control " value="<?php echo $password;?>" name="password" placeholder="Password">
                          <br/>
                           <button class="btn btn-sm btn-warning btn-flat" id="showPass" type="button"><span id="maskMark"><b>show</b></span></button>
                        </div>
                                         
                      </div>


                      <input type="hidden" name="user_id_update" value="<?php echo $a_details->admin_table_id;?>">

                    <?php endforeach;?>

                     
                      <br />

                      <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">

                          <button type="submit" class="btn btn-danger">Submit</button>
                        </div>
                      </div>
                    </form>
                  </div>
                  <!-- /.tab-pane -->
                   <div class=" tab-pane" id="logHistory">
                        <?php 
                          $datatable = "";
                          if($this->session->userdata('account_type') == "Super Admin"){
                            $datatable = "datatablelogadmin";
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
                            <td>

                            <?php 

                             $date =date_create($logs->log_date);
                             echo  $log_date_format= date_format($date,"F d, Y h:i:sa");
                           ;?>
                              </td>
                           
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
 

    $('.datatablelogadmin').DataTable( {
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
              title: 'Log Report for Admin <?php echo $logs->log_user;?>' ,
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
               title: 'Log Report for Admin <?php echo $logs->log_user;?>' ,
               message: 'Issued by <?php echo $this->session->userdata('complete_name');?> Date: <?php  
                $now = date('Y-m-d H:i:s');
                 $date =date_create($now);
                echo  $log_date_format= date_format($date,"F d, Y h:i:sa");
                ?>',
  
            },

            {
               extend: 'csvHtml5',
               title: 'Log Report for Admin <?php echo $logs->log_user;?>' ,
               message: 'Issued by <?php echo $this->session->userdata('complete_name');?> Date: <?php  
                $now = date('Y-m-d H:i:s');
                 $date =date_create($now);
                echo  $log_date_format= date_format($date,"F d, Y h:i:sa");
                ?>',
               
            },

                ]
    } );


  });


  </script>




