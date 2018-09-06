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
                <div class="box-header">
                   
                    <h3 class="box-title"></h3>
                    <!-- tools box -->
                    <div class="pull-right box-tools">
                     <button type="button" class="btn btn-default btn-sm btn-flat" data-toggle="modal" data-target="#addContent">
                    <i class="fa fa-plus"></i></button>
                    </div>
                <!-- /. tools -->
                </div>
                <div class="box-body">
                   <?php foreach($find_article_contents as $fac):?>
                   <p><?php echo $fac->article_contents?>
                     <button type="button" class="btn btn-success btn-sm btn-flat" data-toggle="modal" data-target="#changeContent<?php echo $fac->content_id?>" data-tooltip="tooltip" data-title="Change Content"><i class="fa fa-pencil"></i></button>|<button type="button" class="btn btn-danger btn-sm btn-flat" data-toggle="modal" data-tooltip="tooltip" data-title="Delete Content" data-target="#remove_content<?php echo $fac->content_id;?>"><i class="fa fa-trash"></i></button>
                   </p>

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



                                       <textarea class="form-control textareas" id="article_content_update" name="article_content"><?php echo $fac->article_contents?></textarea>
                                   </div>   
                           </div>

                            <input type="hidden" id="content_id" name="content_id" value="<?php echo $fac->content_id?>">
                            <input type="hidden" name="article_title" id="article_title" value="<?php echo $article_title?>">
                             
                        </div>
                              <div class="modal-footer">
                                <button type="button" class="btn btn-default pull-left btn-sm btn-flat" data-dismiss="modal">Close</button>
                                <?php 

                                        $data = array(
                                          'name' => 'submit',
                                          'value' => 'Save',
                                          'id' => 'save_content',
                                          'class' => 'btn btn-primary btn-sm btn-flat',
                                        );

                                      echo form_submit($data);?>
                              </div>

                        </form>

                      </div>
                      <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                  </div>

                  <div class="modal fade" id="remove_content<?php echo $fac->content_id;?>">
                    <div class="modal-dialog">
                      <div class="modal-content">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span></button>
                          <h4 class="modal-title">Are you sure?</h4>
                        </div>
                        <div class="modal-body">

                          <div class="row">
                            <div class="col-md-12">
                                          <!-- ajax bae -->
                                <div class="alert alert-success display-success_remove_article_content" style="display: none">
                                  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                   <div class="success-success_remove_article_content"></div> 
                                </div>
                            </div>
                          </div>
                          <div class="confirmation_content"><p>Do you want to delete this content ?</p></div>
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                          <button type="button" class="btn btn-danger btn-sm btn-flat remove-content" id="<?php echo $fac->content_id?>" data-articletitle="<?php echo  $article_title;?>">Remove Content</button>
                        </div>
                      </div>
                      <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                  </div>
                  <!-- /.modal -->
                   <?php endforeach;?>
                </div>
              </div>                
          </div>

            <div class="col-md-4">

                <div class="box box-default">
                  <div class="box-body">
                   
                   <a href="" data-target="#changeImage" data-toggle="modal" data-tooltip="tooltip" data-title="Change Article Image">
                    <img width="503" height="100" class="img-responsive img-rounded" style="margin: 5px auto; display: block;" src="<?php echo site_url()?>assets/images/library/<?php echo $image?>" >
                    </a>

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

                                               <div id="image_viewer"><img  id="article_Image"  class="img-rounded" alt="" width="100%" height="200" src="" /></div>
                                           </div>   
                                </div>

                                <br/>
                              
                            </div>
                            <div class="modal-footer">

                                
                                <input type="hidden" id="library_id" name="library_id" value="<?php echo $library_id?>">
                                <input type="hidden" name="article_title" id="article_title" value="<?php echo $article_title?>">
                               
                                <button type="button" class="btn btn-default btn-flat btn-sm pull-left" data-dismiss="modal">Close</button>
                                 <?php 

                                                $data = array(
                                                  'name' => 'submit',
                                                  'value' => 'Save',
                                                  'id' => 'save_update_image',
                                                  'class' => 'btn btn-primary btn-sm btn-flat',
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
                    <hr >

                    <h3 class="text-center">Related Article <button type="button" class="btn btn-sm btn-flat btn-default" data-tooltip="tooltip" data-title="Add Related Article" data-toggle="modal" data-target="#addRelatedArticle"><i class="fa fa-plus"></i></button></h3>

                            <div class="modal fade" id="addRelatedArticle">
                              <div class="modal-dialog">
                                <div class="modal-content">
                                  <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                      <span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title">Add Related Article</h4>
                                  </div>

                                  <?php echo form_open_multipart('','id="addRelatedArticleForm"');?>

                                  <div class="modal-body">


                                      <div class="alert alert-success display-success_add_related_article" style="display: none">
                                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                         <div class="success-success_add_related_article"></div> 
                                      </div>                                      
                                            
                                            <select name="related_library_id[]" id="related_library_id" class="form-control select2" multiple required style="width: 100%;min-height: 150px;max-height: 150px;overflow-y: auto; ">
                                              
                                              <?php foreach($articles as $a):?>
                                                <option class="blacks" value="<?php echo $a->library_id?>"><?php echo $a->title;?></option>
                                              <?php endforeach;?>
                                             </select>
                                  </div>
                                  <div class="modal-footer">
                                    <input type="hidden" id="library_id" name="library_id" value="<?php echo $library_id?>">
                                    <input type="hidden" name="article_title" id="article_title" value="<?php echo $article_title?>">
                                   
                                    <button type="button" class="btn btn-default btn-flat btn-sm pull-left" data-dismiss="modal">Close</button>
                                     <?php 

                                                    $data = array(
                                                      'name' => 'submit',
                                                      'value' => 'Add',
                                                      'id' => 'add_related_article',
                                                      'class' => 'btn btn-primary btn-sm btn-flat',
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

                     <ul class="list-unstyled">
                        <?php foreach($find_related_article as $related):?>
                         <li><a href="<?php echo site_url()?>Admin/Library_article_detail/<?php echo $related->related_library_id;?>" target="_blank" style="text-decoration: underline;"><?php echo $related->title;?></a></li>
                        
                       <?php endforeach;?>
                      </ul>
                  </div>
                 
                 
                </div>  
            </div>
        </div>

        <br />



        <br/>



        <div class="row">
          <div class="col-md-12">
          

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
                              <button type="button" class="btn btn-default pull-left btn-flat btn-sm" data-dismiss="modal">Close</button>
                              <?php 

                                      $data = array(
                                        'name' => 'submit',
                                        'value' => 'Save',
                                        'id' => 'save_new_content',
                                        'class' => 'btn btn-primary btn-flat btn-sm',
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
          <div class="col-md-8">

             <div class="box box-default">
                <div class="box-header">
                   
                    <h3 class="box-title">Want to read more ? Visit these link(s) below</h3>
                    <!-- tools box -->
                    <div class="pull-right box-tools">
                     <button type="button" class="btn btn-default btn-sm btn-flat" data-toggle="modal" data-target="#addLink" data-tooltip="tooltip" data-title="Add Link">
                    <i class="fa fa-plus"></i></button>
                    </div>
                    <!-- /. tools -->
                </div>
                <div class="box-body">
                  <?php foreach($find_article_links as $fal):?>
                      <p><a href="<?php echo $fal->web_link?>"><?php echo $fal->web_link?></a><button type="button" class="btn btn-danger btn-sm btn-flat " data-toggle="modal" data-target="#remove_link<?php echo $fal->links_id?>"><i class="fa fa-trash"></i></button></p>


                        <div class="modal fade" id="remove_link<?php echo $fal->links_id?>">
                          <div class="modal-dialog">
                            <div class="modal-content">
                              <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                  <span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title">Are you sure?</h4>
                              </div>
                              <div class="modal-body">

                                <div class="row">
                                  <div class="col-md-12">
                                    <div class="row">
                                      <div class="col-md-12">
                                                    <!-- ajax bae -->
                                          <div class="alert alert-success display-success_remove_article_link" style="display: none">
                                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                             <div class="success-success_remove_article_link"></div> 
                                          </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="confirmation_content"><p>Do you want to delete this link ?</p></div>
                              </div>
                              <div class="modal-footer">
                                <button type="button" class="btn btn-default pull-left btn-flat btn-sm" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-danger btn-sm btn-flat remove-link" id="<?php echo $fal->links_id?>" data-articletitle="<?php echo  $article_title;?>">Remove Links</button>
                              </div>
                            </div>
                            <!-- /.modal-content -->
                          </div>
                          <!-- /.modal-dialog -->
                        </div>
                        <!-- /.modal -->


                  <?php endforeach;?>
                </div>
            </div>
          </div>
        </div>


        <div class="row">
          <div class="col-md-12">
              
              
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
                         
                          <button type="button" class="btn btn-default pull-left btn-sm btn-flat" data-dismiss="modal">Close</button>
                           <?php 

                                          $data = array(
                                            'name' => 'submit',
                                            'value' => 'Save',
                                            'id' => 'save',
                                            'class' => 'btn btn-primary btn-sm btn-flat',
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
      //$('#changeContentArticle')[0].reset();
      var form_data = new FormData(this);
      $.ajax({
        method:"POST",
        url:'<?php echo site_url()?>Article_controller/Update_article_content',
        data:form_data,
        //dataType: 'json',
        contentType: false,
        cache: false,
        processData:false,
        success:function(data){
            $('#changeContentArticle')[0].reset();
            $('#save_content').attr("disabled",true); 
            $(".display-success_article").css("display","block");
            //$('#article_content_update').val('iva');
            $(".success-message_article").html("<p>Content has been updated successfully </p>");
            //$('#article_content').attr('readonly',true);
            reload();
        }

      });
    });


   $('#save_content').on('click',function(){
    //alert('ivan');
   })


    $(document).on('submit', '#addArticleContent', function(event){
      
      event.preventDefault();
      //$('#action').attr('disabled', 'disabled');
      var form_data = new FormData(this);
      //alert(form_data);
      $.ajax({
        method:"POST",
        url:'<?php echo site_url()?>Article_controller/Add_article_content',
        data:form_data,
        //dataType: 'json',
        contentType: false,
        cache: false,
        processData:false,
        success:function(data){
            $(".display-success_add_article_content").css("display","block");
            $('#save_new_content').attr("disabled",true);
            $('#addArticleContent')[0].reset();
            $(".success-success_add_article_content").html("<p>Article content has been added successfully</p>");
            reload();
        }

      });
    });

    $(document).on('submit', '#addRelatedArticleForm', function(event){
      
      event.preventDefault();
      //$('#action').attr('disabled', 'disabled');
      var form_data = new FormData(this);
      //alert(form_data);
      $.ajax({
        method:"POST",
        url:'<?php echo site_url()?>Article_controller/Add_related_article',
        data:form_data,
        //dataType: 'json',
        contentType: false,
        cache: false,
        processData:false,
        success:function(data){
            $(".display-success_add_related_article").css("display","block");
            $('#add_related_article').attr("disabled",true);
            $('#addArticleContent')[0].reset();
            $(".success-success_add_related_article").html("<p>Related Article has been added successfully</p>");
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
        url:'<?php echo site_url()?>Article_controller/Update_article_image',
        data:form_data,
        //dataType: 'json',
        contentType: false,
        cache: false,
        processData:false,
        success:function(data){
            $('#image_viewer').css("display","none");
            $('#save_update_image').attr('disabled',true);
            $('#changeImageArticle')[0].reset();
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
        url:'<?php echo site_url()?>Article_controller/Add_article_link',
        data:form_data,
        //dataType: 'json',
        contentType: false,
        cache: false,
        processData:false,
        success:function(data){
        
            $('#addArticleLink')[0].reset();
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


     /*  swal({
          title: "Are you sure?",
          text: "Once deleted, you will not be able to recover this imaginary file!",
          icon: "warning",
          buttons: true,
          dangerMode: true,
          }).then((willDelete) => {
            if (willDelete) {
              swal("Poof! Your imaginary file has been deleted!", {
                icon: "success",
              });

              alert('delete');
            } else {
              swal("Your imaginary file is safe!");
            }
      });*/






        /*swal("Are you sure you want to do this?", {
          buttons: ["Oh noez!", true],
        });*/
      $.ajax({
          url:"<?php echo site_url()?>Article_controller/Remove_content",
          method:"POST",
          data:{content_id:content_id,article_title:article_title},
          success:function(data)
          {
            //$('#alert_action').fadeIn().html('<div class="alert alert-info">'+data+'</div>');
            //orderdataTable.ajax.reload();
            $('.confirmation_content').css("display","none");
            $(".display-success_remove_article_content").css("display","block");
            $(".success-success_remove_article_content").html("<p>Article content has been removed</p>");
            $('.remove-content').attr('disabled',true);
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
          url:"<?php echo site_url()?>Article_controller/Remove_link",
          method:"POST",
          data:{link_id:link_id,article_title:article_title},
          success:function(data)
          {
            //$('#alert_action').fadeIn().html('<div class="alert alert-info">'+data+'</div>');
            //orderdataTable.ajax.reload();
            $('.confirmation_content').css("display","none");
            $(".display-success_remove_article_link").css("display","block");
            $(".success-success_remove_article_link").html("<p>Article Link has been removed</p>");
            $('.remove-link').attr('disabled',true);
            reload();
          }
        });

    });


  });

     

</script>


</body>
</html>
