  <!-- add appointment -->
    <div class="modal fade" id="addAppointment">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title">Schedule an Appointment</h4>
          </div>

          <?php echo form_open_multipart('Appointment/Set_appointment');?>
              <div class="modal-body">
                 <div class="form-group">
                  <label for="customerName">Customer Name</label>
                  <select name="customerName" id="customerName" required="" class="form-control select2" style="width: 100%;">
                   <option value="">Customer Name</option>
                   <?php foreach($all_customers as $customers):?>
                      <option value="<?php echo $customers->customer_table_id;?>"><?php echo $customers->firstname .' '. $customers->middlename .' '. $customers->lastname;?></option>
                    <?php endforeach;?>
                  </select>
                 </div>


                <div class="form-group">
                  <label for="pets">Pet Name</label>
                  <select name="pets" id="pets" class="form-control select2" style="width: 100%;">
                  
                  </select>
               </div>

               <div class="form-group">
                 <label for="veterinarian">Veterinarian</label>
                  <select name="veterinarian" class="form-control select2" style="width: 100%;min-height: 150px;max-height: 150px;overflow-y: auto;">
                              <?php foreach($all_vets as $vets):?>
                              <option value="<?php echo $vets->veterinarian_table_id?>"><?php echo $vets->firstname .' '. $vets->middlename .' '. $vets->lastname;?></option>
                            <?php endforeach?>
                   </select>
               </div>

                  <div class="form-group">
                    <label for="scheduleDate">Date</label>
                    <input type="date" required="" class="form-control"  name="scheduleDate" id="scheduleDate">
                  </div>

                  <div class="form-group">
                    <label for="scheduleTime">Time</label>
                   <select name="scheduleTime" required="" class="form-control" required="">
                        <?php foreach($time as $t):?>
                          <option value="<?php echo $t->time;?>"> <?php echo $t->time;?></option>
                      <?php endforeach;?>
                      </select>
                  </div>


                 <div class="form-group">
                  <label for="complaints" class="">Description / Complaints</label>

                  
                    <textarea required="" class="form-control textareas" id="complaints" name="complaints" placeholder=""></textarea>
                  
                </div>

              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left btn-sm btn-flat" data-dismiss="modal">Close</button>
                 <?php 

                      $data = array(
                        'name' => 'submit',
                        'value' => 'Submit',
                        'id' => 'add_appointment',
                        'class' => 'btn btn-primary btn-sm btn-flat',
                      );

                    echo form_submit($data);?>
              </div>

            <?php echo form_close();?>
        </div>
        <!-- /.modal-content -->
      </div>
      <!-- /.modal-dialog -->
    </div>




    <script>
      
          $(document).ready(function() {

            var dtToday = new Date();
    
            var month = dtToday.getMonth() + 1;
            var day = dtToday.getDate();
            var year = dtToday.getFullYear();
            if(month < 10)
                month = '0' + month.toString();
            if(day < 10)
                day = '0' + day.toString();
            
            var minDate= year + '-' + month + '-' + day;


            console.log("todays date: " + dtToday);
            console.log("todays month: " + month);
            console.log("todays day: " + day);
            console.log("todays year: " + year);
            console.log("min date: " + minDate);
            
            $('#scheduleDate').attr('min', minDate); 

            $('#pets').hide(); 


            $('select[name="customerName"]').on('change', function(){
                var customer_table_id = $(this).val();

                //alert(customer_table_id);

                    if(customer_table_id) {

                       $('#pets').show(); 
                       
                       $.ajax({

                          url: '<?php echo base_url('admin/customers_pets/')?>'+customer_table_id,

                          type: "GET",

                          dataType: "json",

                          success:function(data) {

                              $('select[name="pets"]').empty();
                               $.each(data, function(key, value) {

                                  $('select[name="pets"]').append('<option value="'+ value.pet_table_id +'">'+ value.petname +'</option>');

                              });

                          }

                        });

                    }else{

                        $('select[name="pets"]').empty();

                    }
            
            });
      });

    </script>