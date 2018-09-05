            <div class="modal fade" id="addpettype">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Add Pettype</h4>
                  </div>
                  
                  <?php echo form_open_multipart('','id="addPetType"');?>
                      <div class="modal-body">

                          <!-- ajax bae -->
                         <div class="alert alert-success display-success" style="display: none">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                             <div class="success-message"></div> 
                         </div>
                 
                          <div class="row">
                                      <div class="col-md-12">
                                     
                                          <?php 

                                          echo form_label('Pet Type', 'pettype','class="control-label"');
                                          ?>



                                          <input type="text" name="pettype" id="pettype" class="form-control" >
                                     </div>   
                          </div>                    

                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default pull-left btn-sm btn-flat" data-dismiss="modal">Close</button>
                        <?php 

                          $data = array(
                            'name' => 'submit',
                            'value' => 'Add',
                            'id' => 'add',
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


<script>
  $(function(){

    function reload(){
     
        setTimeout(function(){ 

            $(".display-success").fadeOut("fast");
            location.reload();
             }, 2000);
    }




    $(document).on('submit', '#addPetType', function(event){
      
      event.preventDefault();
      //$('#action').attr('disabled', 'disabled');
      var form_data = new FormData(this);
      $.ajax({
        method:"POST",
        url:'<?php echo site_url()?>pet_management/add_pettype',
        data:form_data,
        //dataType: 'json',
        contentType: false,
        cache: false,
        processData:false,
        success:function(data){
        

            $(".display-success").css("display","block");
            $(".success-message").html("<p>New Pet Type has been added successfully </p>");
            reload();
        }

      });
    });

    
  });
</script>