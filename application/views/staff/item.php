<?php foreach($theme_color as $t_color){

  $skin_color = $t_color->theme_color;
  $settings_id =$t_color->settings_id;

}?>

<!DOCTYPE html>
<html>

<?php $this->load->view('include_pages_admin/page_header');?>

<body class="hold-transition <?php echo $skin_color;?> sidebar-mini" id="item">
<div class="wrapper">


  <?php $this->load->view('include_pages_admin/document_header');?>
 
  <?php $this->load->view('include_pages_admin/sidebar');?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Items and Accessories
        
      </h1>
    
    </section>

    <!-- Main content -->
    <section class="content">
     
      <div class="row">
        <div class="col-md-12">

          <?php if($this->session->userdata('account_type') == "Super Admin"):?>

          <button class="btn btn-flat btn-info btn-sm" data-toggle="modal" data-target="#addProduct">Add New Product</button>

        <?php endif;?>
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->

      <br /> 
      <!-- messages-->
      <div class="row">
          <div class="col-md-12">

            

             
             <?php if ($this->session->flashdata('add_product_success')) { ?>

            <div class="alert alert-success display-success">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <p> <?php echo $this->session->flashdata('add_product_success'); ?> </p>
            </div>

          <?php }?>


           <?php if ($this->session->flashdata('add_product_supply')) { ?>

            <div class="alert alert-success display-success">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <p> <?php echo $this->session->flashdata('add_product_supply'); ?> </p>
            </div>

          <?php }?>


          
        



          </div>
      </div>


     <div class="row">
        <div class="col-md-12">
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Items</h3>

              
            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive">

              <table  class="datatables table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Product Name</th>
                  <th>Price</th>
                  <th>Number of Supply Left</th>
                  
                  <th>Action</th>
                </tr>
                </thead>
                <tbody>
                

                  <?php foreach($all_items as $items):?>

                  <tr>
                     <td>
                    <?php echo $items->itemname;?>
                    </td>
                    <td><?php echo $items->price;?></td>
                    <td>
                    <?php echo $items->productInStore;?>
                    </td>
                    <td>
                    <a href="<?php echo site_url()?>admin/item_details/<?php echo $items->item_table_id;?>"  class="btn btn-sm btn-fat btn-info"  data-tooltip="tooltip" data-title="View Detail"><span class="fa fa-file-o"></span></a>

                    <button type="button" class="btn btn-sm btn-warning btn-flat" data-tooltip="tooltip" data-title="Add Supply" data-toggle="modal" data-target="#addSupply<?php echo $items->item_table_id;?>">
               <span class="fa fa-plus"></span>
              </button>
                    </td>
               </tr>


              

                  <div class="modal fade" id="addSupply<?php echo $items->item_table_id;?>">
                      <div class="modal-dialog">
                        <div class="modal-content">
                          <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title">Add Supply to <?php echo $items->itemname;?></h4>
                          </div>

                          <?php echo form_open_multipart('inventory/add_supply_item','id="add_supply_item"');?>
                          <div class="modal-body">
                           
                              <div class="row">
                                    <div class="col-md-12">
                                   
                                        <?php 

                                        echo form_label('Supply Count', 'supplycount','class="control-label"');
                                        ?>



                                        <input type="number" name="supplycount" min="0" max="200" class="form-control" required="">
                                   </div>   
                              </div>

                            <input type="hidden" name="item_id" value="<?php echo $items->item_id?>">

                            <input type="hidden" name="item_table_id" value="<?php echo $items->item_table_id;?>">
                            <input type="hidden" name="product_table_id" value="<?php echo $items->product_table_id;?>">
                            <input type="hidden" name="itemname" value="<?php echo $items->itemname;?>">

                          </div>
                          <div class="modal-footer">
                            <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                             <?php 

                                $data = array(
                                  'name' => 'submit',
                                  'value' => 'Add',
                                  'id' => 'add_item_btn',
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
                    <!-- /.modal -->



             <?php endforeach;?>

                </tbody>
               
              </table>


            </div>
            <!-- ./box-body -->
            <div class="box-footer">
            
            </div>
            <!-- /.box-footer -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
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
<?php $this->load->view('include_pages_admin/add_item_modal');?>

<!--page scripts -->


<!-- footer scripts -->

<script src="<?php echo site_url();?>assets/dist/js/generalscripts.js"></script>

<!-- page script -->
<script>

      $(function(){

        //all are not use

        var check_status = document.querySelector('#check_status').addEventListener('click',function(){
        // alert('ivan');
        //alert(check_status.val());
    });
      

        function removeSuccessMessage() {
          setTimeout(function(){ 

          $(".display-success").fadeOut("slow");
          location.reload();
           }, 2000);
         }


          //removeSuccessMessage();


         //passwordChecker();

         //addAdmin();
      });

</script>


</body>
</html>
