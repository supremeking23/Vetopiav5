 <?php foreach($theme_color as $t_color){

 
  //$max_product_count = $t_color->max_product_count;
    $markup_percentage = $t_color->markup_percentage;
    $markup_percent = $markup_percentage * 100;
}?>


 <div class="modal fade" id="addProduct">
        <div class="modal-dialog">
          <div class="modal-content modal-md" style="border-radius: 15px">
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



                              <input type="text" name="item_id" id="item_id" class="form-control" readonly="" style="border-radius: 15px">
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

                              echo form_label('Item Description', 'itemdescription','class="control-label"');
                              ?>



                           <textarea class="form-control textareas" name="itemdescription" style="border-radius: 15px"></textarea>
                         </div>   
                    </div>


                    <br />

                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Item Image', 'itemImage','class="control-label"');
                              ?>



                             <input type="file" name="itemImage" class="form-control" onchange="document.getElementById('item_Image').src = window.URL.createObjectURL(this.files[0])" required="" style="border-radius: 15px">

                             <!--<img  id="item_Image" class="img-rounded" alt="" width="100%" height="200" src="" /> -->
                         </div>   
                    </div>

                   <br />


                

 


                 

                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Product Base Price', 'price','class="control-label"');
                              ?>



                              <input type="number" name="price" id="price"  class="form-control" required="" style="border-radius: 15px">
                              
                         </div>   
                    </div>

                     <br />


                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Store Price', 'selling_price','class="control-label"');
                              ?>


                              <input type="hidden" name="markup_percentage" id="markup_percentage" value="<?php echo $markup_percentage;?>">
                              <input type="number" name="selling_price" id="selling_price"  readonly="" class="form-control" required="" style="border-radius: 15px" data-tooltip="tooltip" data-title="Markup Percentage = <?php echo $markup_percent;?>%">
                              
                         </div>   
                    </div>

                     <br />                     


                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Maximum Product Count', 'max_product_count','class="control-label"');
                              ?>



                              <input type="number" name="max_product_count" min="0" id="max_product_count"  class="form-control" required="" style="border-radius: 15px">
                         </div>   
                    </div>

                    <br />




                    <br />
                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Supply Count', 'supplycount','class="control-label"');
                              ?>



                              <input type="number" name="supplycount" min="0" max="" id="supplycount" class="form-control" required="" style="border-radius: 15px">
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
                                        'style'         => 'border-radius:15px'
                                        
                                );

                                echo form_input($data);
                              ?>      
                         </div>   
                    </div>


                


                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-default pull-left btn-flat btn-sm" data-dismiss="modal" style="border-radius: 15px">Close</button>
                  <?php 

                      $data = array(
                        'name' => 'submit',
                        'value' => 'Add',
                        'id' => 'add_item_btn',
                        'class' => 'btn btn-primary btn-flat btn-sm',
                        'style' => 'border-radius:15px',
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


  function format_number(x) {
    return Number.parseFloat(x).toFixed(2);
  }

  console.log(format_number(123.456));
  // expected output: "123.46"

  console.log(format_number(0.004));
  // expected output: "0.00"

  console.log(format_number('1.23e+5'));



    //JAVASCRIPT FUNCTION
    document.getElementById("price").oninput = function() {computeChange()};

    function computeChange() {

      var  price = $('#price').val();
      var markup_percentage = $('#markup_percentage').val();
      var markup;
      var selling_price;
       markup = price * markup_percentage;
       //selling_price = format_number(price) + markup;
      if(price.length != 0){
        
          var mark_up = parseInt(markup,10);
          var price_int = parseInt(price,10);

          selling_price = price_int + mark_up;

          $("#add_item_btn").attr("disabled",false);
       
          $("#add_item_btn").attr("disabled",true);
        
        $("#selling_price").val(selling_price);



      }else{
        $("#add_item_btn").attr("disabled",true);
        $("#selling_price").val("");
      }
      //alert(total_amount);
    }


$("#add_item_btn").attr("disabled",true);
document.getElementById("supplycount").oninput = function() {getChange()};

  function getChange() {

    var  max_product_count = $('#max_product_count').val();
    var supplycount = $('#supplycount').val();
    var one = parseInt(max_product_count,10);
    var two = parseInt(supplycount,10);
    console.log('one_add' + isNaN(one));
    if(supplycount.length !=0){
       $("#add_item_btn").attr("disabled",false);
      if(two > one){
        console.log('wala');
        $("#add_item_btn").attr("disabled",true);

      }else{
        $("#add_item_btn").attr("disabled",false);
        console.log('meron');
      }      
    }else{
      $("#add_item_btn").attr("disabled",true);
    }
    

      //alert(total_amount);
    }
   
</script>