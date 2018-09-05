      <div class="modal fade" id="addArticle">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title">Add Article</h4>
            </div>
           
            <?php echo form_open_multipart('','id="formAddArticle"');?>

            <div class="modal-body">


          <div class="alert alert-success display-success_article" style="display: none">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
             <div class="success-message_article"></div> 
          </div>


               <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Article Image', 'article_image','class="control-label"');
                              ?>



                              <input type="file" id="article_image" name="article_image" class="form-control" onchange="document.getElementById('article_Image').src = window.URL.createObjectURL(this.files[0])" required="">

                              <div id="image_viewer"> <img  id="article_Image"  class="img-rounded" alt="" width="100%" height="200" src="" /></div>
                         </div>   
              </div>

              <br />

              <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Article Title', 'title','class="control-label"');
                              ?>



                              <input type="text" name="title" required="" id="title" class="form-control" >
                         </div>   
              </div>
              

               <br >

               <hr>
              
               <?php 
                echo form_label('Article Content', 'content','class="control-label"');
                              ?>
               <span class="span_content_section"></span>

               <hr>

               <?php 
                echo form_label('Article Links', 'links','class="control-label"');
                              ?>
               <span class="span_links_section"></span>

           
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
              <?php 

                      $data = array(
                        'name' => 'submit',
                        'value' => 'Add',
                        'id' => 'add_article_btn',
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




<script type="text/javascript">
  $(function(){

      //$('.text').wysihtml5();


    /*  var orderdataTable = $('#articletbl').DataTable({
        "processing":true,
        "serverSide":true,
        "order":[],
        'ordering'    : false,
        "ajax":{
          url:"<?php echo site_url()?>article_controller/all_article",
          type:"POST"
        },
      

      
        
        "pageLength": 10
      });*/


      function reload(){
     
        setTimeout(function(){ 

            $(".display-success").fadeOut("fast");
            location.reload();
             }, 2000);
      }



      $("#add-article-modal").click(function(){


        $('.span_content_section').html("");
        $('.span_links_section').html("");


        add_content_section();
        add_links_section();
      });

      function add_content_section(count = ''){
        var html = '';
        html += '<span id="row'+count+'"><div class="row">';
        var counts = count + 1;
        html += '<div class="col-md-11">';
        html += '<textarea style="height: 200px" required="" name="content[]" id="content'+count+'" class="form-control text" placeholder= "Content Section ">';
        html += '</textarea>';
        html += '</div>';
       
        html += '<div class="col-md-1">';
        if(count == '' )
        {
          html += '<button type="button" name="add_more" id="add_more" data-tooltip="tooltip" data-tittle="Add Content" class="btn btn-success btn-xs">+</button>';
        }
        else
        {
          html += '<button type="button" name="remove" id="'+count+'" class="btn btn-danger btn-xs remove">-</button>';
        }
        html += '</div>';
        html += '</div></div><br /></span>';
        $('.span_content_section').append(html);
      }



      function add_links_section(count = ''){
        var html = '';
        html += '<span id="row'+count+'"><div class="row">';
        var counts = count + 1;
        html += '<div class="col-md-11">';
        html += '<input type="text" required="" id="link'+count+'" name="link[]" class="form-control" placeholder="Website link "/>';
        html += '</div>';
       
        html += '<div class="col-md-1">';
        if(count == '' )
        {
          html += '<button type="button" name="add_more" id="add_more_links" data-tooltip="tooltip" data-tittle="Add Content" class="btn btn-success btn-xs">+</button>';
        }
        else
        {
          html += '<button type="button" name="remove_links" id="'+count+'" class="btn btn-danger btn-xs remove_links">-</button>';
        }
        html += '</div>';
        html += '</div></div><br /></span>';
        $('.span_links_section').append(html);
      }



    var count = 0;
    var count_links = 0;

    $(document).on('click', '#add_more', function(){
      count = count + 1;
      add_content_section(count);
    });
    $(document).on('click', '.remove', function(){
      var row_no = $(this).attr("id");
      $('#row'+row_no).remove();
    });


    $(document).on('click', '#add_more_links', function(){
      count_links = count_links + 1;
      add_links_section(count_links);
    });
    $(document).on('click', '.remove_links', function(){
      var row_no = $(this).attr("id");
      $('#row'+row_no).remove();
    });



    $(document).on('submit', '#formAddArticle', function(event){
      
      event.preventDefault();
      //$('#action').attr('disabled', 'disabled');
      var form_data = new FormData(this);
      $.ajax({
        method:"POST",
        url:'<?php echo site_url()?>Article_controller/Add_article',
        data:form_data,
        //dataType: 'json',
        contentType: false,
        cache: false,
        processData:false,
        success:function(data){
            $('#formAddArticle')[0].reset();
            $('#image_viewer').css("display","none");

            $('#add_article_btn').attr("disabled",true);
            $(".display-success_article").css("display","block");
            $(".success-message_article").html("<p>Article has been added to the library </p>");
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