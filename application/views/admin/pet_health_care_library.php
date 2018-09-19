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



<body class="hold-transition <?php echo $skin_color;?> sidebar-mini" id="library">
<div class="wrapper">


  <?php $this->load->view('include_pages_admin/document_header');?>
 
  <?php $this->load->view('include_pages_admin/sidebar');?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Pet Health Care Library Section
        
      </h1>
    
    </section>

    <!-- Main content -->
    <section class="content">


      <div class="row">
        <div class="col-md-12">
          <button class="btn btn-flat btn-info btn-sm" data-toggle="modal" data-target="#addArticle" id="add-article-modal">Add New Article</button>

          
           
        </div>


        <!-- /.col -->
      </div>
      <!-- /.row -->

      <br>


      <div class="row">
          <div class="col-md-12">

                        <!-- ajax bae -->
         <div class="alert alert-success display-success" style="display: none">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
             <div class="success-message"></div> 
          </div>

          </div>
      </div>
     
      <div class="row">
        <div class="col-md-12">
          <div class="box box-solid <?php echo $box_color;?>">
            <div class="box-header with-border">
              <h3 class="box-title">Article List</h3>
              <div class="box-tools pull-right">
                  <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="">
                    <i class="fa fa-minus"></i></button>
                  
              </div>

            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive">

              <table id="" class="datatableshealthcare table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Status</th>
                  <th>Title</th>
                  <th>Content</th>
                  <th>Published By</th>
                  <th>Action</th>

                </tr>
                </thead>
                <tbody>
                  <?php foreach($articles as $article):?>
                    <tr>
                      <td>
                          <div class="row">
                            <div class="form-group">
                                <div class="col-sm-6">
                                  <div class="checkbox">
                                    <label class="switch">

                                      <input type="checkbox" class="status_changer" data-libraryid="<?php echo $article->library_id;?>" data-status="<?php echo $article->article_status?>" data-articletitle="<?php echo $article->title;?>" <?php echo ($article->article_status == "Active") ?  "checked": ""; ?> > 
                                      <span class="slider round"></span>
                                    </label>
                                  </div>
                                </div>    
                            </div>
                          </div>
                      </td>
                      <td><?php echo $article->title;?></td>
                      <td><?php echo substr($article->content ,0, 100)." ...";?>
                      </td>
                      <td><?php echo $article->created_by ?></td>
                      <td><a href="<?php echo site_url()?>Admin/Library_article_detail/<?php echo $article->library_id?>" class="btn btn-info btn-sm btn-flat">Read Article</a></td>
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

      <div class="row">
        <div class="col-md-12">
          <div class="box box-solid <?php echo $box_color;?>">
            <div class="box-header with-border">
              <h3 class="box-title">List of Unknown disease in the Pet Health Care Library</h3>
              <div class="box-tools pull-right">
                  <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="">
                    <i class="fa fa-minus"></i></button>
                  
              </div>

            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive">

              <table id="" class="datatableshealthcare table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Name</th>
                  <th>Status</th>
                </tr>
                </thead>
                <tbody>
                  <?php foreach($unknown as $un):?>
                    <tr>
                      <td><?php echo $un->unknown_name;?></td>
                      <td><?php echo $un->unknown_status;?></td>
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
<?php $this->load->view('include_pages_admin/add_article');?>


<!--page scripts -->


<!-- footer scripts -->

<script src="<?php echo site_url();?>assets/dist/js/generalscripts.js"></script>

<!-- page script -->
<script>
  $(function(){



    $('.status_changer').on("change",function(){
     
      var status    = $(this).data("status");
      var libraryid = $(this).data("libraryid");
      var article_title = $(this).data("articletitle");

      var new_status = "";
      if(status == "Active"){
          new_status = "Inactive";
      }else{
          new_status = "Active";
      }
      //alert('status is ' + libraryid);
      $.ajax({
          url : "<?php echo site_url('article_controller/change_status');?>",
          method : "POST",

          data : {library_id: libraryid,status:new_status,article_title:article_title},
          success: function(data){
             $(".display-success").css("display","block");
             $(".success-message").html("<p>Article " +article_title + " status has been updated to "+ new_status  +"</p>");
             reload();
          }
      });
    })
  });
   
  function reload(){
     
        setTimeout(function(){ 

            $(".display-success").fadeOut("fast");
            location.reload();
             }, 2000);
      }

</script>


</body>
</html>
