  <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
               
                  
                  
                  <li class="active"><a href="#settings" data-toggle="tab">Product Information</a></li>
                  <li ><a href="#inventoryDetail" data-toggle="tab">Inventory Detail</a></li>
                </ul>
                <div class="tab-content">
                  <div class="active tab-pane" id="settings">
                    <form class="form-horizontal" action="<?php echo site_url()?>inventory/update_item_details_action" method="POST">


                    <?php foreach($item_details as $i_details):?>

                      <div class="form-group">
                        <label for="customerID" class="col-sm-2 control-label">Product ID</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $i_details->item_id;?>" name="product_id" placeholder="Product ID" readonly="">
                        </div>
                      </div>

                      <div class="form-group">
                        <label for="itemname" class="col-sm-2 control-label">Item Name</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $i_details->itemname;?>" name="itemname" placeholder="Item Name">
                        </div>
                      </div>


                      <div class="form-group">
                        <label for="itemdescription" class="col-sm-2 control-label">Item Description</label>

                        <div class="col-sm-10">
                         <textarea class="form-control textareas" name="itemdescription"><?php echo $i_details->itemdescription;?></textarea>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="price" class="col-sm-2 control-label">Product base price</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $i_details->price;?>" name="price" placeholder="Price">
                        </div>
                      </div>

                     
                    

                       <div class="form-group">
                        <label for="supplier" class="col-sm-2 control-label">Supplier Name</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $i_details->supplier;?>" name="supplier" placeholder="Supplier Name">
                        </div>
                      </div>



                      <input type="hidden" name="item_table_id" value="<?php echo $i_details->item_table_id;?>">

                      <input type="hidden" name="item_id" value="<?php echo $i_details->item_id;?>">

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
                  
                              <table  class="datatableexta table table-bordered table-striped">
                                <thead>
                                <tr>
                                  <th>Date</th>
                                  <th>User </th>
                                  <th>Action</th>
                                  <th>Quantity</th>
                                </tr>
                                </thead>
                                <tbody>
                                
                                <?php foreach($item_inventory_detail as $item_inventory):?>
                                  <tr>
                                    <td><?php //echo $med_inventory->inventory_date;
                                        $date =date_create($item_inventory->inventory_date);
                                        echo  $inventory_date= date_format($date,"F d, Y h:i:sa");
                                    ?></td>
                                    <td><?php echo $item_inventory->user_name ?> (<?php echo $item_inventory->user_type ?>)</td>

                                     <td><?php echo $item_inventory->action;?></td>

                                      <td><?php echo $item_inventory->quantity;?></td>
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



  $(document).ready(function() {


    //setHeader()
     
  } );


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




