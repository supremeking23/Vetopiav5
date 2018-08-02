  <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
               
                  
                  
                  <li class="active"><a href="#settings" data-toggle="tab">Product Information</a></li>
                  <li ><a href="#inventoryDetail" data-toggle="tab">Inventory Detail</a></li>
                </ul>
                <div class="tab-content">
                  <div class="active tab-pane" id="settings">
                    <form class="form-horizontal" action="<?php echo site_url()?>inventory/update_food_details_action" method="POST">


                    <?php foreach($food_details as $f_details):?>

                      <div class="form-group">
                        <label for="customerID" class="col-sm-2 control-label">Product ID</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $f_details->food_id;?>" name="product_id" placeholder="Product ID" readonly="">
                        </div>
                      </div>

                      <div class="form-group">
                        <label for="foodname" class="col-sm-2 control-label">Food Name</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $f_details->foodname;?>" name="foodname" placeholder="Food Name">
                        </div>
                      </div>


                       <div class="form-group">
                        <label for="forwhatpet" class="col-sm-2 control-label">Food For</label>

                        <div class="col-sm-10">

                          <?php 
                            $option = array(
                              'Cats and Dogs' => 'Cats and Dogs',
                              'Dogs' => 'Dogs',
                              'Cats' => 'Cats',
                            );
                          ?>

                         <?php echo form_dropdown('forwhatpet',$option,$f_details->forwhatpet,'class="form-control" required');?>
                        </div>
                      </div>


                      <div class="form-group">
                        <label for="fooddescription" class="col-sm-2 control-label">Food Description</label>

                        <div class="col-sm-10">
                         <textarea class="form-control" name="fooddescription"><?php echo $f_details->fooddescription;?></textarea>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="price" class="col-sm-2 control-label">Price</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $f_details->price;?>" name="price" placeholder="Price">
                        </div>
                      </div>

                     
                    

                       <div class="form-group">
                        <label for="supplier" class="col-sm-2 control-label">Supplier Name</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $f_details->supplier;?>" name="supplier" placeholder="Supplier Name">
                        </div>
                      </div>

                       <input type="hidden" name="food_id" value="<?php echo $f_details->food_id;?>">

                      <input type="hidden" name="food_table_id" value="<?php echo $f_details->food_table_id;?>">

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
                                  <th>Detail</th>
                                  <th>Quantity</th>
                                 
                                </tr>
                                </thead>
                                <tbody>
                                
                                <?php foreach($food_inventory_detail as $food_inventory):?>
                                  <tr>
                                    <td>
                                       
                                      <?php //echo $food_inventory->inventory_date;

                                      $date =date_create($food_inventory->inventory_date);
                                       echo  $inventory_date= date_format($date,"F d, Y h:i:sa");
                                      ?></td>
                                    <td><?php echo $food_inventory->user_name;?> (<?php echo $food_inventory->user_type;?>)</td>
                                    <td><?php echo $food_inventory->action;?> 
                                      <br />
                                      <?php if($food_inventory->product_exp_date == "0000-00-00"){

                                      }else{ ?>
                                        <b>Expiration Date:</b> <?php // echo $food_inventory->product_exp_date;
                                       


                                        $date =date_create($food_inventory->product_exp_date);
                                       echo  $exp_date= date_format($date,"F d, Y ");
                                        ?>
                                     <?php }?>
                                      

                                    </td>
                                    <td><?php echo $food_inventory->quantity;?> </td>
                                    
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




