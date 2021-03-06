        <div class="modal fade" id="addPetAjax">
          <div class="modal-dialog">
            <div class="modal-content" style="border-radius: 15px">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Add Pet</h4>
              </div>

              <?php echo form_open_multipart('','id="formAddPetAjax"');?>
                <div class="modal-body">

                <div class="alert alert-success display-success" style="display: none">
                  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                   <div class="success-message"></div> 
                </div>



                    <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Pet ID', 'pet_id','class="control-label"');
                              ?>



                              <input type="text" name="pet_id" id="pet_id_ajax" class="form-control" readonly="" style="border-radius: 15px">
                         </div>   
                    </div>
                    
                    <br />
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
                                        'style'         => 'border-radius:15px',
                                        
                                );

                                echo form_input($data);
                              ?>      
                      </div>   
                    </div>

                    <br />
                   <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Pet Type', 'pet_type','class="control-label"');
                              ?>

                               <select name="pet_type" class="form-control" id="pet_type" required="" style="border-radius: 15px">
                                      <option value="">Pet Type</option>
                                      <?php foreach($all_pettype as $pettype):?>
                                        
                                       <option value="<?php echo $pettype->pettype_id?>"><?php echo $pettype->pettype?></option>
                                       <?php ?>
                                     <?php endforeach;?>
                                </select>

                         </div>   
                   </div>

                   <br />
                   <div class="row">
                          <div class="col-md-12">
                         
                              <?php 

                              echo form_label('Pet Breed', 'breed','class="control-label"');
                              ?>

                               <select name="breed" class="form-control select2" id="breed" required="" style="width: 100%;min-height: 150px;max-height: 150px;overflow-y: auto;border-radius: 15px">
                                      
                                    
                                </select>

                         </div>   
                   </div>                    
                  <br />

                  <div class="row">
                              <div class="col-md-12">
                             
                                  <?php 

                                  echo form_label('Gender', 'gender','class="control-label"');
                                  ?>



                                 <select name="gender" id="gender" class="form-control" style="border-radius: 15px">
                                   <option value="Male">Male</option>
                                   <option value="Female">Female</option>
                                 </select>
                             </div>   
                  </div>

                  <div class="row">
                            <div class="col-md-12">
                           
                                <?php 

                                echo form_label('Birth Date', 'birthDate','class="control-label"');
                                ?>

                                <input type="date" class="form-control" id="birthdate"  value="" name="birthdate" required="" style="border-radius: 15px">

                            
                           </div>   
                   </div>

                   <br />

                    <div class="row">
                              <div class="col-md-12">
                             
                                  <?php 

                                  echo form_label('Pet Image', 'upload_image','class="control-label"');
                                  ?>

                                  <input type="file" class="form-control" id="upload_image" value="" name="upload_image" required="" style="border-radius: 15px">

                                  <input type="hidden" name="customer_table_id" id="customer_table_id" value="<?php echo $_SESSION['customer_table_id']?>">
                             </div>   
                    </div>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-default pull-left btn-flat btn-sm" data-dismiss="modal" style="border-radius: 15px">Close</button>
                   <?php 

                      $data = array(
                        'name' => 'submit',
                        'value' => 'Add',
                        'id' => 'add_pet_btn',
                        'class' => 'btn btn-primary btn-flat btn-sm',
                        'style' => 'border-radius:15px'
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
      var pet_id = document.getElementById("pet_id");
      pet_id = "<?= 'P'.date("ymdhis") . abs(rand('0','9'));  ?>";
      $('#pet_id_ajax').val(pet_id);

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


        function reload(){
         
            setTimeout(function(){ 

                $(".display-success").fadeOut("fast");
                location.reload();
                 }, 2000);
        }

        $(document).on('submit', '#formAddPetAjax', function(event){
          
          event.preventDefault();
          //$('#action').attr('disabled', 'disabled');
          var form_data = new FormData(this);
          $.ajax({
            method:"POST",
            url:'<?php echo site_url()?>pet_management/add_pet_ajax',
            data:form_data,
            //dataType: 'json',
            contentType: false,
            cache: false,
            processData:false,
            success:function(data){
            
                $('#formAddPetAjax')[0].reset();
                $(".display-success").css("display","block");
                $(".success-message").html("<p>New Pet has been Added successfully</p>");
                reload();
            }

          });
        });


    //modal test

  var dtToday = new Date();
    
    var month = dtToday.getMonth() + 1;
    var day = dtToday.getDate();
    var year = dtToday.getFullYear();
    if(month < 10)
        month = '0' + month.toString();
    if(day < 10)
        day = '0' + day.toString();
    
    var maxDate = year + '-' + month + '-' + day;
     //alert(maxDate);
    $('#birthdate').attr('max', maxDate);

     });      
</script>