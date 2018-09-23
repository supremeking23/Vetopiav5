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


}?>
<!DOCTYPE html>
<html>

<?php $this->load->view('include_pages_admin/page_header');?>

<body class="hold-transition <?php echo $skin_color;?> sidebar-mini" id="pets">
<div class="wrapper">


  <?php $this->load->view('include_pages_admin/document_header');?>
 
  <?php $this->load->view('include_pages_admin/sidebar');?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Pet Type List
        
      </h1>
    
    </section>

    <!-- Main content -->
    <section class="content">


      <div class="row">
        <div class="col-md-12">


          <?php if($this->session->userdata('account_type') == "Super Admin"):?>
           <!--<button class="btn btn-flat btn-warning btn-sm" data-toggle="modal" data-target="#addpetbreed">Pet Breed</button>
           <button class="btn btn-flat btn-success btn-sm" data-toggle="modal" data-target="#petbreed">View Pet Breed</button> -->


          <a href="<?php echo site_url()?>admin/pets" class="btn btn-info btn-flat btn-sm">View Pet List</a>
          <a href="<?php echo site_url()?>admin/view_petbreed" class="btn btn-success btn-flat btn-sm">View Pet Breed</a>
          <button class="btn btn-flat btn-warning btn-sm" data-toggle="modal" data-target="#addpettype">Add Pet Type </button>
          <a href="<?php echo site_url()?>admin/view_petmedicalrecords" class="btn btn-primary btn-flat btn-sm">View Pet Medical Records</a>

  


           <?php endif;?>
           
        </div>


        <!-- /.col -->
      </div>
      <!-- /.row -->

      <br>


      <div class="row">
          <div class="col-md-12">

               <div class="alert alert-success display-success_change_status" style="display: none">
                  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                   <div class="success-message_change_status"></div> 
                </div> 
            

          </div>
      </div>



     
      <div class="row">
        <div class="col-md-12">
          <div class="box box-solid <?php echo $box_color;?>">
            <div class="box-header with-border">
              <h3 class="box-title">Pet Type</h3>


            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive">

              <table  class="datatable_view_pettype table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Pet Type Status</th>
                  <th>Pet Type</th>
                  <th>Number of Pet Breed</th>
                  <th>Number of Pets</th>
                </tr>
                </thead>
                <tbody>
                   
                   <?php foreach($pettype_list as $pl):?>
                    <tr>
                      <td>
                           <div class="row">
                              <div class="form-group">
                                  <div class="col-sm-6">
                                    <div class="checkbox">
                                      <label class="switch">

                                        <input type="checkbox" class="status_changer" data-pettype_id="<?php echo $pl->pettype_id;?>" data-status="<?php echo $pl->pettype_status?>" data-pettype="<?php echo $pl->pettype;?>" <?php echo ($pl->pettype_status == "Active") ?  "checked": ""; ?> > 
                                        <span class="slider round"></span>
                                      </label>
                                    </div>
                                  </div>    
                              </div>
                            </div>
                      </td>
                      <td><?php echo $pl->pettype;?></td>


                      <td>
                        
                        <?php 
                            $no_breeds = $this->pet_management_model->count_number_of_breeds_pettype($pl->pettype_id);
                            foreach($no_breeds as $no_breed){
                            echo $no_breed->count_all;
                        }
                        ?>
                      </td>

                      <td>
                        <?php $no_pets = $this->pet_management_model->count_pets_by_pettype($pl->pettype_id);

                        foreach($no_pets as $no_pet){
                          echo $no_pet->count_all;
                        }
                        ?>
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
      <!-- /.row -->


    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
   
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
<?php $this->load->view('include_pages_admin/add_pettype');?>


<!--page scripts -->


<!-- footer scripts -->

<script src="<?php echo site_url();?>assets/dist/js/generalscripts.js"></script>

<!-- page script -->
<script>

$(function(){

     $('.datatable_view_pettype').DataTable( {
        'ordering'    : false,
        "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
        'paging'      : true,
        'info'        : true,
        dom: 'Bfrtip',
        /*buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ],*/

        buttons: [
            {
              extend: 'pdfHtml5',
              title: 'Pet Type List',
              message: 'Issued by <?php echo $this->session->userdata('complete_name');?> Date: <?php  
                $now = date('Y-m-d H:i:s');
                 $date =date_create($now);
                echo  $log_date_format= date_format($date,"F d, Y h:i:sa");
                ?>',
              customize: function(doc) {
                //setHeader2();
                doc.styles.title = {
                  color: '',
                  fontSize: '40',
                  background: '',
                  alignment: 'center'
                }   
              }  
            },

             {
               extend: 'excelHtml5',
               title: 'Pet Type List',
               message: 'Issued by <?php echo $this->session->userdata('complete_name');?> Date: <?php  
                $now = date('Y-m-d H:i:s');
                 $date =date_create($now);
                echo  $log_date_format= date_format($date,"F d, Y h:i:sa");
                ?>',
  
            },

            {
               extend: 'csvHtml5',
               title: 'Pet Type List',
               message: 'Issued by <?php echo $this->session->userdata('complete_name');?> Date: <?php  
                $now = date('Y-m-d H:i:s');
                 $date =date_create($now);
                echo  $log_date_format= date_format($date,"F d, Y h:i:sa");
                ?>',
               
            },

                ]
            } );





 //refresh after 2 seconds
    function reload(){
     
      setTimeout(function(){ 

          $(".display-success").fadeOut("fast");
          location.reload();
           }, 2000);
    }




     $('.status_changer').on("change",function(){
     
      var status    = $(this).data("status");
      var pettype_id = $(this).data("pettype_id");
      var pettype = $(this).data("pettype");

      var new_status = "";
      if(status == "Active"){
          new_status = "Inactive";
      }else{
          new_status = "Active";
      }
      //alert('status is ' + libraryid);
      $.ajax({
          url : "<?php echo site_url('Pet_management/Change_status_pettype');?>",
          method : "POST",

          data : {pettype_id: pettype_id,status:new_status,pettype:pettype},
          success: function(data){
             $(".display-success_change_status").css("display","block");
             $(".success-message_change_status").html("<p> " +pettype + " status has been updated to "+ new_status  +"</p>");
             reload();
          }
      });
    })

});
   
     

</script>


</body>
</html>
