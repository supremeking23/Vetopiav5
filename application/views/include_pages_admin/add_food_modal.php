 <?php foreach($theme_color as $t_color){

 
  ///$max_product_count = $t_color->max_product_count;
    $markup_percentage = $t_color->markup_percentage;
    $markup_percent = $markup_percentage * 100;
}?>


}?>

 <div class="modal fade" id="addProduct">
        <div class="modal-dialog">
          <div class="modal-content modal-md" style="border-radius: 15px">
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



                              <input type="text" name="food_id" id="food_id" class="form-control" readonly="" style="border-radius: 15px">
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
                                        'style'         =>'border-radius:15px',
                                        
                                );

                                echo form_input($data);
                              ?>      
                         </div>   
                    </div>



                     <br />
                  
                 <!--   <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Food For', 'forwhatpet','class="control-label"');
                              ?>



                              <select name="forwhatpet" class="form-control" id="forwhatpet">
                                 <option value="all">Appropriate for all</option>
                                <?php foreach($all_pets as $ap):?>
                                  <option value="<?php echo $ap->pettype_code?>"><?php echo $ap->pettype?></option>
                                <?php endforeach;?>
                             </select>
                         </div>   
                    </div> -->




                    <br />

                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Food Description', 'fooddescription','class="control-label"');
                              ?>



                           <textarea class="form-control textareas" name="fooddescription" style="border-radius: 15px"></textarea>
                         </div>   
                    </div>


                    <br />

                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Food Image', 'foodImage','class="control-label"');
                              ?>



                             <input type="file" name="foodImage" class="form-control" onchange="document.getElementById('food_Image').src = window.URL.createObjectURL(this.files[0])" required="" style="border-radius: 15px">

                             <!--<img  id="food_Image" class="img-rounded" alt="" width="100%" height="200" src="" /> -->
                         </div>   
                    </div>

                   <br />


                

 


                 

                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Product Base Price', 'price','class="control-label"');
                              ?>



                              <input type="number" name="price" id="price" min="0" max="2500" class="form-control" required="" style="border-radius: 15px">
                         </div>   
                    </div>

                    <br />

                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Store Price', 'selling_price','class="control-label"');
                              ?>


                              <input type="hidden" id="markup_percentage" name="markup_percentage" id="markup_percentage" value="<?php echo $markup_percentage;?>">
                              <input type="number" id="selling_price" name="selling_price" id="selling_price"  readonly="" class="form-control" required="" style="border-radius: 15px" data-tooltip="tooltip" data-title="Markup Percentage = <?php echo $markup_percent;?>%">
                              
                         </div>   
                    </div>

                    <br />

                  <div class="form-group">
                      <?php 

                      echo form_label('Enter Product Unit', 'product_unit','class="control-label"');
                      ?>
                        <div class="input-group">
                            <input type="number" name="product_unit_number" id="product_unit_number" class="form-control" required pattern="[+-]?([0-9]*[.])?[0-9]+" style="border-radius: 15px" /> 
                            <span class="input-group-addon">
                              <select name="product_unit" id="product_unit" required="" style="border-radius: 15px">
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

                              <input type="date" class="form-control exp_date"  value="" name="exp_date" id="" required="" style="border-radius: 15px">

                          
                         </div>   
                    </div>


                    <br />


                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Maximum Product Count', 'max_product_count','class="control-label"');
                              ?>



                              <input type="number" id="max_product_count" name="max_product_count" min="0" id="max_product_count"  class="form-control" required="" style="border-radius: 15px">
                         </div>   
                    </div>

                    <br />

                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Supply Count', 'supplycount','class="control-label"');
                              ?>



                              <input type="number" id="supplycount" name="supplycount" min="0" max="" class="form-control" required="" style="border-radius: 15px">
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
                                        'style'         =>'border-radius:15px',
                                        
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
                        'id' => 'add_food_btn',
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
    
    $('.exp_date').attr('min', minDate);  
    var food_id = document.getElementById("food_id");
    food_id = "<?= '#Food'.date("ymdhis") . abs(rand('0','9'));  ?>";
    $('#food_id').val(food_id);



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

          $("#add_food_btn").attr("disabled",false);
       
          $("#add_food_btn").attr("disabled",true);
        
        $("#selling_price").val(selling_price);



      }else{
        $("#add_food_btn").attr("disabled",true);
        $("#selling_price").val("");
      }
      //alert(total_amount);
    }


$("#add_food_btn").attr("disabled",true);
document.getElementById("supplycount").oninput = function() {getChange()};

  function getChange() {

    var  max_product_count = $('#max_product_count').val();
    var supplycount = $('#supplycount').val();
    var one = parseInt(max_product_count,10);
    var two = parseInt(supplycount,10);
    console.log('one_add' + isNaN(one));
    if(supplycount.length !=0){
       $("#add_food_btn").attr("disabled",false);
      if(two > one){
        console.log('wala');
        $("#add_food_btn").attr("disabled",true);

      }else{
        $("#add_food_btn").attr("disabled",false);
        console.log('meron');
      }      
    }else{
      $("#add_food_btn").attr("disabled",true);
    }
    

      //alert(total_amount);
    }

   
</script>