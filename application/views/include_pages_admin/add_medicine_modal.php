 <?php foreach($theme_color as $t_color){

 
  $max_product_count = $t_color->max_product_count;
  


}?>


 <div class="modal fade" id="addProduct">
        <div class="modal-dialog">
          <div class="modal-content modal-md">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title text-center">Add New Product</h4>
            </div>

            <?php echo form_open_multipart('inventory/add_new_medicine','id="formAddMedicine"');?>

                <div class="modal-body">


                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Medicine ID', 'med_id','class="control-label"');
                              ?>



                              <input type="text" name="med_id" id="med_id" class="form-control" readonly="">
                         </div>   
                    </div>

                    <br />
                  
                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Medicine Name', 'medname','class="control-label"');
                              ?>



                              <?php 
                                $data = array(
                                        'name'          => 'medname',
                                        'id'            => 'medname',
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

                              echo form_label('Medicine Type', 'medType','class="control-label"');
                              ?>



                        


                             <select name="medType" class="form-control">
                               <option value="Antibiotics">Antibiotics</option>
                               <option value="Vitamins">Vitamins</option>
                               <option value="Vaccine">Vaccines</option>
                               <option value="Antiparasitics">Antiparasitics</option>
                               <option value="Supplements">Supplements</option>
                             </select>
                         </div>   
                    </div>
                     
                    <br />

                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Medicine Description', 'meddescription','class="control-label"');
                              ?>



                           <textarea class="form-control textareas" name="meddescription"></textarea>
                         </div>   
                    </div>


                    <br />

                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Medicine Image', 'medImage','class="control-label"');
                              ?>



                             <input type="file" name="medImage" class="form-control" onchange="document.getElementById('med_Image').src = window.URL.createObjectURL(this.files[0])" required="">

                             <!--<img  id="med_Image" class="img-rounded" alt="" width="100%" height="200" src="" /> -->
                         </div>   
                    </div>

                   <br />

                 

                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Base Price', 'price','class="control-label"');
                              ?>



                              <input type="number" name="price" min="0" max="2500" class="form-control" required="">
                         </div>   
                    </div>

                     <br />






                          <div class="form-group">
                              <?php 

                              echo form_label('Enter Product Unit', 'product_unit','class="control-label"');
                              ?>
                                <div class="input-group">
                                    <input type="number" name="product_unit_number" id="product_unit_number" class="form-control" required pattern="[+-]?([0-9]*[.])?[0-9]+" /> 
                                    <span class="input-group-addon">
                                      <select name="product_unit" id="product_unit" required="">
                                            <option value="">Select Unit</option>
                                            <option value="MilliGrams">MilliGrams</option>
                                            <option value="MilliLiters">MilliLiters</option>
                                            <option value="Gallon">Gallon</option>
                                            <option value="Grams">Grams</option>
                                            <option value="Inch">Inch</option>
                                            <option value="Kg">Kg</option>
                                            <option value="Liters">Liters</option>
                                            <option value="Meter">Meter</option>
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

                     <br />



                     <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Expiration Date', 'exp_date','class="control-label"');
                              ?>

                              <input type="date" class="form-control"  value="" name="exp_date" id="exp_date" required="">

                          
                         </div>   
                    </div>


                    <br />

                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Supply Count', 'supplycount','class="control-label"');
                              ?>



                              <input type="number" name="supplycount" min="0" max="<?php echo $max_product_count;?>" class="form-control" required="">
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
                  <button type="button" class="btn btn-default pull-left btn-sm btn-flat" data-dismiss="modal" >Close</button>
                  <?php 

                      $data = array(
                        'name' => 'submit',
                        'value' => 'Add',
                        'id' => 'add_med_btn',
                        'class' => 'btn btn-primary btn-sm btn-flat',
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
            var dtToday = new Date();
    
            var month = dtToday.getMonth() + 1;
            var day = dtToday.getDate();
            var year = dtToday.getFullYear();
            if(month < 10)
                month = '0' + month.toString();
            if(day < 10)
                day = '0' + day.toString();
            
            var minDate= year + '-' + month + '-' + day;


            console.log("todays date: " + dtToday);
            console.log("todays month: " + month);
            console.log("todays day: " + day);
            console.log("todays year: " + year);
            console.log("min date: " + minDate);
            
            $('#exp_date').attr('min', minDate); 	

    var med_id = document.getElementById("med_id");
    med_id = "<?= '#Med'.date("ymdhis") . abs(rand('0','9'));  ?>";
    $('#med_id').val(med_id);

   
</script>