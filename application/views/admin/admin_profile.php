<?php foreach($theme_color as $t_color){

  $skin_color = $t_color->theme_color;
  $settings_id =$t_color->settings_id;


  if($this->session->userdata('account_type') == "Admin"){
    //$readonly =""
  }
}?>
<!DOCTYPE html>
<html>

<?php $this->load->view('include_pages_admin/page_header');?>

<body class="hold-transition <?php echo $skin_color;?> sidebar-mini" id="admin">
<div class="wrapper">


  <?php $this->load->view('include_pages_admin/document_header');?>
 
  <?php $this->load->view('include_pages_admin/sidebar');?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Admin Section
        
      </h1>
    
    </section>

    <!-- Main content -->
    <section class="content">


            <!-- messages-->
      <div class="row">
          <div class="col-md-12">



             <?php if ($this->session->flashdata('update_admin_success')) { ?>

                <div class="alert alert-success display-success">
                  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <p> <?php echo $this->session->flashdata('update_admin_success'); ?> </p>
                </div>

            <?php }?>

            

          </div>
      </div>
        
       <div class="row">
        

        <?php foreach($admin_details as $a_details):?>

         <div class="col-md-3">
           
             <div class="box box-primary">
                  <div class="box-body box-profile">
                      <a href="" data-toggle="modal" data-target="#changeProfile">
                       
                         <?php if(empty($a_details->profile)){ //guest2?>
                             <img class="profile-user-img img-responsive img-circle" src="<?php echo site_url()?>assets/images/profiles/guest2.jpg" alt="User profile picture">

                          <?php }else{ ?>
                                <img class="profile-user-img img-responsive img-circle" src="<?php echo site_url()?>assets/images/profiles/<?php echo $a_details->profile; ?>" alt="User's Name">
                          <?php } ?>

                      </a>

                      <h3 class="profile-username text-center"><?php echo $a_details->firstname .' '. $a_details->middlename .' '.$a_details->lastname;?></h3>

                      <p class="text-muted text-center"><?php echo $a_details->admin_id?></p>

                      <ul class="list-group list-group-unbordered">
                        <li class="list-group-item">
                          <?php $age = floor((time() - strtotime($a_details->birthdate)) / 31556926);?>
                          <b>Age</b> <a class="pull-right"><?php echo $age;?></a>
                        </li>
                       


                         <li class="list-group-item">
                          <b>Status</b> <a class="pull-right"><?php echo $a_details->is_active;?></a>
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

                    <form action="<?php echo site_url()?>user_management/update_profile_admin" method="POST" enctype="multipart/form-data">
                      <div class="modal-body">
                        <input type="file" name="upload_image" required="" class="form-control">
                        <input type="hidden" name="user_id_update" value="<?php echo $a_details->admin_table_id?>">
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
            <?php $this->load->view('include_pages_admin/admin_detail_tab_panel');?>
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
<?php //$this->load->view('include_pages_admin/modals');?>

<!--page scripts -->


<!-- footer scripts -->

<script src="<?php echo site_url();?>assets/dist/js/generalscripts.js"></script>

<!-- page script -->
<script>
  $(function(){

    var admin_type = "<?php echo $this->session->userdata('account_type');?>";

    //alert(admin_type);

    if(admin_type == "Admin"){
       // $("input[type='text'],select[name='gender'],input[type='date'],input[type='password']").attr("readonly",true);
        //$("input[type='text'],select[name='gender'],input[type='date'],input[type='password'],input[type='file'],button[type='submit'],input[type='submit']").attr("disabled",true);
    }


  });
</script>



</body>
</html>
