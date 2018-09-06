<?php foreach($theme_color as $t_color){

    $skin_color = $t_color->theme_color;
    $settings_id =$t_color->settings_id;

    $box_color = "";

    if($skin_color == "skin-green"){
      $box_color = "box-success";
    }else if($skin_color == "skin-blue"){
      $box_color = "box-primary";
    }else if($skin_color == "skin-red"){
      $box_color = "box-danger";
    }else if($skin_color == "skin-yellow"){
      $box_color = "box-warning";
    }


  }

?>

<!DOCTYPE html>
<html>

<?php $this->load->view('include_pages_vets/page_header');?>

<style type="text/css">
  

</style>

<body class="hold-transition <?php echo $skin_color;?> sidebar-mini" id="appointment">
  <div class="wrapper">


    <?php $this->load->view('include_pages_vets/document_header');?>
   
    <?php $this->load->view('include_pages_vets/sidebar');?>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <h1>
          Appointment
        </h1>
      
      </section>

      <!-- Main content -->
      <section class="content">

       
       <br />

        <div class="row">
            <div class="col-md-12">



                 <?php if ($this->session->flashdata('new_record_added')) { ?>

                    <div class="alert alert-success display-success alert-dismissible" id="">
                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                        <p> <?php echo $this->session->flashdata('new_record_added'); ?> </p>
                    </div>

                <?php }?>

                <!--

                 <?php if ($this->session->flashdata('assigned_vet')) { ?>

                    <div class="alert alert-success display-success alert-dismissible" id="">
                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                        <p> <?php echo $this->session->flashdata('assigned_vet'); ?> </p>
                    </div>

                <?php }?>

                 <?php if ($this->session->flashdata('cancel_appointment')) { ?>

                    <div class="alert alert-success display-success alert-dismissible" id="">
                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                        <p> <?php echo $this->session->flashdata('cancel_appointment'); ?> </p>
                    </div>

                <?php }?>  -->
              
            </div>
        </div>
       
      <div class="row">
        <div class="col-md-9">
          <div class="box <?php echo $box_color;?> box-solid">
              <div class="box-header with-border">
                <h3 class="box-title text-center">Today's Appointment</h3>

              </div>
              <div class="box-body">

              <table  class="datatables table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Time</th>
                  <th>Customer Name</th>
                  <th>Pet Name</th>
                  <th>Pet Type</th>
                 <th>Age</th>
                  <th>Action</th>
                </tr>
                </thead>
                <tbody>
                
                <?php foreach($my_appointment_this_day as $vets_appointment_today):?>
                  <tr>
                    <td><?php echo $vets_appointment_today->preferredtime;?></td>
                    <td><?php echo $vets_appointment_today->customer_name;?></td>
                    <td><?php echo $vets_appointment_today->pet_name;
                    ?> </td>
                    <td><?php echo $vets_appointment_today->pettype;
                    ?> </td>
                    <td>
                      <?php echo $vets_appointment_today->age;?>
                    </td>
                    <td><?php if($vets_appointment_today->is_finished == 0){ ?>
                    <button type="button" data-toggle="modal" data-target="#checkup<?php echo $vets_appointment_today->appointment_table_id?>" class="btn btn-sm btn-flat btn-primary add-record-modal">Add Record</button>
                        <div class="modal fade"  id="checkup<?php echo $vets_appointment_today->appointment_table_id?>">
                            <div class="modal-dialog">
                              <div class="modal-content">
                                <div class="modal-header">
                                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span></button>
                                  <h4 class="modal-title">Pet Medical Record
                                   
                                  </h4>
                                </div>
                                <?php //pet_management/add_diagnosis ?>
                                <?php echo form_open_multipart('pet_management/add_diagnosis_record_vet_action','id=""');?>
                                  <div class="modal-body">
                                   
                                    <table width="100%" class="table table-striped table-bordered table-hover">
                                      <tr>
                                        <td><b>Pet ID:</b></td>
                                        <td><input type="hidden" class="form-control" id="pet_data_id" name="pet_data_id" value="<?php echo $vets_appointment_today->pet_id;?>" readonly="true" style="border-radius: 6px;" /> <?php echo $vets_appointment_today->pet_id;?>   </td>
                                      </tr>
                                      <tr>
                                        <td><b>Pet Name:</b></td>
                                        <td><input type="hidden" class="form-control" id="pet_name" name="pet_name" value="<?php echo $vets_appointment_today->pet_name;?>" readonly="true" style="border-radius: 6px;" /> <?php echo $vets_appointment_today->pet_name;?>   </td>
                                      </tr>
                                      <tr >
                                        <td colspan="2">
                                            <div class="row">
                                              <div class="col-md-12 ">
                                                <!-- Custom Tabs -->
                                                <div class="nav-tabs-custom">
                                                  <ul class="nav nav-tabs">
                                                    <li class="active"><a href="#tab_1<?php echo $vets_appointment_today->appointment_table_id;?>" data-toggle="tab">Subjective</a></li>
                                                    <li><a href="#tab_2<?php echo $vets_appointment_today->appointment_table_id;?>" data-toggle="tab">Objective and Assessment</a></li>
                                                    <li><a href="#tab_3<?php echo $vets_appointment_today->appointment_table_id;?>" data-toggle="tab">Plan</a></li>
                                                    
                                                  </ul>
                                                  <div class="tab-content">
                                                    <div class="tab-pane active" id="tab_1<?php echo $vets_appointment_today->appointment_table_id;?>">
                                                      <label>Customer Complaint/ Description : </label> 
                                                      <div style="margin-bottom: 25px;"></div>

                                                    <div class="row">
                                                      <div class="col-md-12">
                                                        
                                                        <div class="form-group">
                                                        <textarea name="complaints" id="complaints" class="form-control textareas" style="height:300px;width: 100%" placeholder="Input Owner Statement" required=""><?php echo $vets_appointment_today->complaints;?></textarea>
                                                        </div>
                                                      </div>
                                                    </div>                                             
                                                    </div>
                                                    <!-- /.tab-pane -->
                                                    <div class="tab-pane" id="tab_2<?php echo $vets_appointment_today->appointment_table_id;?>">
                                                      <label>Treatment : </label> 
                                                      <div style="margin-bottom: 25px;"></div>
                                                      <div class="row">
                                                        <div class="col-md-12">
                                                          
                                                          <div class="form-group">
                                                          <textarea name="treatment" id="treatment" class="form-control textareas" style="height:300px;width: 100%" placeholder="Input Veterinarian Statement/ Observation / Treatment" required="" placeholder="Input Veterinarian Statement/ Observation / Treatment"></textarea>
                                                          </div>
                                                        </div>
                                                      </div>                                           
                                                    </div>
                                                    <!-- /.tab-pane -->
                                                    <div class="tab-pane" id="tab_3<?php echo $vets_appointment_today->appointment_table_id;?>">
                                                      <label> Prescription: </label> 
                                                      <div style="margin-bottom: 25px;"></div>
                                                      <div class="row">
                                                        <div class="col-md-12">
                                                          
                                                          <div class="form-group">
                                                          <textarea name="prescription" id="prescription" class="form-control textareas" style="height:300px;width: 100%" placeholder="Prescriptions / Medicines / Doctors Comments and Recomendation" required="">
                                                              
                                                          </textarea>
                                                          </div>
                                                        </div>
                                                      </div>                                            
                                                    </div>
                                                    <!-- /.tab-pane -->
                                                  </div>
                                                  <!-- /.tab-content -->
                                                </div>
                                                <!-- nav-tabs-custom -->             
                                              </div>
                                            </div>                                          
                                        </td>
                                      </tr>
                                      <tr>
                                        <td><b>Possible Cause:</b></td>
                                        <td>
                                          <select id="possible-option" name="possible-option" class="form-control">
                                            <option value="select-existing">Select Possible Cause Below</option>
                                            <option value="write-down">Write down the possible cause</option>
                                          </select>

                                          <div class="existing-view" style="margin-top: 10px">
                                            <select id="possible_option" name="possible_option" class="form-control select2"   style="width: 100%;min-height: 150px;max-height: 150px;overflow-y: auto; ">
                                              <option value=""></option>
                                              <?php foreach($get_all_articles as $a):?>
                                                <option value="<?php echo $a->library_id;?>"><?php echo $a->title;?></option>
                                              <?php endforeach;?>
                                            </select>
                                          </div>

                                          <div class="write-view" style="margin-top: 10px;display: none">
                                            <input type="text" name="write_possible" id="write_possible" class="form-control" style="width: 100%; ">
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>
                                 <?php //other data?>
                                 <input type="hidden" name="date" id="date" value="<?php echo $vets_appointment_today->preferredDate;?>">
                                 <input type="hidden" name="time" id="time"  value="<?php echo $vets_appointment_today->preferredtime;?>">

                                 <input type="hidden" name="appointment_id" id="appointment_id"  value="<?php echo $vets_appointment_today->appointment_id;?>">
                                 <input type="hidden" name="appointment_table_id" id="appointment_table_id"  value="<?php echo $vets_appointment_today->appointment_table_id;?>">

                                 <input type="hidden" name="veterinarian" id="veterinarian"  value="<?php echo $this->session->userdata('complete_name');?>">

                                 <input type="hidden" name="vet_id" id="vet_id"  value="<?php echo $this->session->userdata("user_id");?>">


                                 <input type="hidden" name="pet_id" id="pet_id"  value="<?php echo $vets_appointment_today->pet_id;?>">
                                 <input type="hidden" name="pet_name" id="pet_name"  value="<?php echo $vets_appointment_today->pet_name;?>">

                                <input type="hidden" name="age" id="age"  value="<?php echo $vets_appointment_today->age;?>">
                                <label> Pet Services: </label> 
                                        </td>
                                        <td>
                                <?php 
                                      $pettype = $vets_appointment_today->pettype;
                                    $pettype_ulit = strtolower($pettype);
                                      $is_adult = $vets_appointment_today->is_adult;
                                      //adult (1 year old and above)
                                      //young adult (11 months old and below)

                                      if($is_adult == 1){
                                        $age = "adult (1 year old and above)";
                                      }else{
                                        $age = "young adult (11 months old and below)";
                                      }

                                      /*$isa = $this->pet_management_model->get_all_services_for_specific_pet_age_and_active($pettype_ulit);

                                      foreach($isa as $a){
                                        echo $a->service_name;
                                      }*/
                                   
                                       // echo "puppies"; 

                                     $services =  $this->pet_management_model->get_all_services_for_specific_pet_age_and_active($pettype_ulit,$age);
                                ?>
                                          <div class="col-md-12">
                                              <select name="service_id[]" id="service_id" class="form-control select2" multiple required style="width: 100%;min-height: 150px;max-height: 150px;overflow-y: auto; ">
                                              <option value="0" class="blacks">General Checkup</option>
                                              <?php foreach($services as $s):?>
                                                <option class="blacks" value="<?php echo $s->service_id?>"><?php echo $s->service_name;?></option>
                                              <?php endforeach;?>
                                             </select>
                                         </div>

                                         <input type="hidden" name="pettype" id="pettype"  value="<?php echo $pettype;?>">
                                         <input type="hidden" name="is_adult" id="is_adult"  value="<?php echo $is_adult;?>">
                                        </td>
                                      </tr>

                                    </table>

                                   

                                  </div>
                                  <div class="modal-footer">
                                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                                    <input type="submit" class="btn btn-primary btn-sm btn-flat btn-add-record" id="submit" name="submit" value="Save">
                                  </div>

                                </form>
                              </div>
                              <!-- /.modal-content -->
                            </div>
                            <!-- /.modal-dialog -->
                        </div>
                        <!-- /.modal -->  
                    
                    <?php }else{ ?>  
                      <!--<label class="label label-success"> Done</label> -->

                      <!--<a href="<?php echo site_url()?>veterinarian/pet_details/<?php echo $vets_appointment_today->pet_table_id;?>" class="btn btn-info btn-sm btn-flat">View Pet Detail</a> -->
                      <button type="button" data-toggle="modal" class="btn btn-info btn-sm btn-flat" data-target="#viewprescription<?php echo $vets_appointment_today->appointment_table_id?>">View Summary</button>

                      <div class="modal fade" id="viewprescription<?php echo $vets_appointment_today->appointment_table_id?>">
                                        <div class="modal-dialog">
                                          <div class="modal-content">
                                            <div class="modal-header">
                                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span></button>
                                              <h4 class="modal-title">Summary</h4>
                                            </div>
                                            <div class="modal-body">
                                              <div class="container-fluid">
                                              
                                                <div style="height:10px;"></div>

                                                <div class="row">
                                                  <div class="col-lg-12">
                                                    <table width="100%" class="table table-striped table-bordered table-hover">
                                                      <tbody>
                                                        <?php 
                                                        //appointment session is done..... this is for viewing of appointment summary
                                                        $record_detail = $this->pet_management_model->get_prescription_by_appointment_table_id($vets_appointment_today->appointment_table_id);

                                                          foreach($record_detail as $rd){
                                                             $subjective = $rd->complaints;
                                                             $objective_and_assessment = $rd->treatment;
                                                             $plan = $rd->prescription;
                                                        }?>  

                                                        <tr>
                                                          <td colspan="2">
                                                            <div class="row">
                                                              <div class="col-md-12 ">
                                                                <!-- Custom Tabs -->
                                                                <div class="nav-tabs-custom">
                                                                  <ul class="nav nav-tabs">
                                                                    <li class="active"><a href="#tab_1<?php echo $vets_appointment_today->appointment_table_id;?>" data-toggle="tab">Subjective</a></li>
                                                                    <li><a href="#tab_2<?php echo $vets_appointment_today->appointment_table_id;?>" data-toggle="tab">Objective and Assessment</a></li>
                                                                    <li><a href="#tab_3<?php echo $vets_appointment_today->appointment_table_id;?>" data-toggle="tab">Plan</a></li>
                                                                    
                                                                  </ul>
                                                                  <div class="tab-content">
                                                                    <div class="tab-pane active" id="tab_1<?php echo $vets_appointment_today->appointment_table_id;?>">
                                                                      <label>Customer Complaint/ Description : </label> 
                                                                      <div style="margin-bottom: 25px;"></div>

                                                                    <div class="row">
                                                                      <div class="col-md-12">
                                                                        
                                                                        <div class="form-group">
                                                                          <p><?php echo $subjective;?></p>
                                                                        </div>
                                                                      </div>
                                                                    </div>                                             
                                                                    </div>
                                                                    <!-- /.tab-pane -->
                                                                    <div class="tab-pane" id="tab_2<?php echo $vets_appointment_today->appointment_table_id;?>">
                                                                      <label>Treatment : </label> 
                                                                      <div style="margin-bottom: 25px;"></div>
                                                                      <div class="row">
                                                                        <div class="col-md-12">
                                                                          
                                                                          <div class="form-group">
                                                                            <p><?php echo $objective_and_assessment;?></p>
                                                                          </div>
                                                                        </div>
                                                                      </div>                                           
                                                                    </div>
                                                                    <!-- /.tab-pane -->
                                                                    <div class="tab-pane" id="tab_3<?php echo $vets_appointment_today->appointment_table_id;?>">
                                                                      <label> Prescription: </label> 
                                                                      <div style="margin-bottom: 25px;"></div>
                                                                      <div class="row">
                                                                        <div class="col-md-12">
                                                                          
                                                                          <div class="form-group">
                                                                              <p><?php echo $plan;?></p>
                                                                          </div>
                                                                        </div>
                                                                      </div>                                            
                                                                    </div>
                                                                    <!-- /.tab-pane -->
                                                                  </div>
                                                                  <!-- /.tab-content -->
                                                                </div>
                                                                <!-- nav-tabs-custom -->             
                                                              </div>
                                                            </div>   
                                                          </td>
                                                        </tr>
                                                      </tbody>
                                                             
                                                    </table>
                                                  </div>
                                                </div>

                                              </div>
                                            </div>
                                            <div class="modal-footer">
                                             
                                            </div>
                                          </div>
                                          <!-- /.modal-content -->
                                        </div>
                                        <!-- /.modal-dialog -->
                      </div>
                      <!-- /.modal -->
                    <?php }?>
                    </td>







                  </tr>

                
                <?php endforeach;?>
                </tbody>
               
              </table>

                            
              </div>
              <!-- /.box-body -->
              <div class="box-footer">

                <?php 
                
                ?>
              </div>
              <!-- /.box-footer-->
          </div>

        </div>



        <div class="col-md-3">
           <div class="box <?php echo $box_color;?> box-solid">
              <div class="box-header with-border">
                <h3 class="box-title text-center">Incoming Appointment</h3>

              </div>
              <div class="box-body">
                <?php foreach($my_incoming_appointment as $incoming):?>
                 <button class="btn btn-sm btn-info btn-flat btn-block" data-toggle="modal" data-target="#incoming<?php echo $incoming->appointment_table_id?>" style="margin-bottom: 8px"><?php echo $incoming->customer_name;?></button>
                  <div class="modal fade" id="incoming<?php echo $incoming->appointment_table_id?>">
                    <div class="modal-dialog">
                      <div class="modal-content">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span></button>
                          <h4 class="modal-title">Appointment Detail</h4>
                        </div>
                        <div class="modal-body">
                          <table width="100%" class="table table-striped table-bordered table-hover">
                            <tr>
                              <td><b>Customer Name: </b></td>
                              <td><?php echo $incoming->customer_name;?></td>
                            </tr>
                            <tr>
                              <td><b>Pet Name: </b></td>
                              <td><?php echo $incoming->pet_name;?></td>
                            </tr>
                            <tr>
                              <td><b>Date: </b></td>
                              <td><?php 
                                  $date =date_create($incoming->preferredDate);
                                   echo  $preferred_date= date_format($date,"F d, Y");
                                  ?>, <?php echo $incoming->preferredtime;?></td>
                            </tr>
                            <tr>
                              <td><b>Complaint/Reason: </b></td>
                              <td><p><?php echo $incoming->complaints;?></p></td>
                            </tr>
                          </table>
                        </div>
                        <div class="modal-footer">
                          
                        </div>
                      </div>
                      <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                  </div>
                  <!-- /.modal -->
              <?php endforeach;?>
              </div>
              <div class="box-footer"></div>
            </div>
        </div>
      </div>
     
      </section>
      <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <footer class="main-footer">
      <div class="pull-right hidden-xs">
        <b></b> 
      </div>
      <strong>Copyright &copy; <?php echo date('Y');?>  All rights
      reserved.
    </footer>



    <!-- /.control-sidebar -->
    <!-- Add the sidebar's background. This div must be placed
         immediately after the control sidebar -->
    <div class="control-sidebar-bg"></div>
  </div>
  <!-- ./wrapper -->


<!--modals -->
<?php //$this->load->view('include_pages_admin/appointment_modal');?>


<script src="<?php echo site_url();?>assets/dist/js/generalscripts.js"></script>


<script>
      /*var xhttp = new XMLHttpRequest();

      xhttp.onreadystatechange = function(){
        if(this.readyState == 4 && this.status == 200){
          console.log(xhttp.responseText);
        }
      };

      xhttp.open("GET","<?php echo site_url()?>assets/dist/js/databasejson.json",true);
      xhttp.send();
      */
</script>

<!-- footer scripts -->

<!--page scripts -->
<script>

$(function(){


//get_all_pet_services

    $('#possible-option').change(function(){
      var value = $('#possible-option').val();
      if(value == "select-existing"){
        //alert(value);
        $('.write-view').css('display','none');
        $('.existing-view').css('display','block');


      }else{
         //alert(value);
         $('.write-view').css('display','block');
         $('.existing-view').css('display','none');
      }

    })




    function add_service_section(count = ''){
        

        var html = '';
        html += '<span id="row'+count+'"><div class="row">';
        var counts = count + 1;
        html += '<div class="col-md-11">';
        html += '<select name="service_id[]" id="service_id'+count+'" class="form-control ">';
        html += '<?php $services = $this->pet_management_model->get_all_services_for_specific_pet_age_and_active($pettype_ulit,$age);

        foreach($services as $s){ ?>';

        html += '<option value ="<?php echo $s->service_id;?>"> <?php echo $s->service_name;?>';

        html += '<?php } ?>';
        html += '</select><input type="hidden" name="hidden_service_id[]" id="hidden_service_id'+count+'" />';
        html += '</div>';
       
        html += '<div class="col-md-1">';
        if(count == '' )
        {
          html += '<button type="button" name="add_more" id="add_more" data-tooltip="tooltip" data-tittle="Add Service" class="btn btn-success btn-xs">+</button>';
        }
        else
        {
          html += '<button type="button" name="remove" id="'+count+'" class="btn btn-danger btn-xs remove">-</button>';
        }
        html += '</div>';
        html += '</div></div><br /></span>';
        $('.span_service_section').append(html);
    }





  
 /* $(document).on('click', '#add_more', function(){
      count = count + 1;
      add_service_section(count);
  });

  $(document).on('click', '.remove', function(){
      var row_no = $(this).attr("id");
      $('#row'+row_no).remove();
  });*/


  function reload(){
     
      setTimeout(function(){ 

            $(".display-success").fadeOut("fast");
                location.reload();
             }, 2000);
      }







});

</script>


</body>
</html>
