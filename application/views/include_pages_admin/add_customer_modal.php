<div class="modal fade" id="addCustomer">
        <div class="modal-dialog">
          <div class="modal-content" style="border-radius: 15px">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title text-center">Add Customer</h4>
            </div>

                <?php echo form_open_multipart('user_management/add_new_customer','id="formAddCustomer"');?>

                <div class="modal-body">


                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Customer ID', 'customer_id','class="control-label"');
                              ?>



                              <input type="text" name="customer_id" id="customer_id" class="form-control" readonly="" style="border-radius: 15px">
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
                                        'style'         => 'border-radius:15px',
                                        
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
                                        'style'         => 'border-radius:15px',
                                        
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
                                        'style'         => 'border-radius:15px',
                                        
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



                             <select name="gender" class="form-control" style="border-radius: 15px">
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

                              <input type="date" id="max_date" class="form-control"  value="" name="birthdate" required="" style="border-radius: 15px">

                          
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
                                        'style'         => 'border-radius:15px',
                                        
                                );

                                echo form_input($data);
                              ?>      
                         </div>   
                    </div>

                   <br>
                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Email', 'email','class="control-label"');
                              ?>



                            
                             <input type="email" name="email" id="email" class="form-control" style="border-radius: 15px">  
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
                                        'style'         => 'border-radius:15px',
                                        
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
                                        'style'         => 'border-radius:15px',
                                        
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
                                        'style'         => 'border-radius:15px',
                                        
                                );

                                echo form_input($data);
                              ?>      
                         </div>   
                    </div>



                  <br />

                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Zip Code', 'postalID','class="control-label"');
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
                                        'style'         => 'border-radius:15px',
                                        
                                );

                                echo form_input($data);
                              ?>      
                         </div>   
                    </div>


               


                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-default pull-left btn-sm btn-flat" data-dismiss="modal" style="border-radius: 15px">Close</button>
                  <?php 

                      $data = array(
                        'name' => 'submit',
                        'value' => 'Add',
                        'id' => 'add_admin_btn',
                        'class' => 'btn btn-primary btn-sm btn-flat',
                        'style'         => 'border-radius:15px',
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
      var customer_id = document.getElementById("customer_id");
    customer_id = "<?= 'C'.date("ymdhis") . abs(rand('0','9'));  ?>";
    $('#customer_id').val(customer_id);

     //$('#username').val(customer_id);

//for future date
$(function(){
    var dtToday = new Date();
    
    var month = dtToday.getMonth() + 1;
    var day = dtToday.getDate();
    var year = dtToday.getFullYear();
    if(month < 10)
        month = '0' + month.toString();
    if(day < 10)
        day = '0' + day.toString();
    
    var maxDate = year + '-' + month + '-' + day;
     //alert(maxDate);
    $('#max_date').attr('max', maxDate);
});
</script>