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

            <?php echo form_open_multipart('inventory/add_new_item','id="formAddItem"');?>

                <div class="modal-body">


                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Item ID', 'item_id','class="control-label"');
                              ?>



                              <input type="text" name="item_id" id="item_id" class="form-control" readonly="">
                         </div>   
                    </div>

                    <br />
                  
                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Item Name', 'itemname','class="control-label"');
                              ?>



                              <?php 
                                $data = array(
                                        'name'          => 'itemname',
                                        'id'            => 'itemname',
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

                              echo form_label('Item Description', 'itemdescription','class="control-label"');
                              ?>



                           <textarea class="form-control textareas" name="itemdescription"></textarea>
                         </div>   
                    </div>


                    <br />

                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Item Image', 'itemImage','class="control-label"');
                              ?>



                             <input type="file" name="itemImage" class="form-control" onchange="document.getElementById('item_Image').src = window.URL.createObjectURL(this.files[0])" required="">

                             <!--<img  id="item_Image" class="img-rounded" alt="" width="100%" height="200" src="" /> -->
                         </div>   
                    </div>

                   <br />


                

 


                 

                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Product Base Price', 'price','class="control-label"');
                              ?>



                              <input type="number" name="price" min="0" max="2500" class="form-control" required="">
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
                  <button type="button" class="btn btn-default pull-left btn-flat btn-sm" data-dismiss="modal" >Close</button>
                  <?php 

                      $data = array(
                        'name' => 'submit',
                        'value' => 'Add',
                        'id' => 'add_item_btn',
                        'class' => 'btn btn-primary btn-flat btn-sm',
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
	

    var item_id = document.getElementById("item_id");
    item_id = "<?= '#Item'.date("ymdhis") . abs(rand('0','9'));  ?>";
    $('#item_id').val(item_id);

   
</script>