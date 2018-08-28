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


                <div class="alert alert-success display-success_add_article" style="display: none">
                  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                   <div class="success-message_article_add_article"></div> 
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




<script type="text/javascript">
  $(function(){




      function reload(){
     
        setTimeout(function(){ 

            $(".display-success_add_article").fadeOut("fast");
            location.reload();
             }, 2000);
      }


    $(document).on('submit', '#formAddArticle', function(event){
      
      event.preventDefault();
      //$('#action').attr('disabled', 'disabled');
      var form_data = new FormData(this);
      $.ajax({
        method:"POST",
        url:'<?php echo site_url()?>article_controller/add_article_content',
        data:form_data,
        //dataType: 'json',
        contentType: false,
        cache: false,
        processData:false,
        success:function(data){
        

            $(".display-success_add_article").css("display","block");
            $(".success-success_add_article").html("<p>Article content has been added successfully</p>");
            reload();
        }

      });
    });

        //refresh after 2 seconds
    


    /* $('#order_form')[0].reset();
          $('#orderModal').modal('hide');
          $('#alert_action').fadeIn().html('<div class="alert alert-success">'+data+'</div>');
          $('#action').attr('disabled', false);
          orderdataTable.ajax.reload();*/
  });
</script>