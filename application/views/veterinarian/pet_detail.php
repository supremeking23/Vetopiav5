<?php foreach($theme_color as $t_color){

  $skin_color = $t_color->theme_color;
  $settings_id =$t_color->settings_id;

}?>

<!DOCTYPE html>
<html>

<?php $this->load->view('include_pages_vets/page_header');?>

<body class="hold-transition <?php echo $skin_color;?> sidebar-mini" id="pets">
<div class="wrapper">


  <?php $this->load->view('include_pages_vets/document_header');?>
 
  <?php $this->load->view('include_pages_vets/sidebar');?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Pet Information Section
        
      </h1>
    
    </section>

    <!-- Main content -->
    <section class="content">


               <!-- messages-->
      <div class="row">
          <div class="col-md-12">



             <?php if ($this->session->flashdata('update_pet_success')) { ?>

                <div class="alert alert-success display-success">
                  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <p> <?php echo $this->session->flashdata('update_pet_success'); ?> </p>
                </div>

            <?php }?>

            

          </div>
      </div>
        
       <div class="row">
        
        <?php foreach($pet_details as $p_detail):?>

         <div class="col-md-3">
             <div class="box box-primary">
                  <div class="box-body box-profile">
                    

                      <?php if(empty($p_detail->pet_profile)){ //guest2?>
                             <img class="profile-user-img img-responsive img-circle" src="<?php echo site_url()?>assets/images/profiles/guest2.jpg" alt="User profile picture">

                          <?php }else{ ?>
                                <img class="profile-user-img img-responsive img-circle" src="<?php echo site_url()?>assets/images/pets/<?php echo $p_detail->pet_profile; ?>" alt="User's Name">
                          <?php } ?>
                      

                      <h3 class="profile-username text-center"><?php echo $p_detail->petname;?></h3>

                      <p class="text-muted text-center"><?php echo $p_detail->pet_id;?></p>


                      <ul class="list-group list-group-unbordered">
                        <li class="list-group-item">

                          <?php 

                                      $dob = strtotime($p_detail->birthdate);
                                   

                                      $current_time = time();

                                      $age_years = date('Y',$current_time) - date('Y',$dob);
                                      $age_months = date('m',$current_time) - date('m',$dob);
                                      $age_days = date('d',$current_time) - date('d',$dob);

                                       if ($age_days<0) {
                                          $days_in_month = date('t',$current_time);
                                          $age_months--;
                                          $age_days= $days_in_month+$age_days;
                                      }

                                      if ($age_months<0) {
                                          $age_years--;
                                          $age_months = 12+$age_months;
                                      }

                                      $age =0;
                                      if($age_years  == 0){
                                         $age =  $age_months . " Month(s) old";
                                      }else{
                                        $age = $age_years ." Year(s) old";
                                      }

                               ?>


                          <?php //$age = floor((time() - strtotime($p_detail->birthdate)) / 31556926);?>
                          <b>Age</b> <a class="pull-right"><?php echo $age;?></a>
                        </li>
                        <li class="list-group-item">
                          <b>Animal Type</b> <a class="pull-right"><?php echo $p_detail->pettype?></a>
                        </li>
                        <li class="list-group-item">
                          <b> Breed</b> <a class="pull-right"><?php echo $p_detail->pet_breed?></a>
                        </li>

                        <li class="list-group-item">
                          <b> Gender</b> <a class="pull-right"><?php echo $p_detail->gender?></a>
                        </li>                        

                        <li class="list-group-item">
                          <b> Owner</b> <a class="pull-right"><?php echo $p_detail->firstname .' '. $p_detail->middlename .' '. $p_detail->lastname ?></a>
                        </li>
                                 <?php 
                                 //dont touch this!!!
                              $pettype_id = 0;
                              if($p_detail->pettype == "Dog"){
                                  $pettype_id = 1;
                              }else if($p_detail->pettype == "Cat"){
                                  $pettype_id = 2;
                              }


                              //echo $pettype_id;

                           ?>

                        <li class="list-group-item"> 
                            <button type="button" class="btn btn-info btn-sm btn-flat btn-block" data-toggle="modal" data-target="#viewBreedDescription" style="border-radius: 15px;">Breed Detail</button>
                                    <div class="modal fade" id="viewBreedDescription">
                                      <div class="modal-dialog">
                                        <div class="modal-content" style="border-radius: 15px;">
                                          <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                              <span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title">Breed Description</h4>
                                          </div>
                                          <div class="modal-body">
                                           <p text-indent="5"><?php echo $p_detail->breed_description?></p>
                                          </div>
                                          <div class="modal-footer">
                                            
                                          </div>
                                        </div>
                                        <!-- /.modal-content -->
                                      </div>
                                      <!-- /.modal-dialog -->
                                    </div>
                                    <!-- /.modal -->
                        </li>

                      </ul>

                     
                  </div>
             </div>
         </div>


          <div class="modal fade" id="changeProfile">
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                      <h4 class="modal-title">Change Profile Picture</h4>
                    </div>

                    <form action="<?php echo site_url()?>pet_management/update_profile_pet_staff_action" method="POST" enctype="multipart/form-data">
                      <div class="modal-body">
                        <input type="file" name="upload_image" required="" class="form-control">
                        <input type="hidden" name="user_id_update" value="<?php echo $p_detail->pet_table_id?>">
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                        
                        <input type="submit" name="btnchangeProfile" class="btn btn-flat btn-sm btn-primary">
                      </div>
                    </form>
                  </div>
                  <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
         </div>

       <?php endforeach;?>


         <div class="col-md-9">
            <?php $this->load->view('include_pages_vets/pet_detail_tab_panel');?>
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


<!--page scripts -->


<!-- footer scripts -->

<script src="<?php echo site_url();?>assets/dist/js/generalscripts.js"></script>

<!-- page script -->
<script>

   $("input[type='text'],select[name='petn'],input[type='date'],input[type='password'],input[type='file'],button[type='submit'],input[type='submit']").attr("disabled",true);
</script>


</body>
</html>
