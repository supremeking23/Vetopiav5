<?php foreach($theme_color as $t_color){

  $skin_color = $t_color->theme_color;
  $settings_id =$t_color->settings_id;

}?>

<!DOCTYPE html>
<html>

<?php $this->load->view('include_pages_admin/page_header');?>

<body class="hold-transition <?php echo $skin_color;?> sidebar-mini" id="mypet">
<div class="wrapper">


  <?php $this->load->view('include_pages_customer/document_header');?>
 
  <?php $this->load->view('include_pages_customer/sidebar');?>
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
                      <a href="#" >

                      <?php if(empty($p_detail->pet_profile)){ //guest2?>
                             <img class="profile-user-img img-responsive img-circle" src="<?php echo site_url()?>assets/images/pets/stock-vector-paw-print-205756207.jpg" alt="User profile picture">

                          <?php }else{ ?>
                                <img class="profile-user-img img-responsive img-circle" src="<?php echo site_url()?>assets/images/pets/<?php echo $p_detail->pet_profile; ?>" alt="User's Name">
                          <?php } ?>
                      </a>

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
                          <b>Age</b> <a class="pull-right"><?php echo $age;?></a>
                        </li>
                        <li class="list-group-item">
                          <b>Animal Type</b> <a class="pull-right"><?php echo $p_detail->pettype?></a>
                        </li>
                        <li class="list-group-item">
                          <b> Breed</b> <a class="pull-right"><?php echo $p_detail->pet_breed?></a>
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

                      </ul>

                     
                  </div>
             </div>
         </div>


     

       <?php endforeach;?>


         <div class="col-md-9">
            <?php $this->load->view('include_pages_customer/pet_detail_tab_panel');?>
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
</script>


</body>
</html>
