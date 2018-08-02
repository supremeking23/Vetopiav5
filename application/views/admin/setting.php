<?php foreach($theme_color as $t_color){

  $skin_color = $t_color->theme_color;
  $settings_id =$t_color->settings_id;
  $aboutus_content =  $t_color->aboutus_content;

  $clinic_home_address = $t_color->clinic_home_address;
  $clinic_barangay_address = $t_color->clinic_barangay_address;
  $clinic_city_address = $t_color->clinic_city_address;

  $clinic_postal_id = $t_color->clinic_postal_id;

  $clinic_email_address = $t_color->clinic_email_address;


  $vet_fee = $t_color->vet_fee;

}?>

<!DOCTYPE html>
<html>

<?php $this->load->view('include_pages_admin/page_header');?>

<body class="hold-transition <?php echo $skin_color;?> sidebar-mini" id="settings">
<div class="wrapper">


  <?php $this->load->view('include_pages_admin/document_header');?>
 
  <?php $this->load->view('include_pages_admin/sidebar');?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Settings
        <small></small>
      </h1>
    
    </section>

    <!-- Main content -->
    <section class="content">


        <?php if ($this->session->flashdata('add_article_success')) { ?>

            <div class="alert alert-success display-success">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <p> <?php echo $this->session->flashdata('add_article_success'); ?> </p>
            </div>

          <?php }?>


          <?php if ($this->session->flashdata('update_settings_success')) { ?>

            <div class="alert alert-success display-success">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <p> <?php echo $this->session->flashdata('update_settings_success'); ?> </p>
            </div>

          <?php }?>


    
     
      <div class="row">
        <div class="col-lg-6 col-xs-12">
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Theme Color</h3>

            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive">




              <form action="<?php echo site_url()?>settings/change_theme_color" method="POST">
                 


                  <?php echo form_label('Theme Color', 'theme_color','class="control-label"');?>

                    <?php //option for  gender
                          $option = array(
                            
                              "skin-blue" => "Blue",
                              "skin-green" => "Green",
                              "skin-yellow" => "Yellow",
                              "skin-red" => "Red",
                              
                          );
                      ?>

                      <?php //parameters(attribute name , options,selected option,added attibute ex:class,required)?>
                             <?php echo form_dropdown('theme_color',$option,$skin_color,'class="form-control" required');?>
                
                <br>

                      <input type="hidden" name="settings_id" value="1">
                      <input type="submit" name="btn_theme_color" value="Submit" class="btn btn-sm btn-flat btn-primary pull-right">

              </form>
            

            </div>
            <!-- ./box-body -->
            <div class="box-footer">
            
            </div>
            <!-- /.box-footer -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->


        <div class="col-lg-6 col-xs-12">
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">About Content</h3>

            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive">




              <form action="<?php echo site_url()?>settings/aboutus_content_changer" method="POST">
                 


                  <?php echo form_label('About Content', 'aboutus_content','class="control-label"');?>

                  <textarea class="form-control textareas" name="aboutus_content" cols="6" rows="8"><?php echo $aboutus_content;?></textarea>
                 
                
                <br>

                      <input type="hidden" name="settings_id" value="1">
                      <input type="submit" name="btn_theme_color" value="Submit" class="btn btn-sm btn-flat btn-primary pull-right">

              </form>
            

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


      <div class="row">
        <div class="col-lg-6 col-xs-12">
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Clinic Address</h3>

            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive">




              <form action="<?php echo site_url()?>settings/clinic_address_changer" method="POST">
                 


                  <?php echo form_label('Home Address', 'home_address','class="control-label"');?>

                    <input type="text" name="clinic_home_address" class="form-control" value="<?php echo $clinic_home_address;?>">

                    <br />


                    <?php echo form_label('Barangay Address', 'clinci_barangay_address','class="control-label"');?>

                    <input type="text" name="clinic_barangay_address" class="form-control" value="<?php echo $clinic_barangay_address;?>">
                
                    <br>

                    <?php echo form_label('City Address Address', 'clinic_city_address','class="control-label"');?>

                    <input type="text" name="clinic_city_address" class="form-control " value="<?php echo $clinic_city_address;?>">
                
                    <br>

                    <?php echo form_label('Postal ID', 'clinic_postal_id','class="control-label"');?>

                    <input type="text" name="clinic_postal_id" class="form-control" value="<?php echo $clinic_postal_id;?>">
                
                    <br>
                   

                      <input type="hidden" name="settings_id" value="1">
                      <input type="submit" name="btn_address_changer" value="Submit" class="btn btn-sm btn-flat btn-primary pull-right">

              </form>
            

            </div>
            <!-- ./box-body -->
            <div class="box-footer">
            
            </div>
            <!-- /.box-footer -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->

        <div class="col-lg-6 col-xs-12">
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Clinic Email Address</h3>

            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive">




              <form action="<?php echo site_url()?>settings/clinic_email_changer" method="POST">
                 


                  <?php echo form_label('Email Address', 'clinic_email_address','class="control-label"');?>

                    <input type="text" name="clinic_email_address" class="form-control" value="<?php echo $clinic_email_address;?>">

                    <br />



                      <input type="hidden" name="settings_id" value="1">
                      <input type="submit" name="btn_email_changer" value="Submit" class="btn btn-sm btn-flat btn-primary pull-right">

              </form>
            

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



      <div class="row">
         <div class="col-lg-6 col-xs-12">
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Veterinary Fee</h3>

            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive">




              <form action="<?php echo site_url()?>settings/veterinary_fee_changer" method="POST">
                 


                  <?php echo form_label('Veterinary Service Fee', 'vet_fee','class="control-label"');?>

                    <input type="text" name="vet_fee" class="form-control" value="<?php echo $vet_fee;?>">

                    <br />



                      <input type="hidden" name="settings_id" value="1">
                      <input type="submit" name="btn_email_changer" value="Submit" class="btn btn-sm btn-flat btn-primary pull-right">

              </form>
            

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






      <div class="row">
         <div class="col-lg-6 col-xs-12">
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Pet Health Care Library</h3>

            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive">

              <button class="btn btn-sm btn-flat btn-success" data-toggle="modal" data-target="#addModal">
                Add Article
              </button>

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
<?php $this->load->view('include_pages_admin/modals');?>

<!--page scripts -->

<!-- page script -->
<script>

</script>
<!-- footer scripts -->

<script src="<?php echo site_url();?>assets/dist/js/generalscripts.js"></script>

</body>
</html>
