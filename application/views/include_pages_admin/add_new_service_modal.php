 <div class="modal fade" id="addService">
        <div class="modal-dialog">
          <div class="modal-content modal-md">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title text-center">Add New Service</h4>
            </div>

            <?php
            //pet_management/add_new_service
             echo form_open_multipart('','id="formAddService"');?>

                <div class="modal-body">

                  <div class="alert alert-success display-success" style="display: none">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                     <div class="success-message"></div> 
                  </div>                  


                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Service For', 'for_what_pet','class="control-label"');
                              ?>


                            <select class="form-control" name="for_what_pet" id="for_what_pet" required="">
                              <?php foreach($all_pettype as $ap):?>
                                  <option value="<?php echo $ap->pettype_code;?>"><?php echo $ap->pettype;?></option>
                              <?php endforeach;?>
                            </select> 
                         </div>   
                    </div>

                    <br />

                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('For Ages', 'for_pet_ages','class="control-label"');
                              ?>



                            <select class="form-control" name="for_pet_ages" id="for_pet_ages">
                              <option value="adult (1 year old and above)">Adult (1 year old and above)</option>
                              <option value="young adult (11 months old and below)">Young Adult (11 months old and below)</option>
                            </select> 
                         </div>   
                    </div>


                    <br />

                  
                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Service Name', 'service_name','class="control-label"');
                              ?>

                              <?php 
                                $data = array(
                                        'name'          => 'service_name',
                                        'id'            => 'service_name',
                                        'value'         => '',
                                        //'minlength'     => '2',
                                        'size'          => '',
                                        'required'      => 'required',
                                        'class'         => 'form-control',
                                        
                                );

                                echo form_input($data);
                              ?>      


                         </div>   
                    </div>

                    <br />



                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Service Description', 'service_description','class="control-label"');
                              ?>

                             <textarea class="form-control textareas" name="service_description" id="service_description" required=""></textarea>


                         </div>   
                    </div>

                    <br />



                     <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Service Fee', 'service_fee','class="control-label"');
                              ?>

                            <input type="number" name="service_fee" id="service_fee" value="" class="form-control">


                         </div>   
                    </div>

                    <br />


                   


                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-default pull-left" data-dismiss="modal" >Close</button>
                  <?php 

                      $data = array(
                        'name' => 'submit',
                        'value' => 'Add',
                        'id' => 'add_service_btn',
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






<script>
  $(function(){

 //refresh after 2 seconds
    function reload(){
     
      setTimeout(function(){ 

          $(".display-success").fadeOut("fast");
          location.reload();
           }, 2000);
    }

    $("#formAddService").on("submit",function(event){

      event.preventDefault();

      var formData = new FormData(this);
      //alert(formData2);
      $.ajax({
        method : 'POST',
        url: '<?php echo site_url()?>pet_management/add_new_service',
        data: formData,
        //dataType: 'json',
        contentType: false,
        cache: false,
        processData:false,
        success:function(data){
            $('#formAddService')[0].reset();
            $('#add_service_btn').attr('disabled', true);
            $(".display-success").css("display","block");
            $(".success-message").html("<p>New pet service has been added successfully</p>");
            reload();
        },
      });

    });
  });
</script>