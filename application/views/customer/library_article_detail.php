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

<?php $this->load->view('include_pages_customer/page_header');?>
<style type="text/css">
  a {
    padding-left: 5px;
    padding-right: 5px;
    margin-left: 5px;
    margin-right: 5px;
  }
</style>

<body class="hold-transition <?php echo $skin_color;?> sidebar-mini" id="pethealthlibrary">
<div class="wrapper">


  <?php $this->load->view('include_pages_customer/document_header');?>
 
  <?php $this->load->view('include_pages_customer/sidebar');?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">

      <?php foreach($find_library_article as $fla){
            $article_title = $fla->title;
            $image  = $fla->article_image;
            $library_id = $fla->library_id;
            $created_by = $fla->created_by;
            $date_created = $fla->date_created;
      }

            $date =date_create($date_created);
            $date_created_format = date_format($date,"F d, Y ");
      ?>
      <h1><?php echo $article_title;?></h1>
      <h3><small>By: <i><?php echo $created_by;?> </i></small></h3>
      <h4><small>Date Published: <i><?php echo $date_created_format;?></i></small></h4>
      
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
          <div class="col-md-8">    
              <div class="box box-default">
                <div class="box-body">
                   <?php foreach($find_article_contents as $fac):?>
                   <p><?php echo $fac->article_contents?></p>
                   <?php endforeach;?>
                </div>
              </div>                
          </div>


          <div class="col-md-4">

              <div class="box box-default">
                <div class="box-body">
                  <img width="503" height="100" class="img-responsive img-rounded" style="margin: 5px auto; display: block;" src="<?php echo site_url()?>assets/images/library/<?php echo $image?>" >

                  <hr >

                  <h3 class="text-center">Related Article</h3>
                     <ul class="list-unstyled">
                        <?php foreach($find_related_article as $related):?>
                         <li><a href="<?php echo site_url()?>Customer/Library_article_detail/<?php echo $related->related_library_id;?>" target="_blank" style="text-decoration: underline;"><?php echo $related->title;?></a></li>
                        
                       <?php endforeach;?>
                      </ul>
                </div>
               
              </div>  
          </div>
        </div>

        
        <!--  <div class="row">
            <div class="col-md-9">
              <h3>Want to read more ? Visit these link(s) below</h3>
              <?php foreach($find_article_links as $fal):?>
              <p><a href="<?php echo $fal->web_link?>"><?php echo $fal->web_link?></a></p>
              <?php endforeach;?>
            </div>

          </div> -->

        <hr style="">
        <div class="row">
          <div class="col-md-8">

             <div class="box box-default">
                <div class="box-header">
                   
                    <h3 class="box-title">Want to read more ? Visit these link(s) below</h3>
                    <!-- tools box -->
                    <div class="pull-right box-tools">
                     
                    </div>
                    <!-- /. tools -->
                </div>
                <div class="box-body">
                  <?php foreach($find_article_links as $fal):?>
                      <p><a href="<?php echo $fal->web_link?>"><?php echo $fal->web_link?></a></p>



                  <?php endforeach;?>
                </div>
            </div>
          </div>
        </div>


        





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
