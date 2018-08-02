 <div class="modal fade" id="addVet">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title text-center">Add Veterinarian</h4>
            </div>

                <?php echo form_open_multipart('user_management/add_new_vet','id="formAddVet"');?>

                <div class="modal-body">


                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Veterinarian ID', 'vet_id','class="control-label"');
                              ?>



                              <input type="text" name="vet_id" id="vet_id" class="form-control" readonly="">
                         </div>   
                    </div>

                    <br />
                  
                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('First Name', 'first_name','class="control-label"');
                              ?>



                              <?php 
                                $data = array(
                                        'name'          => 'first_name',
                                        'id'            => 'first_name',
                                        'value'         => '',
                                        //'minlength'     => '2',
                                        'size'          => '',
                                        'required'      => 'required',
                                        'class'         => 'form-control',
                                        
                                );

                                echo form_input($data);
                              ?>      
                         </div>   
                    </div>

                    <br />

                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Middle Name', 'middle_name','class="control-label"');
                              ?>



                              <?php 
                                $data = array(
                                        'name'          => 'middle_name',
                                        'id'            => 'middle_name',
                                        'value'         => '',
                                        //'minlength'     => '2',
                                        'size'          => '',
                                        'required'      => 'required',
                                        'class'         => 'form-control',
                                        
                                );

                                echo form_input($data);
                              ?>      
                         </div>   
                    </div>


                    <br />

                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Last Name', 'last_name','class="control-label"');
                              ?>



                              <?php 
                                $data = array(
                                        'name'          => 'last_name',
                                        'id'            => 'last_name',
                                        'value'         => '',
                                        //'minlength'     => '2',
                                        'size'          => '',
                                        'required'      => 'required',
                                        'class'         => 'form-control',
                                        
                                );

                                echo form_input($data);
                              ?>      
                         </div>   
                    </div>

                   <br />


                   <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Gender', 'gender','class="control-label"');
                              ?>



                             <select name="gender" class="form-control">
                               <option value="Male">Male</option>
                               <option value="Female">Female</option>
                             </select>
                         </div>   
                    </div>

                   <br />

                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Birth Date', 'birthDate','class="control-label"');
                              ?>

                              <input type="date" class="form-control"  value="" name="birthdate" required="">

                          
                         </div>   
                    </div>


                  <br />

                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Contact Number', 'contact','class="control-label"');
                              ?>



                              <?php 
                                $data = array(
                                        'name'          => 'contact',
                                        'id'            => 'contact',
                                        'value'         => '',
                                        //'minlength'     => '2',
                                        'size'          => '',
                                        'required'      => 'required',
                                        'class'         => 'form-control',
                                        
                                );

                                echo form_input($data);
                              ?>      
                         </div>   
                    </div>


                     <br />

                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Home Address', 'homeAddress','class="control-label"');
                              ?>



                              <?php 
                                $data = array(
                                        'name'          => 'homeAddress',
                                        'id'            => 'homeAddress',
                                        'value'         => '',
                                        //'minlength'     => '2',
                                        'size'          => '',
                                        'required'      => 'required',
                                        'class'         => 'form-control',
                                        
                                );

                                echo form_input($data);
                              ?>      
                         </div>   
                    </div>



                  <br />

                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Barangay Address', 'barangayAddress','class="control-label"');
                              ?>



                              <?php 
                                $data = array(
                                        'name'          => 'barangayAddress',
                                        'id'            => 'barangayAddress',
                                        'value'         => '',
                                        //'minlength'     => '2',
                                        'size'          => '',
                                        'required'      => 'required',
                                        'class'         => 'form-control',
                                        
                                );

                                echo form_input($data);
                              ?>      
                         </div>   
                    </div>



                  <br />

                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('City Address', 'cityAddress','class="control-label"');
                              ?>



                              <?php 
                                $data = array(
                                        'name'          => 'cityAddress',
                                        'id'            => 'cityAddress',
                                        'value'         => '',
                                        //'minlength'     => '2',
                                        'size'          => '',
                                        'required'      => 'required',
                                        'class'         => 'form-control',
                                        
                                );

                                echo form_input($data);
                              ?>      
                         </div>   
                    </div>



                  <br />

                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Posta ID', 'postalID','class="control-label"');
                              ?>



                              <?php 
                                $data = array(
                                        'name'          => 'postalID',
                                        'id'            => 'postalID',
                                        'value'         => '',
                                        //'minlength'     => '2',
                                        'size'          => '',
                                        'required'      => 'required',
                                        'class'         => 'form-control',
                                        
                                );

                                echo form_input($data);
                              ?>      
                         </div>   
                    </div>


                     <br />

                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Vet Bio', 'vetbio','class="control-label"');
                              ?>



                             <textarea class="form-control" name="vetbio"></textarea>
                         </div>   
                    </div>


                  <hr>

                  <h4>Account Settings</h4>


                  <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Username', 'username','class="control-label"');
                              ?>



                              <?php 
                                $data = array(
                                        'name'          => 'username',
                                        'id'            => 'usernameV',
                                        'value'         => '',
                                        //'minlength'     => '2',
                                        'size'          => '',
                                        'required'      => 'required',
                                        
                                        'class'         => 'form-control',
                                        
                                );

                                echo form_input($data);
                              ?>      
                         </div>   
                    </div>

                    <br />

                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Password', 'password','class="control-label"');
                              ?>



                              <?php 
                                $data = array(
                                        'name'          => 'password',
                                        'id'            => 'password',
                                        'value'         => '',
                                        //'minlength'     => '2',
                                        'size'          => '',
                                        'required'      => 'required',

                                        'class'         => 'form-control',
                                        
                                );

                                echo form_password($data);
                              ?>      
                         </div>   
                    </div>


                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-default pull-left" data-dismiss="modal" >Close</button>
                  <?php 

                      $data = array(
                        'name' => 'submit',
                        'value' => 'Add',
                        'id' => 'add_veterinarian_btn',
                        'class' => 'btn btn-primary',
                      );

                    echo form_submit($data);?>
                </div>
            
            </form>  
           
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>






<script>
	
  var vet_id = document.getElementById("vet_id");
    vet_id = "<?= 'V'.date("ymdhis") . abs(rand('0','9'));  ?>";
    $('#vet_id').val(vet_id);
    //$('#usernameV').val(vet_id);
</script>