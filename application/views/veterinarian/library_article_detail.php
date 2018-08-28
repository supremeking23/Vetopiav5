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

<?php $this->load->view('include_pages_vets/page_header');?>
<style type="text/css">
  a {
    padding-left: 5px;
    padding-right: 5px;
    margin-left: 5px;
    margin-right: 5px;
  }
</style>

<body class="hold-transition <?php echo $skin_color;?> sidebar-mini" id="library">
<div class="wrapper">


  <?php $this->load->view('include_pages_vets/document_header');?>
 
  <?php $this->load->view('include_pages_vets/sidebar');?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">

      <?php foreach($find_library_article as $fla){
            $article_title = $fla->title;
            $image  = $fla->article_image;
            $library_id = $fla->library_id;
      }?>
      <h1>
          Pet Health Care Library <small><?php echo  $article_title;?></small>
      </h1>
      
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
          <div class="col-md-12">
            <img width="503" height="171" style="margin: 5px auto; display: block;" src="<?php echo site_url()?>assets/images/library/<?php echo $image?>" >




          </div>
        </div>

        <br />



        <br/>

        <?php foreach($find_article_contents as $fac):?>
          <div class="row">
            <div class="col-md-12">
              <p><?php echo $fac->article_contents?></p>
            </div>
          </div>






          <?php //$this->load->view('include_pages_admin/modify_article_content');?>
        <?php endforeach;?>



        <hr style="">
        <div class="row">
          <div class="col-md-12">
            <h3>Want to read more ? Visit these link(s) below</h3>
          </div>
        </div>






        <?php foreach($find_article_links as $fal):?>
          <div class="row">
            <div class="col-md-12">
              <p><a href="<?php echo $fal->web_link?>"><?php echo $fal->web_link?></a></p>
            </div>
          </div>



        <?php endforeach;?>





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
<?php // $this->load->view('include_pages_admin/add_article_content');?>


<!--page scripts -->


<!-- footer scripts -->

<script src="<?php echo site_url();?>assets/dist/js/generalscripts.js"></script>

<!-- page script -->



</body>
</html>
