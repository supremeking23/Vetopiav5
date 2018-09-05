  <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
                  <li class="active"><a href="#settings" data-toggle="tab">Account Setting</a></li>
                 
                  <li><a href="#pets" data-toggle="tab">Pets</a></li>
                  
                   <li ><a href="#logHistory" data-toggle="tab">Log History</a></li>
                </ul>
                <div class="tab-content">

                  <div class="active tab-pane" id="settings">
                    <form class="form-horizontal" action="<?php echo site_url()?>user_management/update_customer_details_staff_action" method="POST">


                    <?php foreach($customer_details as $c_details):?>

                      <div class="form-group">
                        <label for="customerID" class="col-sm-2 control-label">Customer ID</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $c_details->customer_id;?>" id="customer_id" name="customer_id" placeholder="Customer ID" readonly="">
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
                        <label for="email" class="col-sm-2 control-label">Email</label>

                        <div class="col-sm-10">
                          <input type="email" class="form-control" value="<?php echo $c_details->email;?>" name="email" placeholder="Email">
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

                      <?php $get_credentials_by_user_id = $this->admin_management->get_credentials_by_user_id($c_details->customer_id);
                            foreach($get_credentials_by_user_id as $credentials){
                             $username=  $credentials->username;
                              $password = $credentials->password;
                            }
                      ?>

                      <div class="form-group">
                        <label for="username" class="col-sm-2 control-label">Username</label>

                        <div class="col-sm-10">
                          <input type="text" id="username" class="form-control" value="<?php echo $username;?>" name="username" placeholder="Username">
                        </div>
                      </div>


                      <div class="form-group">
                        <label for="password" class="col-sm-2 control-label">Password</label>

                        <div class="col-sm-10">
                          <input type="password" id="password" class="form-control " value="<?php echo $password;?>" name="password" placeholder="Password">
                           <button class="btn btn-sm btn-warning btn-flat" id="showPass" type="button"><span id="maskMark"><b>show</b></span></button>
                        </div>
                      </div>


                      <input type="hidden" id="user_id_update" name="user_id_update" value="<?php echo $c_details->customer_table_id;?>">

                    <?php endforeach;?>

                     
                      <br />

                      <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">

                          <button type="submit" class="btn btn-danger">Submit</button>
                        </div>
                      </div>
                    </form>
                  </div>

                 



                  <div class="tab-pane table-responsive" id="pets">

                    <button style="margin-bottom: 15px" class="btn btn-sm btn-primary btn-flat" data-toggle="modal" data-target="#addPetAjax">Add Pet</button>
          

                        <table class="datatables table table-bordered table-striped">
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
                                 <!-- <a href="<?php echo site_url()?>staff/pet_details/<?php echo $cus_pet->pet_table_id?>" data-tooltip="tooltip" data-title="View Full Detail"  class="btn btn-sm btn-flat btn-warning"><span class="fa fa-paw"></span></a> -->
                                     <a href="<?php echo site_url()?>Admin/Pet_details/<?php echo $cus_pet->pet_table_id?>" data-tooltip="tooltip" data-title="View Full Detail"  class="btn btn-sm btn-flat btn-info">View Full Detail</a>
                                  </td>
                               </tr>

                              <?php endforeach; ?>
                            </tbody>
                           
                        </table>
                  </div>
                  <!-- /.tab-pane -->




                    <div class=" tab-pane" id="logHistory">

                        <?php 
                          $datatable = "";
                          if($this->session->userdata('account_type') == "Super Admin"){
                            $datatable = "datatablelogcustomer";
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
                            <?php $logs->log_user;?>
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


  <?php $this->load->view('include_pages_admin/addPetAjax');?>
  <script>

      $(function(){


 


        $('.datatablelogcustomer').DataTable( {
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
                title: 'Log Report for Customer: <?php echo $logs->log_user;?>' ,
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
                 title: 'Log Report for Customer: <?php echo $logs->log_user;?>' ,
                message: 'Issued by <?php echo $this->session->userdata('complete_name');?> Date: <?php  
                $now = date('Y-m-d H:i:s');
                 $date =date_create($now);
                echo  $log_date_format= date_format($date,"F d, Y h:i:sa");
                ?>',
    
              },

              {
                 extend: 'csvHtml5',
                 title: 'Log Report for Customer: <?php echo $logs->log_user;?>' ,
                 message: 'Issued by <?php echo $this->session->userdata('complete_name');?> Date: <?php  
                $now = date('Y-m-d H:i:s');
                 $date =date_create($now);
                echo  $log_date_format= date_format($date,"F d, Y h:i:sa");
                ?>',
                 
              },

                  ]
        } );






         $('.datatablecustomerpet').DataTable( {
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
                title: 'Pet List  for Customer: <?php echo $logs->log_user;?>',
                message: 'Issued by <?php echo $this->session->userdata('complete_name');?> Date: <?php  
                $now = date('Y-m-d H:i:s');
                 $date =date_create($now);
                echo  $log_date_format= date_format($date,"F d, Y h:i:sa");
                ?>',
                customize: function(doc) {
  
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
                 title: 'Pet List for Customer: <?php echo $logs->log_user;?>' ,
                message: 'Issued by <?php echo $this->session->userdata('complete_name');?> Date: <?php  
                $now = date('Y-m-d H:i:s');
                 $date =date_create($now);
                echo  $log_date_format= date_format($date,"F d, Y h:i:sa");
                ?>',
    
              },

              {
                 extend: 'csvHtml5',
                 title: 'Pet List for Customer: <?php echo $logs->log_user;?>' ,
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




