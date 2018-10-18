  <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
               
                  
                  
                  <li class="active"><a href="#settings" data-toggle="tab">Product Information</a></li>
                  <li ><a href="#inventoryDetail" data-toggle="tab">Inventory Detail</a></li>
                  <li ><a href="#inventoryTurover" data-toggle="tab">Inventory Movement Detail</a></li>
                </ul>
                <div class="tab-content">
                  <div class="active tab-pane" id="settings">
                    <form class="form-horizontal" action="<?php echo site_url()?>inventory/update_food_details_action" method="POST">


                    <?php foreach($food_details as $f_details):?>

                      <div class="form-group">
                        <label for="customerID" class="col-sm-2 control-label">Product ID</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $f_details->food_id;?>" name="product_id" placeholder="Product ID" readonly="" style="border-radius: 15px">
                        </div>
                      </div>

                      <div class="form-group">
                        <label for="foodname" class="col-sm-2 control-label">Food Name</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $f_details->foodname;?>" name="foodname" placeholder="Food Name" style="border-radius: 15px">
                        </div>
                      </div>


                      <!-- <div class="form-group">
                        <label for="forwhatpet" class="col-sm-2 control-label">Food For</label>

                        <div class="col-sm-10">
                              <select name="forwhatpet" class="form-control" id="forwhatpet">
                                <?php foreach($all_pets as $ap):?>
                                  <option value="<?php echo $ap->pettype_code?>" <?php if($f_details->forwhatpet == $ap->pettype_code){echo "selected"; } ?> ><?php echo $ap->pettype?></option>
                                <?php endforeach;?>
                             </select>
                        </div>
                      </div>  -->


                      <div class="form-group">
                        <label for="fooddescription" class="col-sm-2 control-label">Food Description</label>

                        <div class="col-sm-10">
                         <textarea class="form-control textareas" name="fooddescription" style="border-radius: 15px"><?php echo $f_details->fooddescription;?></textarea>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="price" class="col-sm-2 control-label">Product base price</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $f_details->price;?>" name="price" placeholder="Price" style="border-radius: 15px">
                        </div>
                      </div>

                      <div class="form-group">
                        <label for="price" class="col-sm-2 control-label">Maximum Product Count</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $f_details->max_product_count;?>" name="max_product_count" placeholder="max_product_count" style="border-radius: 15px">
                          <input type="hidden" name="productInStore" value="<?php echo $f_details->productInStore;?>">
                        </div>
                      </div>   

                      <div class="form-group">
                              <?php 

                              echo form_label('Product Unit', 'product_unit','class="control-label col-sm-2"');
                              ?>
                               <div class="col-sm-10">
                                  <div class="input-group">
                                    <input type="text" name="product_unit_number" id="product_unit_number" value="<?php echo $f_details->product_unit_number;?>" class="form-control" required pattern="[+-]?([0-9]*[.])?[0-9]+" style="border-radius: 15px" /> 
                                    <span class="input-group-addon">
                                      <select name="product_unit" id="product_unit" required="" style="border-radius: 15px">
                                            <option value="">Select Unit</option>
                                            <option value="MilliGrams" <?php if($f_details->product_unit_measure == "MilliGrams"){echo "selected";} ?> >MilliGrams</option>
                                            <option value="MilliLiters" <?php if($f_details->product_unit_measure == "MilliLiters"){echo "selected";} ?>>MilliLiters</option>
                                            <option value="Gallon" <?php if($f_details->product_unit_measure == "Gallon"){echo "selected";} ?>>Gallon</option>
                                            <option value="Grams"  <?php if($f_details->product_unit_measure == "Gallon"){echo "selected";} ?>>Grams</option>
                                            <option value="Inch"  <?php if($f_details->product_unit_measure == "Gallon"){echo "selected";} ?>>Inch</option>
                                            <option value="Kg"  <?php if($f_details->product_unit_measure == "Kg"){echo "selected";} ?>>Kg</option>
                                            <option value="Liters"  <?php if($f_details->product_unit_measure == "Liters"){echo "selected";} ?>>Liters</option>
                                            <option value="Meter"  <?php if($f_details->product_unit_measure == "Meter"){echo "selected";} ?>>Meter</option>
                                            <!--<option value="Nos">Nos</option> 
                                            <option value="Packet">Packet</option>
                                            <option value="Rolls">Rolls</option>
                                             <option value="Dozens">Dozens</option>
                                            <option value="Feet">Feet</option>
                                             <option value="Box">Box</option>
                                             <option value="Bags">Bags</option>
                                            <option value="Bottles">Bottles</option>
                                            -->
                                      </select>
                                    </span>
                                </div>
                               </div>
                      </div>                    
                    

                       <div class="form-group">
                        <label for="supplier" class="col-sm-2 control-label">Supplier Name</label>

                        <div class="col-sm-10">
                          <input type="text" class="form-control" value="<?php echo $f_details->supplier;?>" name="supplier" placeholder="Supplier Name" style="border-radius: 15px">
                        </div>
                      </div>

                       <input type="hidden" name="food_id" value="<?php echo $f_details->food_id;?>">

                      <input type="hidden" name="food_table_id" value="<?php echo $f_details->food_table_id;?>">

                    <?php endforeach;?>

                     
                      <br />

                      <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">

                          <button type="submit" class="btn btn-danger btn-sm  btn-flat" style="border-radius: 15px">Submit</button>
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

                   <div class=" tab-pane" id="inventoryTurover">
                        

                         

                              <table  class="datatableexta table table-bordered table-striped">
                                <thead>
                                <tr>
                                  <th>Date</th>
                                  <th>Inventory Turnover Ratio</th>
                                  <th>Econimic Order Quantity</th>
                                  <th>Product Critical Level</th>
                                  
                                </tr>
                                </thead>
                                <tbody>
                                
                                <?php foreach($sales_detail_by_product_id as $datas):?>
                                  <tr>
                                    <td><?php //echo $med_inventory->inventory_date;
                                        $date =date_create($datas->sales_date);
                                        echo  $inventory_date= date_format($date,"F, Y");

                                    ?>

                                    </td>
                                    <td><?php //echo $datas->numeric_month?>
                                      
                                      <?php   
                                        //parameters for COGS
                                      $param1 = $this->inventory_management->get_number_product_quantity_in_inventory_by_product_id($f_details->food_id,$datas->numeric_month);
                                        foreach($param1 as $p1){
                                          //echo $p1->quantity .'x' . 'cost: '. $m_details->price;
                                          //echo '<br />';
                                          //add supply to
                                           $sum_quantity = $p1->sum_quantity;
                                        }


                                       $cogs = $sum_quantity * $f_details->price;
                                        //$cogs;
                                       ?>


                                       <?php 

                                        //for beginning inventory
                                        //get the ending invntory first = add_supply - purchase supply
                                       $get_end_inventory_data_purchased = $this->inventory_management->get_end_inventory_data_purchased($f_details->food_id,$datas->numeric_month);

                                       foreach($get_end_inventory_data_purchased as $purchased_data){
                                         $purchased = $purchased_data->sum_quantity_purchased;
                                       }


                                        $balance = $sum_quantity - $purchased;
                                        $balance_abs = abs($balance);

                                         $ending_inventory = $balance_abs * $f_details->price;

                                        //new_inventory_latest na inadd 
                                        $new_inventory_detail = $this->inventory_management->new_inventory_detail($f_details->food_id,$datas->numeric_month);
                                        foreach ($new_inventory_detail as $new_inv_d) {
                                          # code...
                                          $new_inv_quantity = $new_inv_d->quantity;
                                        }

                                        $new_inventory = $new_inv_quantity * $f_details->price;

                                        $beginning_inventory = ($cogs + $ending_inventory) - $new_inventory;
                                        $ending_inventory;
                                        

                                        $inventory_turnover_ratio = $cogs/($beginning_inventory + $ending_inventory)/2;
                                        echo  $inventory_turnover_ratio .'%';
                                       ?>
                                    </td>
                                    <td>
                                    <?php $get_sales_detail_by_month =  $this->inventory_management->get_sales_detail_by_month($f_details->product_id,$datas->numeric_month);
                                              foreach($get_sales_detail_by_month as $sales_month){
                                                 $sales_quantity_in_months = $sales_month->sales_in_month;
                                              }


                                          $demand = $sales_quantity_in_months;
                                          $order_cost = $f_details->price;
                                          $carrying_host = 100;

                                         $optimal_order= sqrt((2*$order_cost)*$demand/$carrying_host);
                                         echo round($optimal_order);
                                    ?>
                                    </td>

                                    <td>
                                      
                                      <?php $get_avg_order_by_month = $this->inventory_management->get_avg_order_by_month($f_details->product_id,$datas->numeric_month);
                                            foreach($get_avg_order_by_month as $avg_month){
                                              $avg_month_orders =  $avg_month->quantity;
                                            }

                                            $get_max_order_by_month =  $this->inventory_management->get_max_order_by_month($f_details->product_id,$datas->numeric_month);
                                            foreach($get_max_order_by_month as $max_order){            
                                              $max_order =  $max_order->quantity_sum_max;
                                            }

                                            $get_min_order_by_month =  $this->inventory_management->get_min_order_by_month($f_details->product_id,$datas->numeric_month);
                                            foreach($get_min_order_by_month as $min_order){            
                                              $min_order =  $min_order->quantity_sum_min;
                                            }   

                                            $safety_stock = $max_order - $min_order;

                                            $abs_safety_stock = abs($safety_stock);

                                           echo $critical_stock_boundary = ($avg_month_orders + $abs_safety_stock) / 2;                                         
                                      ?>
                                    </td>
                                  
                                  </tr>
                                 
                                <?php endforeach;?>
                                </tbody>
                               
                              </table>



                  </div>


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




