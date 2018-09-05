      <div class="modal fade" id="addpetbreed">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title">Add Pet Breed</h4>
            </div>
           
            <?php echo form_open_multipart('','id="addPetBreed"');?>

            <div class="modal-body">


              <!-- ajax bae -->
             <div class="alert alert-success display-success" style="display: none">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                 <div class="success-message"></div> 
             </div>

              <div class="row">
                      <div class="col-md-12">
                     
                          <?php 

                          echo form_label('Pet Type', 'pet_type','class="control-label"');
                          ?>

                           <select id="pet_type" name="pet_type" class="form-control" required="" >
                                  <option value="">Pet Type</option>
                                  <?php foreach($all_pettype as $pettype):?>
                                    
                                   <option value="<?php echo $pettype->pettype_id?>"><?php echo $pettype->pettype?></option>
                                  
                                 <?php endforeach;?>
                            </select>

                     </div>   
               </div>

             


               <br >

               <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Pet Breed', 'pet_breed','class="control-label"');
                              ?>



                              <?php 
                                $data = array(
                                        'name'          => 'pet_breed',
                                        'id'            => 'pet_breed',
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


               <br>

              <div class="row">
                        <div class="col-md-12">
                       
                            <?php 

                            echo form_label('Breed Description', 'breed_description','class="control-label"');
                            ?>



                           <textarea class="form-control textareas" id="breed_description" name="breed_description"></textarea>
                       </div>   
              </div>



              
           
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default pull-left btn-sm btn-flat" data-dismiss="modal">Close</button>
              <?php 

                      $data = array(
                        'name' => 'submit',
                        'value' => 'Add',
                        'id' => 'add_pet_btn',
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

    function reload(){
     
        setTimeout(function(){ 

            $(".display-success").fadeOut("fast");
            location.reload();
             }, 2000);
    }

    $(document).on('submit', '#addPetBreed', function(event){
      
      event.preventDefault();
      //$('#action').attr('disabled', 'disabled');
      var form_data = new FormData(this);
      $.ajax({
        method:"POST",
        url:'<?php echo site_url()?>pet_management/add_pet_breed',
        data:form_data,
        //dataType: 'json',
        contentType: false,
        cache: false,
        processData:false,
        success:function(data){
        
            $('#addPetBreed')[0].reset();
            $(".display-success").css("display","block");
            $(".success-message").html("<p>New Pet Breed has been added successfully </p>");
            reload();
        }

      });
    });





  });
  </script>