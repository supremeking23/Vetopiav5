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
          <a href="<?php echo site_url()?>admin/view_pettype" class="btn btn-warning btn-flat btn-sm">View Pet Type</a>
          <button class="btn btn-flat btn-success btn-sm" data-toggle="modal" data-target="#addpetbreed">Add Pet Breed </button>
          <a href="<?php echo site_url()?>admin/view_petmedicalrecords" class="btn btn-primary btn-flat btn-sm">View Pet Medical Records</a>

  


           <?php endif;?>
           
        </div>


        <!-- /.col -->
      </div>
      <!-- /.row -->

      <br>


      <div class="row">
          <div class="col-md-12">

         
            

          </div>
      </div>
     
      <div class="row">
        <div class="col-md-12">
          <div class="box box-solid <?php echo $box_color;?>">
            <div class="box-header with-border">
              <h3 class="box-title">Pet Breed</h3>


            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive">

              <table  class="datatable_view_petbreed table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Pet Type</th>
                  <th>Breed</th>
                  <th>Breed Description</th>
                  <th>Number of Pets</th>
                  <th>Action</th>
                </tr>
                </thead>
                <tbody>
                   
                   <?php foreach($breed_list as $bl):?>
                    <tr>
                      <td><?php echo ucfirst($bl->pettype_code);?></td>

                      <td><?php echo ($bl->pet_breed);?></td>
                      <td>
                          <?php echo ($bl->breed_description);?>
                      </td>

                      <td>
                        <?php $no_pets = $this->pet_management_model->count_pets_by_breed($bl->breed_id);
                           
                           foreach($no_pets as $no_pet){
                             echo $no_pet->count_all;
                           }
                        ?>
                      </td>
                      <td>
                        <button type="button" class="btn btn-info btn-sm btn-flat" data-toggle="modal" data-target="#editDetail<?php echo $bl->breed_id;?>">Edit Detail</button>
                      
                      </td>
                        <div class="modal fade" id="editDetail<?php echo $bl->breed_id;?>">
                          <div class="modal-dialog">
                            <div class="modal-content">
                              <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                  <span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title">Edit  Description for Breed: <?php echo ucfirst($bl->pet_breed);?></h4>
                              </div>
                              <form method="POST" id="formEditBreed" enctype="multipart/form-data">
                                  <div class="modal-body">

                                    <div class="alert alert-success display-success_edit_breed_description" style="display: none">
                                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                       <div class="success-message_edit_breed_description"></div> 
                                    </div> 
                                   
                                      <textarea class="form-control textareas" id ="breed_description" name="breed_description" > <?php echo ($bl->breed_description);?></textarea>
                                      <input type="hidden" name="breed_id" id="breed_id" value="<?php echo $bl->breed_id;?>">
                                  
                                  </div>
                                  <div class="modal-footer">
                                          <button type="button" class="btn btn-default pull-left btn-flat btn-sm" data-dismiss="modal" >Close</button>
                                          <?php 

                                             $data = array(
                                              'name' => 'submit',
                                              'value' => 'Save',
                                              'id' => 'edit_breed_btn edit',
                                              'class' => 'btn btn-primary edit btn-flat btn-sm',
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
<?php $this->load->view('include_pages_admin/add_pet_breed');?>


<!--page scripts -->


<!-- footer scripts -->

<script src="<?php echo site_url();?>assets/dist/js/generalscripts.js"></script>

<!-- page script -->
<script>

$(function(){

     $('.datatable_view_petbreed ').DataTable( {
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
              title: 'Pet Breed List',
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
               title: 'Pet Breed List',
               message: 'Issued by <?php echo $this->session->userdata('complete_name');?> Date: <?php  
                $now = date('Y-m-d H:i:s');
                 $date =date_create($now);
                echo  $log_date_format= date_format($date,"F d, Y h:i:sa");
                ?>',
  
            },

            {
               extend: 'csvHtml5',
               title: 'Pet Breed List',
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


    $(document).on('submit', '#formEditBreed', function(event){
      event.preventDefault();

      var formData = new FormData(this);
      console.log(formData);
      $.ajax({
        method : 'POST',
        url: '<?php echo site_url()?>pet_management/edit_breed_description',
        data: formData,
        //dataType: 'json',
        contentType: false,
        cache: false,
        processData:false,
        success:function(data){
            $('#formEditBreed')[0].reset();
            $('.edit').attr('disabled', true);
            $(".display-success_edit_breed_description").css("display","block");
            $(".success-message_edit_breed_description").html("<p>Pet Breed Description has been updated successfully</p>");
            reload();
        },
      });
      
    });


});
   
     

</script>


</body>
</html>
