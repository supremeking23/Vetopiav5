  <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
               
                  
                  
                  <li class="active"><a href="#settings" data-toggle="tab">Product Information</a></li>
                  <li ><a href="#inventoryDetail" data-toggle="tab">Inventory Detail</a></li>
                </ul>
                <div class="tab-content">
                  <div class="active tab-pane" id="settings">
                    <form class="form-horizontal" action="<?php echo site_url()?>inventory/update_medicine_details_action" method="POST">


                    <?php foreach($medicine_details as $m_details):?>

                      <div class="form-group">
                        <label for="customerID" class="col-sm-2 control-label">Product ID</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $m_details->med_id;?>" name="med_id" placeholder="Product ID" readonly="">
                        </div>
                      </div>

                      <div class="form-group">
                        <label for="foodname" class="col-sm-2 control-label">Medicine Name</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $m_details->medname;?>" name="medname" placeholder="Med Name">
                        </div>
                      </div>


                       <div class="form-group">
                        <label for="medType" class="col-sm-2 control-label">Medicine Type</label>

                        <div class="col-sm-10">

                          <?php 
                            $option = array(
                              'Antibiotics' => 'Antibiotics',
                              'Vitamins' => 'Vitamins',
                              'Vaccines' => 'Vaccines',
                            );
                          ?>

                         <?php echo form_dropdown('medType',$option,$m_details->medType,'class="form-control" required');?>
                        </div>
                      </div>


                      <div class="form-group">
                        <label for="meddescription" class="col-sm-2 control-label">Medicine Description</label>

                        <div class="col-sm-10">
                         <textarea class="form-control" name="meddescription"><?php echo $m_details->meddescription;?></textarea>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="price" class="col-sm-2 control-label">Price</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $m_details->price;?>" name="price" placeholder="Price">
                        </div>
                      </div>

                     
                    

                       <div class="form-group">
                        <label for="supplier" class="col-sm-2 control-label">Supplier Name</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $m_details->supplier;?>" name="supplier" placeholder="Supplier Name">
                        </div>
                      </div>

                       <input type="hidden" name="med_id" value="<?php echo $m_details->med_id;?>">

                      <input type="hidden" name="med_table_id" value="<?php echo $m_details->med_table_id;?>">

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
                   <div class=" tab-pane" id="inventoryDetail">
                        

                         

                              <table  class="datatables table table-bordered table-striped">
                                <thead>
                                <tr>
                                  <th>Date</th>
                                  <th>User </th>
                                  <th>Action</th>
                                  <th>Quantity</th>
                                  <th>Expiration Date</th>
                                </tr>
                                </thead>
                                <tbody>
                                
                                <?php foreach($med_inventory_detail as $med_inventory):?>
                                  <tr>
                                    <td><?php echo $med_inventory->inventory_date;?></td>
                                    <td><?php echo $med_inventory->user_name;?> (<?php echo $med_inventory->user_type;?>)</td>
                                    <td><?php echo $med_inventory->action;?> </td>
                                    <td><?php echo $med_inventory->quantity;?> </td>
                                    <td><?php echo $med_inventory->product_exp_date;?> </td>
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




