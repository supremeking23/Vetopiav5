<?php foreach($theme_color as $t_color){

    $skin_color = $t_color->theme_color;
    $settings_id =$t_color->settings_id;

    $box_color = "";

    if($skin_color == "skin-green"){
      $box_color = "box-success";
    }else if($skin_color == "skin-blue"){
      $box_color = "box-primary";
    }else if($skin_color == "skin-red"){
      $box_color = "box-danger";
    }else if($skin_color == "skin-yellow"){
      $box_color = "box-warning";
    }


  }

?>

<!DOCTYPE html>
<html>

<?php $this->load->view('include_pages_vets/page_header');?>

<body class="hold-transition <?php echo $skin_color;?> sidebar-mini" id="medicine">
<div class="wrapper">


  <?php $this->load->view('include_pages_vets/document_header');?>
 
  <?php $this->load->view('include_pages_vets/sidebar');?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Medicine Section
        
      </h1>
    
    </section>

    <!-- Main content -->
    <section class="content">
     


      <br /> 
      <!-- messages-->
      <div class="row">
          <div class="col-md-12">

            

             
             <?php if ($this->session->flashdata('pull_out_med')) { ?>

            <div class="alert alert-success display-success">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <p> <?php echo $this->session->flashdata('pull_out_med'); ?> </p>
            </div>

          <?php }?>


         


          
        



          </div>
      </div>


     <div class="row">
        <div class="col-md-12">
          <div class="box <?php echo $box_color;?> box-solid">
            <div class="box-header with-border">
              <h3 class="box-title">Medicines</h3>

              
            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive">

              <table  class="datatables table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Product Name</th>
                  <th>Product Image</th>
                  <th>Medicine Type</th>
                 
                  <th>Detail</th>
                  
                  <th>Action</th>
                </tr>
                </thead>
                <tbody>
                

                  <?php foreach($all_meds as $meds):?>

                  <tr>
                     <td>
                    <?php echo $meds->medname;?>
                    </td>
                    
                    <td><img  class="img img-responsive "src="<?php echo site_url()?>assets/images/products/<?php echo $meds->medImage;?>" width="140px"></td>
                    <td><?php echo $meds->medType;?></td>
                    <td><?php echo $meds->meddescription;?></td>
                    
                    <td>
                      <form action="<?php echo site_url()?>inventory/pull_out_med" method="POST">
                        <input type="submit" name="submit" value="pull-out" class="btn btn-primary btn-flat btn-sm">
                        <input type="hidden" name="med_table_id" value="<?php echo $meds->med_table_id;?>">
                        <input type="hidden" name="product_table_id" value="<?php echo $meds->product_table_id;?>">
                      </form>
                    </td>
               </tr>


              




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
<?php $this->load->view('include_pages_admin/add_medicine_modal');?>

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
