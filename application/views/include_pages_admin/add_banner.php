
     <div class="modal fade" id="addBanner">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title">Add Banner Content</h4>
            </div>
            <div class="modal-body">


                <div class="alert alert-success display-success-banner" style="display: none">
                  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                   <div class="success-message-banner"></div> 
                </div>
                
                    <form method="POST" id="bannerSection" enctype="multipart/form-data">



                      <?php echo form_label('Banner Image', 'bannerImage','class="control-label"');?>
                     
                              <input type="file" id="bannerImage" name="bannerImage" class="form-control" onchange="document.getElementById('banner_Image').src = window.URL.createObjectURL(this.files[0])" required="">

                             <img  id="banner_Image" class="img-rounded" alt="" width="100%" height="200" src="" />

                          <br />

                          <?php echo form_label('Banner Heading', 'banner_caption_heading','class="control-label"');?>

                          <input type="text" id="banner_caption_heading" name="banner_caption_heading" class="form-control" value="">

                           <br />

                          <?php echo form_label('Banner Caption', 'banner_caption','class="control-label"');?>

                          <input type="text" id="banner_caption" name="banner_caption" class="form-control" value="">




                          <br />
                         <input type="submit" name="save" id="save" value="Save" class="btn btn-sm btn-flat btn-primary pull-right">

                         
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


   <script>
     
   $(function(){


        function reload(){
         
          setTimeout(function(){ 

              $(".display-success").fadeOut("fast");
              location.reload();
               }, 2000);
        }


        
       $("#bannerSection").submit(function(event){
          event.preventDefault();

          //var formdata  = new FormData(this);
          //alert(formdata);
          //$("#formStoreInformation").serialize()


          var formData = new FormData(this);
          $.ajax({
            method : 'POST',
            url: '<?php echo site_url()?>settings/add_banners',
            data: formData,
            dataType: 'json',
            contentType: false,
            cache: false,
            processData:false,
            success:function(data){
              if(data.code == 200){
                  $(".display-success-banner").css("display","block");
                
                  $(".success-message-banner").html("<p>"+ data.msg +" </p>");
                  //reload();

                  $('#bannerSection')[0].reset();

                // $("#bannerImage").val("");
                 reload();
              }else{  
               
              }
            },
          });
        });




   });

   </script>












  









<script type="text/javascript">
  




  



    var pet_id = document.getElementById("pet_id");
    pet_id = "<?= 'A'.date("ymdhis") . abs(rand('0','9'));  ?>";
    $('#pet_id').val(pet_id);

    //username is the user_id
    
   
    
 





  $("#dom").text(document.URL);
</script>