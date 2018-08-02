
     <div class="modal fade" id="addModal">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title">Add Article</h4>
            </div>
            <div class="modal-body">
                

                 <?php echo form_open_multipart('admin/add_health_care');?>


                  <?php echo form_label('Title ', 'title','class="control-label"');?>

                    <input type="text" name="title" class="form-control" value="">

                    <br />

                    <?php echo form_label('Article Image ', 'upload_image','class="control-label"');?>

                    <input type="file" name="upload_image" class="form-control" value="">

                    <br />


                     <?php echo form_label('Detail', 'detail','class="control-label"');?>

                    <textarea class="textareas form-control" name="content"></textarea>

                    <br />



                      
                      <input type="submit" name="add_article" value="Submit" class="btn btn-sm btn-flat btn-primary pull-right">

              </form>

            </div>
            <div class="modal-footer">
              
            </div>
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>


    <!--user-- management -->


      


    

     












  









<script type="text/javascript">
  




  



    var pet_id = document.getElementById("pet_id");
    pet_id = "<?= 'A'.date("ymdhis") . abs(rand('0','9'));  ?>";
    $('#pet_id').val(pet_id);

    //username is the user_id
    
   
    
 





  $("#dom").text(document.URL);
</script>