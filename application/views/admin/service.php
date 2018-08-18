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

<?php $this->load->view('include_pages_admin/page_header');?>

<body class="hold-transition <?php echo $skin_color;?> sidebar-mini" id="services">
<div class="wrapper">


  <?php $this->load->view('include_pages_admin/document_header');?>
 
  <?php $this->load->view('include_pages_admin/sidebar');?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Services
        
      </h1>
    
    </section>

    <!-- Main content -->
    <section class="content">




      <div class="row">
        <div class="col-md-12">

          <?php if($this->session->userdata('account_type') == "Super Admin"):?>

          <button class="btn btn-flat btn-info btn-sm" data-toggle="modal" data-target="#addService">Add New Service</button>

        <?php endif;?>
      </div>
        <!-- /.col -->
      </div>



      <br /> 
      <!-- messages-->
      <div class="row">
          <div class="col-md-12">
            <?php if ($this->session->flashdata('add_service_success')) { ?>

            <div class="alert alert-success display-success">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <p> <?php echo $this->session->flashdata('add_service_success'); ?> </p>
            </div>

          <?php }?>

          <?php if ($this->session->flashdata('update_service_success')) { ?>

            <div class="alert alert-success display-success">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <p> <?php echo $this->session->flashdata('update_service_success'); ?> </p>
            </div>

          <?php }?>

          
          </div>
      </div>


       

      <!-- /.row -->
      <div class="row">
        <div class="col-md-12">
           <div class="box box-warning box-solid">
              <div class="box-header with-border">
                <h3 class="box-title">Health Programs for Adult Dogs</h3>

                <div class="box-tools pull-right">
                  <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="">
                    <i class="fa fa-minus"></i></button>
                  
                </div>
              </div>
              <div class="box-body">
                    <table  class="datatables table table-bordered table-striped">
                          <thead>
                          <tr>
                            <th>Program Name</th>
                           
                            <th>Description</th>
                            <th>Price</th>
                            <th>Action</th>
                          </tr>
                          </thead>
                          <tbody>
                          
                          <?php foreach($get_pet_services_for_adult_dogs as $adult_dogs):?>
                          <tr>
                            <td><?php echo $adult_dogs->adult_dog_prog_name;?> </td>
                           
                            <td><?php echo $adult_dogs->adult_dog_prog_description;?>  </td>
                            <td>₱<?php echo $adult_dogs->adult_dog_prog_price;?>  </td>
                            <td><button type="button" class="btn btn-flat btn-sm btn-primary" data-toggle="modal" data-target="#editDogService<?php echo $adult_dogs->adult_dog_prog_id?>">Edit Detail</button></td>

                            <div class="modal fade" id="editDogService<?php echo $adult_dogs->adult_dog_prog_id?>">
                                <div class="modal-dialog">
                                  <div class="modal-content">
                                    <div class="modal-header">
                                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span></button>
                                      <h4 class="modal-title">Edit Details</h4>
                                    </div>
                                     <?php echo form_open_multipart('pet_management/edit_service_dog','id="formAddService"');?>

                                        <div class="modal-body">
                                          
                                            <div class="row">
                                                  <div class="col-md-12">
                                                 
                                                      <?php 

                                                      echo form_label('Program Name', 'program_name','class="control-label"');
                                                      ?>

                                                      <?php 
                                                        $data = array(
                                                                'name'          => 'program_name',
                                                                'id'            => 'program_name',
                                                                'value'         => $adult_dogs->adult_dog_prog_name,
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

                                                      echo form_label('Program Description', 'program_description','class="control-label"');
                                                      ?>

                                                     <textarea class="form-control textareas" name="program_description"><?php echo $adult_dogs->adult_dog_prog_description;?></textarea>


                                                 </div>   
                                            </div>

                                            <br />



                                             <div class="row">
                                                  <div class="col-md-12">
                                                 
                                                      <?php 

                                                      echo form_label('Price', 'price','class="control-label"');
                                                      ?>

                                                    <input type="number" name="price" value="<?php echo $adult_dogs->adult_dog_prog_price;?>" class="form-control">


                                                 </div>   
                                            </div>

                                            <br />


                                           


                                        </div>
                                        <div class="modal-footer">
                                          <button type="button" class="btn btn-default pull-left" data-dismiss="modal" >Close</button>
                                          <?php 

                                              $data = array(
                                                'name' => 'submit',
                                                'value' => 'Submit',
                                                'id' => 'edit_service_btn',
                                                'class' => 'btn btn-primary',
                                              );

                                            echo form_submit($data);?>

                                          <input type="hidden" name="dog_service_id" value="<?php echo $adult_dogs->adult_dog_prog_id;?>">
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
              <!-- /.box-body -->
              <div class="box-footer">
               
              </div>
              <!-- /.box-footer-->
           </div>
        </div>
     </div>


   <div class="row">
        <div class="col-md-12">
           <div class="box box-info box-solid collapsed-box">
              <div class="box-header with-border">
                <h3 class="box-title">Health Programs for Puppies</h3>

                <div class="box-tools pull-right">
                  <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="">
                    <i class="fa fa-plus"></i></button>
                  
                </div>
              </div>
              <div class="box-body">
                  
                  <table  class="datatables table table-bordered table-striped">
                          <thead>
                          <tr>
                            <th>Program Name</th>
                           
                            <th>Description</th>
                            <th>Price</th>
                            <th>Action</th>
                          </tr>
                          </thead>
                          <tbody>
                          
                          <?php foreach($get_pet_services_puppies as $puppies):?>
                          <tr>
                            <td><?php echo $puppies->puppies_prog_name;?> </td>
                           
                            <td><?php echo $puppies->puppies_prog_description;?>  </td>
                            <td>₱<?php echo $puppies->puppies_prog_price;?>  </td>
                            <td><button type="button" class="btn btn-flat btn-sm btn-primary" data-toggle="modal" data-target="#editPuppyService<?php echo $puppies->puppies_prog_id?>">Edit Detail</button></td>
                            <div class="modal fade" id="editPuppyService<?php echo $puppies->puppies_prog_id?>">
                                <div class="modal-dialog">
                                  <div class="modal-content">
                                    <div class="modal-header">
                                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span></button>
                                      <h4 class="modal-title">Edit Details</h4>
                                    </div>
                                     <?php echo form_open_multipart('pet_management/edit_service_puppy','id="formAddService"');?>

                                        <div class="modal-body">
                                          
                                            <div class="row">
                                                  <div class="col-md-12">
                                                 
                                                      <?php 

                                                      echo form_label('Program Name', 'program_name','class="control-label"');
                                                      ?>

                                                      <?php 
                                                        $data = array(
                                                                'name'          => 'program_name',
                                                                'id'            => 'program_name',
                                                                'value'         => $puppies->puppies_prog_name,
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

                                                      echo form_label('Program Description', 'program_description','class="control-label"');
                                                      ?>

                                                     <textarea class="form-control textareas" name="program_description"><?php echo $puppies->puppies_prog_description;?></textarea>


                                                 </div>   
                                            </div>

                                            <br />



                                             <div class="row">
                                                  <div class="col-md-12">
                                                 
                                                      <?php 

                                                      echo form_label('Price', 'price','class="control-label"');
                                                      ?>

                                                    <input type="number" name="price" value="<?php echo $puppies->puppies_prog_price;?>" class="form-control">


                                                 </div>   
                                            </div>

                                            <br />


                                           


                                        </div>
                                        <div class="modal-footer">
                                          <button type="button" class="btn btn-default pull-left" data-dismiss="modal" >Close</button>
                                          <?php 

                                              $data = array(
                                                'name' => 'submit',
                                                'value' => 'Submit',
                                                'id' => 'edit_service_btn',
                                                'class' => 'btn btn-primary',
                                              );

                                            echo form_submit($data);?>

                                          <input type="hidden" name="puppy_service_id" value="<?php echo $puppies->puppies_prog_id;?>">
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
              <!-- /.box-body -->
              <div class="box-footer">
               
              </div>
              <!-- /.box-footer-->
           </div>
        </div>
     </div>



   <div class="row">
        <div class="col-md-12">
           <div class="box box-danger box-solid collapsed-box">
              <div class="box-header with-border">
                <h3 class="box-title">Health Programs for Adult Cats</h3>

                <div class="box-tools pull-right">
                  <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="">
                    <i class="fa fa-plus"></i></button>
                  
                </div>
              </div>
              <div class="box-body">
                  
                     <table  class="datatables table table-bordered table-striped">
                          <thead>
                          <tr>
                            <th>Program Name</th>
                           
                            <th>Description</th>
                            <th>Price</th>
                            <th>Action</th>
                          </tr>
                          </thead>
                          <tbody>
                          
                          <?php foreach($get_pet_services_cats as $cats):?>
                          <tr>
                            <td><?php echo $cats->cats_prog_name;?> </td>
                           
                            <td><?php echo $cats->cats_prog_description;?>  </td>
                            <td>₱<?php echo $cats->cats_prog_price;?>  </td>
                             <td><button type="button" class="btn btn-flat btn-sm btn-primary" data-toggle="modal" data-target="#editCatService<?php echo $cats->cats_prog_id?>">Edit Detail</button></td>
                            <div class="modal fade" id="editCatService<?php echo $cats->cats_prog_id?>">
                                <div class="modal-dialog">
                                  <div class="modal-content">
                                    <div class="modal-header">
                                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span></button>
                                      <h4 class="modal-title">Edit Details</h4>
                                    </div>
                                     <?php echo form_open_multipart('pet_management/edit_service_cat','id="formAddService"');?>

                                        <div class="modal-body">
                                          
                                            <div class="row">
                                                  <div class="col-md-12">
                                                 
                                                      <?php 

                                                      echo form_label('Program Name', 'program_name','class="control-label"');
                                                      ?>

                                                      <?php 
                                                        $data = array(
                                                                'name'          => 'program_name',
                                                                'id'            => 'program_name',
                                                                'value'         => $cats->cats_prog_name,
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

                                                      echo form_label('Program Description', 'program_description','class="control-label"');
                                                      ?>

                                                     <textarea class="form-control textareas" name="program_description"><?php echo $cats->cats_prog_description;?></textarea>


                                                 </div>   
                                            </div>

                                            <br />



                                             <div class="row">
                                                  <div class="col-md-12">
                                                 
                                                      <?php 

                                                      echo form_label('Price', 'price','class="control-label"');
                                                      ?>

                                                    <input type="number" name="price" value="<?php echo $cats->cats_prog_price;?>" class="form-control">


                                                 </div>   
                                            </div>

                                            <br />


                                           


                                        </div>
                                        <div class="modal-footer">
                                          <button type="button" class="btn btn-default pull-left" data-dismiss="modal" >Close</button>
                                          <?php 

                                              $data = array(
                                                'name' => 'submit',
                                                'value' => 'Submit',
                                                'id' => 'edit_service_btn',
                                                'class' => 'btn btn-primary',
                                              );

                                            echo form_submit($data);?>

                                          <input type="hidden" name="cat_service_id" value="<?php echo $cats->cats_prog_id;?>">
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
              <!-- /.box-body -->
              <div class="box-footer">
               
              </div>
              <!-- /.box-footer-->
           </div>
        </div>
     </div>


   <div class="row">
        <div class="col-md-12">
           <div class="box box-primary box-solid collapsed-box">
              <div class="box-header with-border">
                <h3 class="box-title">Health Programs for Kittens</h3>

                <div class="box-tools pull-right">
                  <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="">
                    <i class="fa fa-plus"></i></button>
                  
                </div>
              </div>
              <div class="box-body">
                  
                   <table  class="datatables table table-bordered table-striped">
                          <thead>
                          <tr>
                            <th>Program Name</th>
                           
                            <th>Description</th>
                            <th>Price</th>
                            <th>Action</th>
                            <act
                          </tr>
                          </thead>
                          <tbody>
                          
                          <?php foreach($get_pet_services_kittens as $kittens):?>
                          <tr>
                            <td><?php echo $kittens->kittens_prog_name;?> </td>
                           
                            <td><?php echo $kittens->kittens_prog_description;?>  </td>
                            <td>₱<?php echo $kittens->kittens_prog_price;?>  </td>
                            <td><button type="button" class="btn btn-flat btn-sm btn-primary" data-toggle="modal" data-target="#editKittenService<?php echo $kittens->kittens_prog_id?>">Edit Detail</button></td>

                             <div class="modal fade" id="editKittenService<?php echo $kittens->kittens_prog_id?>">
                                <div class="modal-dialog">
                                  <div class="modal-content">
                                    <div class="modal-header">
                                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span></button>
                                      <h4 class="modal-title">Edit Details</h4>
                                    </div>
                                     <?php echo form_open_multipart('pet_management/edit_service_kitten','id="formAddService"');?>

                                        <div class="modal-body">
                                          
                                            <div class="row">
                                                  <div class="col-md-12">
                                                 
                                                      <?php 

                                                      echo form_label('Program Name', 'program_name','class="control-label"');
                                                      ?>

                                                      <?php 
                                                        $data = array(
                                                                'name'          => 'program_name',
                                                                'id'            => 'program_name',
                                                                'value'         => $kittens->kittens_prog_name,
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

                                                      echo form_label('Program Description', 'program_description','class="control-label"');
                                                      ?>

                                                     <textarea class="form-control textareas" name="program_description"><?php echo $kittens->kittens_prog_description;?></textarea>


                                                 </div>   
                                            </div>

                                            <br />



                                             <div class="row">
                                                  <div class="col-md-12">
                                                 
                                                      <?php 

                                                      echo form_label('Price', 'price','class="control-label"');
                                                      ?>

                                                    <input type="number" name="price" value="<?php echo $kittens->kittens_prog_price;?>" class="form-control">


                                                 </div>   
                                            </div>

                                            <br />


                                           


                                        </div>
                                        <div class="modal-footer">
                                          <button type="button" class="btn btn-default pull-left" data-dismiss="modal" >Close</button>
                                          <?php 

                                              $data = array(
                                                'name' => 'submit',
                                                'value' => 'Submit',
                                                'id' => 'edit_service_btn',
                                                'class' => 'btn btn-primary',
                                              );

                                            echo form_submit($data);?>

                                          <input type="hidden" name="kitten_service_id" value="<?php echo $kittens->kittens_prog_id;?>">
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
              <!-- /.box-body -->
              <div class="box-footer">
                
              </div>
              <!-- /.box-footer-->
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
<?php $this->load->view('include_pages_admin/add_service_modal');?>

<!--page scripts -->


<!-- footer scripts -->

<script src="<?php echo site_url();?>assets/dist/js/generalscripts.js"></script>

<!-- page script -->
<script>

    var check_status = document.querySelector('#check_status').addEventListener('click',function(){
         alert('ivan');
    });


     

</script>


</body>
</html>
