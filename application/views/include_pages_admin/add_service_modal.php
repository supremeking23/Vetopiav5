 <div class="modal fade" id="addService">
        <div class="modal-dialog">
          <div class="modal-content modal-md">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title text-center">Add New Service</h4>
            </div>

            <?php echo form_open_multipart('pet_management/add_new_service','id="formAddService"');?>

                <div class="modal-body">


                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Health Program For', 'program_for','class="control-label"');
                              ?>


                            <select class="form-control" name="program_for">
                              <option value="Dogs">Dogs</option>
                              <option value="Cats">Cats</option>
                              <option value="Kittens">Kittens</option>
                              <option value="Puppies">Puppies</option>
                            </select> 
                         </div>   
                    </div>

                    <br />
                  
                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Program Name', 'program_name','class="control-label"');
                              ?>

                              <?php 
                                $data = array(
                                        'name'          => 'program_name',
                                        'id'            => 'program_name',
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

                              echo form_label('Program Description', 'program_description','class="control-label"');
                              ?>

                             <textarea class="form-control textareas" name="program_description"></textarea>


                         </div>   
                    </div>

                    <br />



                     <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Price', 'price','class="control-label"');
                              ?>

                            <input type="number" name="price" value="" class="form-control">


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
	

    var admin_id = document.getElementById("admin_id");
    admin_id = "<?= 'A'.date("ymdhis") . abs(rand('0','9'));  ?>";
    $('#admin_id').val(admin_id);

    $('#username').val(admin_id);
</script>