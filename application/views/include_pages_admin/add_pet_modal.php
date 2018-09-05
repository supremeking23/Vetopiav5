      <div class="modal fade" id="addPet">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title">Add Pet</h4>
            </div>
           
            <?php echo form_open_multipart('pet_management/add_new_pet','id="formAddPet"');?>

            <div class="modal-body">


              <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Pet ID', 'pet_id','class="control-label"');
                              ?>



                              <input type="text" name="pet_id" id="pet_id" class="form-control" readonly="">
                         </div>   
              </div>
              

               <div class="row">
                      <div class="col-md-12">
                     
                          <?php 

                          echo form_label('Customer Name', 'customer_id','class="control-label"');
                          ?>

                           <select name="customer_id" class="form-control select2" required="" style="width: 100%;min-height: 150px;max-height: 150px;overflow-y: auto;">
                                  
                                  <?php foreach($all_customers as $customers):?>
                                    
                                   <option value="<?php echo $customers->customer_table_id?>"><?php echo $customers->firstname .' '. $customers->middlename .' '. $customers->lastname?></option>
                                   <?php ?>
                                 <?php endforeach;?>
                            </select>

                     </div>   
               </div>


               <br >

               <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Pet Name', 'petname','class="control-label"');
                              ?>



                              <?php 
                                $data = array(
                                        'name'          => 'petname',
                                        'id'            => 'petname',
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

                          echo form_label('Pet Type', 'pet_type','class="control-label"');
                          ?>

                           <select name="pet_type" class="form-control" required="" >
                                  <option value="">Pet Type</option>
                                  <?php foreach($all_pettype as $pettype):?>
                                    
                                   <option value="<?php echo $pettype->pettype_id?>"><?php echo $pettype->pettype?></option>
                                   <?php ?>
                                 <?php endforeach;?>
                            </select>

                     </div>   
               </div>


               <br>

               <div class="row">
                      <div class="col-md-12">
                     
                          <?php 

                          echo form_label('Pet Breed', 'breed','class="control-label"');
                          ?>

                           <select name="breed" class="form-control select2" required="" style="width: 100%;min-height: 150px;max-height: 150px;overflow-y: auto;">
                                  
                                
                            </select>

                     </div>   
               </div>


               <br >


              <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Gender', 'gender','class="control-label"');
                              ?>



                             <select name="gender" class="form-control">
                               <option value="Male">Male</option>
                               <option value="Female">Female</option>
                             </select>
                         </div>   
              </div>

                   <br />


                <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Birth Date', 'birthDate','class="control-label"');
                              ?>

                              <input type="date" class="form-control"  value="" name="birthdate" required="">

                          
                         </div>   
                 </div>

                 <br />

                <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Pet Image', 'upload_image','class="control-label"');
                              ?>

                              <input type="file" class="form-control"  value="" name="upload_image" required="">

                          
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
      var pet_id = document.getElementById("pet_id");
    pet_id = "<?= 'P'.date("ymdhis") . abs(rand('0','9'));  ?>";
    $('#pet_id').val(pet_id);



     $(document).ready(function() {

          $('#breed').hide(); 

          $('select[name="pet_type"]').on('change', function() {

            var pet_type = $(this).val();

            if(pet_type) {

                 $('#breed').show(); 
                 
                 $.ajax({

                    url: '<?php echo base_url('admin/pet_breed/')?>'+pet_type,

                    type: "GET",

                    dataType: "json",

                    success:function(data) {

                        $('select[name="breed"]').empty();
                         $.each(data, function(key, value) {

                            $('select[name="breed"]').append('<option value="'+ value.breed_id +'">'+ value.pet_breed +'</option>');

                        });

                    }

                  });

            }else{

                $('select[name="breed"]').empty();

            }

          });



    //modal test
     

    });
  </script>