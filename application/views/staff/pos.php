<?php foreach($theme_color as $t_color){

  $skin_color = $t_color->theme_color;
  $settings_id =$t_color->settings_id;

}?>

<!DOCTYPE html>
<html>

<?php $this->load->view('include_pages_staff/page_header');?>

<body class="hold-transition <?php echo $skin_color;?> sidebar-mini sidebar-collapse" id="pos">
<div class="wrapper">


  <?php $this->load->view('include_pages_staff/document_header');?>
 
  <?php $this->load->view('include_pages_staff/sidebar');?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       POS
        
      </h1>
    
    </section>

    <!-- Main content -->
    <section class="content">



    <div class="row">
      <div class="col-md-12">
         <?php if ($this->session->flashdata('cart_empty_error')) {?>

           <div class="alert alert-danger alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <h4><i class="icon fa fa-exclamation"></i> <?php echo $this->session->flashdata('cart_empty_error');?></h4>
                
             </div>

        <?php } ?>
      </div>
    </div>

    <div class="row">
      <div class="col-md-12">
         <?php if ($this->session->flashdata('print_receipt_message')) {?>

           <div class="alert alert-success alert-dismissible" id="close_print_message">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <h4><i class="icon fa fa-check"></i> Success!</h4>
                <p><?php echo $this->session->flashdata('print_receipt_message');?></p>
                


                <a href="<?php echo site_url()?>pos_controller/print/<?php echo $_SESSION['sales_id'];?>" id="print_close" class="btn btn-sm btn-info"  target="_blank">Print <span class="fa fa-print"></span></a>
             </div>

        <?php } ?>
      </div>
    </div>
   
   <div class="row">
         <div class="col-md-5">
              <div class="box" style="">
                <div class="box-body table-responsive no-padding">

                  <table id="example1" class="table table-bordered table-striped">
                     
                      <tr>
                          <td>
                            <table  class="table table-striped table-condensed table-hover list-table" style="margin:0px;" data-height="100">
                              <thead>
                              <tr class="success">
                                <th>Product</th>
                                <th>Product Type</th>
                                <th style="width: 15%;text-align:;">Price</th>
                                <th style="width: 15%;text-align:;">Qty</th>
                                <th style="width: 20%;text-align:;">Subtotal</th>
                                <th style="width: 20px;text-align: center;" class="satu"><i class="fa fa-trash-o"></i></th>
                              </tr>
                              </thead>

                              <tbody id="detail_cart">

                             
                              </tbody>
                            </table>

                         
                      </tr>


                    <?php echo form_open_multipart('pos_controller/checkout','id="formCheckout"');?>

                       <tr>
                          <td> 
                            <?php //option for unit of measurements
                                    $option = array(
                                        "walkin" => "Walk in Customer",
                                        "member" => "Member",

                                    );
                                ?>

                               
                                    <div class="form-group has-feedback">
                                        <?php echo form_dropdown('is_walkin',$option,'','class="form-control" id="is_walkin" required');?>
                                        
                                    </div>

                                     <fieldset id="for_member">
                                         <div class="form-group has-feedback">
                                             <select name="customer_id"  class="form-control select2" style="width: 100%" >
                                              <option value="">Customers</option>
                                              <?php foreach($all_customer as $customers):?>
                                                  <option value="<?php echo $customers->customer_id?>"><?php echo $customers->firstname.' '. $customers->middlename .' '. $customers->lastname;?></option>
                                              <?php endforeach;?>
                                             </select>
                                          </div>
                                    </fieldset>

                                    <fieldset id="for_walkin">
                                        <div class="form-group has-feedback">
                                          <input type="text" class="form-control" name="walk_customer_name" placeholder="Enter Name for walk in Customer">
                                          
                                        </div>

                                   
                                  </fieldset>
                          </td>
                      </tr>


                      <tr>
                              <td width="100%" colspan="4">


                            
                           
                                <button type="submit" class="btn btn-sm btn-success btn-block">Checkout</button>
                              


                              </td>
                      </tr>
             
                      <?php echo form_close();?>
                  </table> <?php //end main table?>

                

                </div>
                <!-- /.box-body -->
              </div>
         </div>


         <div class="col-md-7">

            <div id="productControls">
              <form>
                  <div>
                      <span>Show: </span>
                      <input id="cbItems" type="checkbox" checked="checked" />
                      <label for="cbItems">Items </label>
                      <input id="cbFoods" type="checkbox" checked="checked" />
                      <label for="cbFoods">Foods </label>
                      <input id="cbMedicines" type="checkbox" checked="checked" />
                      <label for="cbMedicines">Medicines </label>
                  </div>
              </form>
            </div>
             
             <div class="product-list">
              
              <?php foreach($all_product as $products):?>
                
                  <div  class="product-item col-md-4" >
                     <div class="thumbnail">
                      <img class="product-image" src="<?php echo site_url()?>assets/images/products/<?php echo $products->productImage?>" width="100px"  />
                      <div class="caption">
                        <h4  data-type="<?php echo $products->productType;?>"><?php echo $products->product_name;?></h4> 

                        <div class="row">
                                  <div class="col-md-7">
                                      <h4>₱<?php echo $products->product_price;?></h4>
                                  </div>
                                  <div class="col-md-5">
                                      <input type="number" name="quantity" id="<?php echo $products->product_table_id;?>" value="1" class="quantity form-control" min="1" max="<?php echo $products->productInStore;?>">
                                  </div>
                        </div>

                        <button class="add_cart btn btn-success btn-block" data-productid="<?php echo $products->product_table_id;?>" data-prod_id ="<?php echo $products->product_id;?>"  data-productname="<?php echo $products->product_name;?>" data-producttype="<?php echo $products->productType;?>" data-productprice="<?php echo $products->product_price;?>">Add To Cart</button>
                      </div>
                    </div>
                  </div> 
            


                 


             <?php endforeach;?>
            
           </div>
         </div>
   </div>


     
   

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Beta Version</b> 
    </div>
    <strong>Copyright &copy; <?php echo date('Y');?>  All rights
    reserved.
  </footer>



  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->


<!--modals -->
<?php $this->load->view('include_pages_staff/modals');?>

<!--page scripts -->


<!-- footer scripts -->

<script src="<?php echo site_url();?>assets/dist/js/generalscripts.js"></script>

<!-- page script -->
<script>



  $(document).ready(function() {


    $('#for_member').hide();

    $('#is_walkin').change(function(){

        var is_walkin = $('#is_walkin').val();

        if(is_walkin == "member"){
          
           $('#for_member').show();
           $('#for_walkin').hide();
        }else if(is_walkin =="walkin"){
          
           $('#for_member').hide();
           $('#for_walkin').show();
        }
    });


    $("#print_close").click(function(){
    $("#close_print_message").hide();
    });

    document.querySelector('#cbItems').addEventListener('change',function (evt) {
                updateProductView("Item", evt.target.checked);
    });

    document.querySelector('#cbFoods').addEventListener('change',function (evt) {
                updateProductView("Food", evt.target.checked);
    });

    document.querySelector('#cbMedicines').addEventListener('change',function (evt) {
                updateProductView("Medicine", evt.target.checked);
    });


    function updateProductView(categoryName, bVisible) {
            // get a list of the product items for the given category.
            // Use the data attributes to narrow the list
            var dataSelectorVal = "";
            switch (categoryName) {
            case "Item":
                dataSelectorVal = "h4[data-type='Item']";
                //alert(3);
                break;
            case "Food":
                dataSelectorVal = "h4[data-type='Food']";
                break;
            case "Medicine":
                dataSelectorVal = "h4[data-type='Medicine']";
                break;
            }
            // use the has() function to select the li tags that are product items
            // that contain the h2 tag with the corresponding data attribute value
            $(".product-item").has(dataSelectorVal).css('display', bVisible ? "" : "none");
    }





    ///cart system



    //prod id is the product id of all products

    $('.add_cart').click(function(){
            $('#detail_cart').load("<?php echo site_url('pos_controller/load_cart');?>");
            var product_id    = $(this).data("productid");
            var prod_id = $(this).data("prod_id");
            var product_name  = $(this).data("productname");
            var product_price = $(this).data("productprice");
            var product_type = $(this).data("producttype");
            var quantity      = $('#' + product_id).val();
            $.ajax({
                url : "<?php echo site_url('pos_controller/add_to_cart');?>",
                method : "POST",
                data : {product_id: product_id,prod_id:prod_id ,product_name: product_name, product_price: product_price, quantity: quantity,product_type: product_type},
                success: function(data){
                    $('#detail_cart').html(data);
                    console.log("nadagdag na" + product_name);
                }
            });
    });


    $(document).on('click','.romove_cart',function(){
        var row_id=$(this).attr("id"); 
        $.ajax({
            url : "<?php echo site_url('pos_controller/delete_cart');?>",
            method : "POST",
            data : {row_id : row_id},
            success :function(data){
                $('#detail_cart').html(data);
            }
        });
    });



     

     $('#detail_cart').load("<?php echo site_url('pos_controller/load_cart');?>");
  });

 

   /* var print_close = document.getElementById("print_close");
    var close_print_message = document.getElementById("close_print_message");

    print_close.addEventListener("click",function(){
        close_print_message.hide();
    });*/


    


     

</script>


</body>
</html>
