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
                               <option value="Vaccine">Vaccine</option>
                             </select>
                         </div>   
                    </div>
                     
                    <br />

                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Medicine Description', 'meddescription','class="control-label"');
                              ?>



                           <textarea class="form-control" name="meddescription"></textarea>
                         </div>   
                    </div>


                    <br />

                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Medicine Image', 'medImage','class="control-label"');
                              ?>



                             <input type="file" name="medImage" class="form-control" onchange="document.getElementById('med_Image').src = window.URL.createObjectURL(this.files[0])" >

                             <img  id="med_Image" class="img-rounded" alt="" width="100%" height="200" src="" />
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
                        'id' => 'add_med_btn',
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
	

    var med_id = document.getElementById("med_id");
    med_id = "<?= '#Med'.date("ymdhis") . abs(rand('0','9'));  ?>";
    $('#med_id').val(med_id);

   
</script>