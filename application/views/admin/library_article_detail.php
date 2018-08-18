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


  <?php $this->load->view('include_pages_admin/document_header');?>
 
  <?php $this->load->view('include_pages_admin/sidebar');?>
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
            <button type="button" class="btn btn-success btn-sm btn-flat" data-toggle="modal" data-target="#changeImage">Change Article Image</button>

              <div class="modal fade" id="changeImage">
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                      <h4 class="modal-title">Change Article Image</h4>
                    </div>
                    
                    <?php echo form_open_multipart('','id="changeImageArticle"');?>
                      <div class="modal-body">

                          <div class="alert alert-success display-success_update_image" style="display: none">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                             <div class="success-success_update_image"></div> 
                          </div>

                           <div class="row">
                                      <div class="col-md-12">
                                     
                                          <?php 

                                          echo form_label('Article Image', 'article_image','class="control-label"');
                                          ?>



                                          <input type="file" id="article_image" name="article_image" class="form-control" onchange="document.getElementById('article_Image').src = window.URL.createObjectURL(this.files[0])" required="">

                                         <img  id="article_Image"  class="img-rounded" alt="" width="100%" height="200" src="" />
                                     </div>   
                          </div>

                          <br/>
                        
                      </div>
                      <div class="modal-footer">

                          
                          <input type="hidden" id="library_id" name="library_id" value="<?php echo $library_id?>">
                          <input type="hidden" name="article_title" id="article_title" value="<?php echo $article_title?>">
                         
                          <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                           <?php 

                                          $data = array(
                                            'name' => 'submit',
                                            'value' => 'Save',
                                            'id' => 'save',
                                            'class' => 'btn btn-primary',
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


          </div>
        </div>

        <br />

        <div class="row">
          <div class="col-md-12">
                        <!-- ajax bae -->
              <div class="alert alert-success display-success_remove_article_content" style="display: none">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                 <div class="success-success_remove_article_content"></div> 
              </div>
          </div>
        </div>

        <br/>

        <?php foreach($find_article_contents as $fac):?>
          <div class="row">
            <div class="col-md-12">
              <p><?php echo $fac->article_contents?><button type="button" class="btn btn-success btn-sm btn-flat" data-toggle="modal" data-target="#changeContent<?php echo $fac->content_id?>">Change Content</button>|<button type="button" class="btn btn-danger btn-sm btn-flat remove-content" id="<?php echo $fac->content_id?>" data-articletitle="<?php echo  $article_title;?>">Remove Content</button></p>
            </div>
          </div>


          <div class="modal fade" id="changeContent<?php echo $fac->content_id?>">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span></button>
                  <h4 class="modal-title">Change Article Content</h4>
                </div>
               
                <?php echo form_open_multipart('','id="changeContentArticle"');?>

                <div class="modal-body">


                    <div class="alert alert-success display-success_article" style="display: none">
                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                       <div class="success-message_article"></div> 
                    </div>

                    <div class="row">
                            <div class="col-md-12">
                           
                                <?php 

                                echo form_label('', 'article_content','class="control-label"');
                                ?>



                               <textarea class="form-control textareas" id="article_content" name="article_content"><?php echo $fac->article_contents?></textarea>
                           </div>   
                   </div>

                    <input type="hidden" id="content_id" name="content_id" value="<?php echo $fac->content_id?>">
                    <input type="hidden" name="article_title" id="article_title" value="<?php echo $article_title?>">
                     
                </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                        <?php 

                                $data = array(
                                  'name' => 'submit',
                                  'value' => 'Save',
                                  'id' => 'save',
                                  'class' => 'btn btn-primary',
                                );

                              echo form_submit($data);?>
                      </div>

                </form>

              </div>
              <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
          </div>

          <?php //$this->load->view('include_pages_admin/modify_article_content');?>
        <?php endforeach;?>


        <div class="row">
          <div class="col-md-12">
            <button type="button" class="btn btn-warning btn-sm btn-flat" data-toggle="modal" data-target="#addContent">Add Content</button>

                <div class="modal fade" id="addContent">
                  <div class="modal-dialog">
                    <div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title">Add Article Content</h4>
                      </div>
                     
                      <?php echo form_open_multipart('','id="addArticleContent"');?>

                      <div class="modal-body">


                          <div class="alert alert-success display-success_add_article_content" style="display: none">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                             <div class="success-success_add_article_content"></div> 
                          </div>

                          <div class="row">
                                  <div class="col-md-12">
                                 
                                      <?php 

                                      echo form_label('', 'article_content','class="control-label"');
                                      ?>



                                     <textarea class="form-control textareas" name="article_content" id="article_content"></textarea>
                                 </div>   
                         </div>


                           <input type="hidden" id="library_id" name="library_id" value="<?php echo $library_id?>">
                           <input type="hidden" name="article_title" id="article_title" value="<?php echo $article_title?>">
                      </div>
                            <div class="modal-footer">
                              <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                              <?php 

                                      $data = array(
                                        'name' => 'submit',
                                        'value' => 'Save',
                                        'id' => 'save',
                                        'class' => 'btn btn-primary',
                                      );

                                    echo form_submit($data);?>
                            </div>

                      </form>

                    </div>
                    <!-- /.modal-content -->
                  </div>
                  <!-- /.modal-dialog -->
                </div>
                <!-- add new content -->


          </div>
        </div>

        <hr style="">
        <div class="row">
          <div class="col-md-12">
            <h3>Want to read more ? Visit these link(s) below</h3>
          </div>
        </div>




        <div class="row">
          <div class="col-md-12">
                        <!-- ajax bae -->
              <div class="alert alert-success display-success_remove_article_link" style="display: none">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                 <div class="success-success_remove_article_link"></div> 
              </div>
          </div>
        </div>

        <?php foreach($find_article_links as $fal):?>
          <div class="row">
            <div class="col-md-12">
              <p><a href="<?php echo $fal->web_link?>"><?php echo $fal->web_link?></a><button type="button" class="btn btn-danger btn-sm btn-flat remove-link" id="<?php echo $fal->links_id?>" data-articletitle="<?php echo  $article_title;?>">Remove Links</button></p>
            </div>
          </div>
        <?php endforeach;?>


        <div class="row">
          <div class="col-md-12">
              <button type="button" class="btn btn-warning btn-sm btn-flat" data-toggle="modal" data-target="#addLink">Add Link</button>
              
              <div class="modal fade" id="addLink">
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                      <h4 class="modal-title">Add new Link</h4>
                    </div>
                    
                    <?php echo form_open_multipart('','id="addArticleLink"');?>
                      <div class="modal-body">

                          <div class="alert alert-success display-success_add_article_link" style="display: none">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                             <div class="success-success_add_article_link"></div> 
                          </div>


                          <div class="row">
                                  <div class="col-md-12">
                                 
                                      <?php 

                                      echo form_label('Web Link', 'link','class="control-label"');
                                      ?>

                                     <input type="text" name="link" id="link" class="form-control">
                                 </div>   
                         </div>


                        
                      </div>
                      <div class="modal-footer">

                          
                          <input type="hidden" id="library_id" name="library_id" value="<?php echo $library_id?>">
                          <input type="hidden" name="article_title" id="article_title" value="<?php echo $article_title?>">
                         
                          <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                           <?php 

                                          $data = array(
                                            'name' => 'submit',
                                            'value' => 'Save',
                                            'id' => 'save',
                                            'class' => 'btn btn-primary',
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
<script>

  $(function(){

    function reload(){
     
        setTimeout(function(){ 

            $(".display-success").fadeOut("fast");
            location.reload();
             }, 2000);
    }
    

    $(document).on('submit', '#changeContentArticle', function(event){
      
      event.preventDefault();
      //$('#action').attr('disabled', 'disabled');
      var form_data = new FormData(this);
      $.ajax({
        method:"POST",
        url:'<?php echo site_url()?>article_controller/update_article_content',
        data:form_data,
        //dataType: 'json',
        contentType: false,
        cache: false,
        processData:false,
        success:function(data){
        

            $(".display-success_article").css("display","block");
            $(".success-message_article").html("<p>Content has been updated successfully </p>");
            reload();
        }

      });
    });


    $(document).on('submit', '#addArticleContent', function(event){
      
      event.preventDefault();
      //$('#action').attr('disabled', 'disabled');
      var form_data = new FormData(this);
      //alert(form_data);
      $.ajax({
        method:"POST",
        url:'<?php echo site_url()?>article_controller/add_article_content',
        data:form_data,
        //dataType: 'json',
        contentType: false,
        cache: false,
        processData:false,
        success:function(data){
            $(".display-success_add_article_content").css("display","block");
            $(".success-success_add_article_content").html("<p>Article content has been added successfully</p>");
            reload();
        }

      });
    });


    $(document).on('submit', '#changeImageArticle', function(event){
      
      event.preventDefault();
      //$('#action').attr('disabled', 'disabled');
      var form_data = new FormData(this);
      //alert(form_data);
      $.ajax({
        method:"POST",
        url:'<?php echo site_url()?>article_controller/update_article_image',
        data:form_data,
        //dataType: 'json',
        contentType: false,
        cache: false,
        processData:false,
        success:function(data){
            $(".display-success_update_image").css("display","block");
            $(".success-success_update_image").html("<p>Article image has been added successfully</p>");
            reload();
        }

      });
    });


    



    $(document).on('submit','#addArticleLink',function(event){


      event.preventDefault();
      //$('#action').attr('disabled', 'disabled');
      var form_data = new FormData(this);
      $.ajax({
        method:"POST",
        url:'<?php echo site_url()?>article_controller/add_article_link',
        data:form_data,
        //dataType: 'json',
        contentType: false,
        cache: false,
        processData:false,
        success:function(data){
        

            $(".display-success_add_article_link").css("display","block");
            $(".success-success_add_article_link").html("<p>Article link has been added successfully</p>");
            reload();
        }

      });
    });


    $(document).on('click', '.remove-content', function(){
      var content_id = $(this).attr("id"); 
      var article_title = $(this).data("articletitle");     

      //alert(content_id);
       
         /*swal({
          title: "Update Holiday..",
          type: "warning",
          showCancelButton: true,
          confirmButtonColor: "#f57c00",
          confirmButtonText: "Yes, update it!",
          cancelButtonText: "No, wait!",
          closeOnConfirm: false,
          closeOnCancel: true,
          text: "Update this holiday..."
        },*/


         $.ajax({
          url:"<?php echo site_url()?>article_controller/remove_content",
          method:"POST",
          data:{content_id:content_id,article_title:article_title},
          success:function(data)
          {
            //$('#alert_action').fadeIn().html('<div class="alert alert-info">'+data+'</div>');
            //orderdataTable.ajax.reload();
            $(".display-success_remove_article_content").css("display","block");
            $(".success-success_remove_article_content").html("<p>Article content has been removed</p>");
            reload();
          }
        });

    });


    $(document).on('click', '.remove-link', function(){
      var link_id = $(this).attr("id"); 
      var article_title = $(this).data("articletitle"); 
      //alert(content_id);
       
         /*swal({
          title: "Update Holiday..",
          type: "warning",
          showCancelButton: true,
          confirmButtonColor: "#f57c00",
          confirmButtonText: "Yes, update it!",
          cancelButtonText: "No, wait!",
          closeOnConfirm: false,
          closeOnCancel: true,
          text: "Update this holiday..."
        },*/


         $.ajax({
          url:"<?php echo site_url()?>article_controller/remove_link",
          method:"POST",
          data:{link_id:link_id,article_title:article_title},
          success:function(data)
          {
            //$('#alert_action').fadeIn().html('<div class="alert alert-info">'+data+'</div>');
            //orderdataTable.ajax.reload();
            $(".display-success_remove_article_link").css("display","block");
            $(".success-success_remove_article_link").html("<p>Article Link has been removed</p>");
            reload();
          }
        });

    });


  });

     

</script>


</body>
</html>
