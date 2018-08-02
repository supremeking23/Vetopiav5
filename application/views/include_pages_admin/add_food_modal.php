 <div class="modal fade" id="addProduct">
        <div class="modal-dialog">
          <div class="modal-content modal-md">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title text-center">Add New Product</h4>
            </div>

            <?php echo form_open_multipart('inventory/add_new_food','id="formAddFood"');?>

                <div class="modal-body">


                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Food ID', 'food_id','class="control-label"');
                              ?>



                              <input type="text" name="food_id" id="food_id" class="form-control" readonly="">
                         </div>   
                    </div>

                    <br />
                  
                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Food Name', 'foodname','class="control-label"');
                              ?>



                              <?php 
                                $data = array(
                                        'name'          => 'foodname',
                                        'id'            => 'foodname',
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

                              echo form_label('Food For', 'forwhatpet','class="control-label"');
                              ?>



                              <select name="forwhatpet" class="form-control">
                               <option value="Cats and Dogs">Cats and Dogs</option>
                               <option value="Cats">Cats</option>
                               <option value="Dogs">Dogs</option>
                             </select>
                         </div>   
                    </div>




                    <br />

                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Food Description', 'fooddescription','class="control-label"');
                              ?>



                           <textarea class="form-control" name="fooddescription"></textarea>
                         </div>   
                    </div>


                    <br />

                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Food Image', 'foodImage','class="control-label"');
                              ?>



                             <input type="file" name="foodImage" class="form-control" onchange="document.getElementById('food_Image').src = window.URL.createObjectURL(this.files[0])" >

                             <img  id="food_Image" class="img-rounded" alt="" width="100%" height="200" src="" />
                         </div>   
                    </div>

                   <br />


                

 


                 

                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Price', 'price','class="control-label"');
                              ?>



                              <input type="number" name="price" min="0" max="2500" class="form-control" required="">
                         </div>   
                    </div>

                     <br />


                     <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Expiration Date', 'exp_date','class="control-label"');
                              ?>

                              <input type="date" class="form-control"  value="" name="exp_date" required="">

                          
                         </div>   
                    </div>


                    <br />

                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Supply Count', 'supplycount','class="control-label"');
                              ?>



                              <input type="number" name="supplycount" min="0" max="200" class="form-control" required="">
                         </div>   
                    </div>





                     <br />
                 

                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Supplier', 'supplier','class="control-label"');
                              ?>



                              <?php 
                                $data = array(
                                        'name'          => 'supplier',
                                        'id'            => 'supplier',
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


                


                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-default pull-left" data-dismiss="modal" >Close</button>
                  <?php 

                      $data = array(
                        'name' => 'submit',
                        'value' => 'Add',
                        'id' => 'add_food_btn',
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
	

    var food_id = document.getElementById("food_id");
    food_id = "<?= '#Food'.date("ymdhis") . abs(rand('0','9'));  ?>";
    $('#food_id').val(food_id);

   
</script>