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

    $vet_fee = $t_color->vet_fee;
  }

?>


<!DOCTYPE html>
<html>

<?php $this->load->view('include_pages_staff/page_header');?>
<style type="text/css">
  .fc-time{
    display: none;
  }
  .btn-radius{
    border-radius: 15px
  }
</style>
<body class="hold-transition <?php echo $skin_color;?> sidebar-mini" id="appointment">
  <div class="wrapper">


    <?php $this->load->view('include_pages_staff/document_header');?>
   
    <?php $this->load->view('include_pages_staff/sidebar');?>
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


        <div class="row">
              <div class="col-md-4  col-sm-6 col-xs-12">
                <div class="info-box">
                  <span class="info-box-icon bg-aqua"><i class="fa fa-calendar"></i></span>

                  <div class="info-box-content" >
                    <span class="info-box-text">Today's appointment</span>
                     <?php foreach($count_todays_appointment as $todays_appointment_count):?>
                    <span class="info-box-number"><?php echo $todays_appointment_count->count_all?></span>
                    <?php endforeach;?>
                  </div>
                  <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
              </div>
              <!-- /.col -->
        </div>


         <div class="row">
          <div class="col-md-12">
            <button class="btn btn-flat btn-info btn-sm" data-toggle="modal" data-target="#addAppointment" style="border-radius: 15px">Set An Appointment</button>
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
       <br />

        <div class="row">
            <div class="col-md-12">



                 <?php if ($this->session->flashdata('schedule_appointment')) { ?>

                    <div class="alert alert-success display-success alert-dismissible" id="">
                      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                        <p> <?php echo $this->session->flashdata('schedule_appointment'); ?> </p>
                    </div>

                <?php }?>

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

                <?php }?>
              
            </div>
        </div>
       
      <div class="row">
        <div class="col-md-12">
          <div class="box <?php echo $box_color;?> box-solid">
              <div class="box-header with-border">
                <h3 class="box-title text-center">Appointment Records</h3>

              </div>
              <div class="box-body table-responsive">
              <!-- THE CALENDAR -->
              <div id="calendar"></div>                
              </div>
              <!-- /.box-body -->
              <div class="box-footer">
               
              </div>
              <!-- /.box-footer-->
          </div>

        </div>
      </div>


      <div class="row">
          <div id="calendarModal" class="modal fade">
            <div class="modal-dialog">
              <div class="modal-content" style="border-radius: 15px">
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <h4 class="modal-title">Appointment Summary</h4>
                </div>
                <div id="" class="modal-body">

                    <table width="100%" class="table table-striped table-bordered table-hover">
                          <tbody>
                            <tr>
                              <td><b>Status:</b></td>
                              <td><b><span id="appointment_status" class=""></span></b></td>
                            </tr>
                            <tr>
                              <td><b>Appointment ID:</b></td>
                              <td><b><span id="appointment_id"></span></b></td>
                            </tr>
                            <tr>
                              <td><b>Customer Name: </b></td>
                              <td><b><span id="customer_name"></span></b></td>
                            </tr>
                            <tr>
                              <td><b>Date:</b></td>
                              <td><b><span id="preferred_date"></span></b></td>
                            </tr>
                            <tr>
                              <td><b>Time:</b></td>
                              <td><b><span id="preferred_time"></span></b></td>
                            </tr>
                            <tr>
                              <td><b>Pet Name:</b></td>
                              <td><b><span id="pet_name"></span></b></td>
                            </tr>
                            <tr>
                              <td><b>Veterinarian in Charge:</b></td>
                              <td><b><span id="vet_in_charge"></span></b></td>
                            </tr>                                                                          
                          </tbody>
                                 
                    </table> 

                    <!--display for cancelled appointment -->
                    <div class="cancel_detail">
                      <table width="100%" class="table table-striped table-bordered table-hover ">
                            <tbody>
                              <tr>
                                <td><b>Reason for Cancellation:</b></td>
                                <td><b><p id="cancel_reason"></p></b></td>
                              </tr>
                                                                                                       
                            </tbody>
                                   
                      </table>                      
                    </div>



                    <div class="pendingbtnchoices">
                      <table width="100%" class="table table-striped table-bordered table-hover ">
                            <tbody>
                              <tr>
                                <td><b>Actions:</b></td>
                                <td><button type="button" class="btn btn-flat btn-sm btn-info approved" id="approvedbtn" data-appointmenttableid="10" style="border-radius: 15px">Approve</button>| <button type="button" class="btn btn-flat btn-sm btn-danger btn-cancel"  style="border-radius: 15px">Cancel Appointment</button></td>
                              </tr>
                                                                                                       
                            </tbody>
                                   
                      </table>
                   </div>


                    <div class="confirmed_detail">
                      <table width="100%" class="table table-striped table-bordered table-hover ">
                            <tbody>
                              <tr>
                                <td><b>Actions:</b></td>
                                <td><button type="button" class="btn btn-flat btn-sm btn-primary onprocess" id="onprocessbtn" data-appointmenttableid="10" style="border-radius: 15px">On Process</button>| <button type="button" class="btn btn-flat btn-sm btn-danger btn-cancel"  style="border-radius: 15px">Cancel Appointment</button></td>
                              </tr>
                                                                                                       
                            </tbody>
                                   
                      </table>
                   </div>



                    <div class="payment_detail">
                      <table width="100%" class="table table-striped table-bordered table-hover ">
                            <tbody>
                              <tr>
                                <td><b>Subjective:</b></td>
                                <td><p id="pre_subjective"></p></td>
                              </tr>
                              <tr>
                                <td><b>Objective:</b></td>
                                <td><p id="pre_objective"></p></td>
                              </tr>
                              <tr>
                                <td><b>Assessment:</b></td>
                                <td><p id="pre_assessment"></p></td>
                              </tr>
                              <tr>
                                <td><b>Plan:</b></td>
                                <td><p id="pre_plan"></p></td>
                              </tr>    
                              <tr>
                                <td><b>Possible Cause:</b></td>
                                <td><b><span id="pre_possible_cause"></span></b></td>
                              </tr>  
                              <tr>
                                <td><b>Services:</b><input type="hidden" name="checkup_id" id="checkup_id"></td>
                                <td><b>
                                  <ul class="service_list">
                                    
                                  </ul>
                                </b></td>
                              </tr> 
                              <tr>
                                <td><b>Total Amount:</b></td>
                                <td><b>
                                     ₱<span id="pre_total_payment"></span>
                                     <input type="hidden" name="pre_total_payment_val" id="pre_total_payment_val" value="">
                                </b></td>
                              </tr>
                              <tr>
                                <td><b>Cash</b></td>
                                <td><b>
                                     ₱<input type="number" name="cash" id="cash" style="width: 100%" class="form-control" value="">
                                </b></td>
                              </tr>
                              <tr>
                                <td><b>Change:</b></td>
                                <td><b>
                                     ₱<input type="text" name="change" id="change"  style="width: 100%" class="form-control" value="" readonly="">
                                </b></td>
                              </tr>                                                                                                                  
                            </tbody>
                                   
                      </table> 

                       <div class="paymenbtndiv">
                          <table width="100%" class="table table-striped table-bordered table-hover ">
                                <tbody>
                                  <tr>
                                    <td colspan="2"><button type="button" class="btn btn-flat btn-sm btn-success  btn-block btn-checkout" id="checkout" data-appointmenttableid="" style="border-radius: 15px">Checkout</button></td>
                                  </tr>
                                                                                                           
                                </tbody>
                                       
                          </table>
                       </div>
                       <div class="prescriptionbtndiv">
                          <table width="100%" class="table table-striped table-bordered table-hover ">
                                <tbody>
                                  <tr>
                                    <td colspan="2"><!--<button type="button" class="btn btn-flat btn-sm btn-info  btn-block " id="btn-prescription" data-appointmenttableid="" style="border-radius: 15px">Prescription</button>-->
                                      
                                      <a href="<?php echo site_url()?>appointment/print_appointment_summary/" target="_blank" class="btn btn-flat btn-sm btn-info  btn-block button-prescription" id="btn-prescription" data-appointmenttableid="" style="border-radius: 15px">Prescription</a>
                                    </td>
                                  </tr>
                                                                                                           
                                </tbody>
                                       
                          </table>
                       </div>
                   </div>


                    <div class="cancel_description">
                      <table width="100%" class="table table-striped table-bordered table-hover ">
                            <tbody>
                              <tr>
                                <td colspan="2"><label><b >Reason for Cancellation:</b></label>
                                  <div style="margin-bottom: 25px;"></div>
                                  <div class="row">
                                    <div class="col-md-12">
                                     <?php echo form_open_multipart('appointment/cancel_appointment');?>
                                      <textarea class="form-control textareas" name="cancel_reason" id="cancel_reason"  style="height:300px;width: 100%;border-radius: 15px"></textarea>
                                      <div style="margin-bottom: 25px;"></div>
                                      <input type="hidden" name="appointment_table_id" value="" id="appointment_table_id_cancel">
                                      <input type="submit" class="btn btn pull-right btn-sm btn-flat btn-danger" style="border-radius: 15px" value="Cancel">
                                    </form>
                                    </div>
                                  </div>
                                </td>
                             
                              </tr>
                                                                                                       
                            </tbody>
                                   
                      </table> 
                    </div>
                 



                  
                    <div class="done_detail">
                      <table width="100%" class="table table-striped table-bordered table-hover ">
                            <tbody>
                              <tr>
                                <td><b>Subjective:</b></td>
                                <td><p id="subjective"></p></td>
                              </tr>
                              <tr>
                                <td><b>Objective:</b></td>
                                <td><p id="objective"></p></td>
                              </tr>
                              <tr>
                                <td><b>Assessment:</b></td>
                                <td><p id="assessment"></p></td>
                              </tr>
                              <tr>
                                <td><b>Plan:</b></td>
                                <td><p id="plan"></p></td>
                              </tr>    
                              <tr>
                                <td><b>Possible Cause:</b></td>
                                <td><b><span id="possible_cause"></span></b></td>
                              </tr>  
                              <tr>
                                <td><b>Services:</b><input type="hidden" name="checkup_id" id="checkup_id"></td>
                                <td><b>
                                  <ul class="service_list">
                                    
                                  </ul>
                                </b></td>
                              </tr> 
                              <tr>
                                <td><b>Total Amount:</b></td>
                                <td><b>
                                     ₱<span id="total_payment"></span>
                                </b></td>
                              </tr>                                                                                                            
                            </tbody>
                                   
                      </table>                      
                    </div>



                </div>
              
                <div class="modal-footer">
                
                </div>
              </div>
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
<?php $this->load->view('include_pages_staff/appointment_modal');?>


<script src="<?php echo site_url();?>assets/dist/js/generalscripts.js"></script>
<script src="<?php echo site_url();?>assets/dist/js/databasejson.json"></script>

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

    //for floating numbers

    function format_number(x) {
      return Number.parseFloat(x).toFixed(2);
    }

    console.log(format_number(123.456));
    // expected output: "123.46"

    console.log(format_number(0.004));
    // expected output: "0.00"

    console.log(format_number('1.23e+5'));
    // expected output: "123000.00"




    $('.cancel_description').css('display','none');
    $('.payment_detail').css('display','none');
    $('.prescriptionbtndiv').css('display','none');

    $("#checkout").attr("disabled",true);

    var date = new Date()
    var d    = date.getDate(),
        m    = date.getMonth(),
        y    = date.getFullYear()

    $('#calendar').fullCalendar({
      header    : {
        left  : 'prev,next today',
        center: 'title',
        right : 'month,agendaWeek,agendaDay'
      },
      eventLimit: true, 
      buttonText: {
        today: 'today',
        month: 'month',
        week : 'week',
        day  : 'day'
      },
      //Random default events
      events    :"<?php echo site_url()?>Appointment/get_all_appointments_for_calendar",
      eventClick:  function(event, jsEvent, view) {  // when some one click on any event
               // endtime = $.fullCalendar.moment(event.end).format('h:mm');
                //start = $.fullCalendar.moment(event.start).format('dddd, MMMM Do YYYY');
                
                //var mywhen = start + "";
                //$('#modalTitle').html(event.description);
                /*$('#customer_name').html(event.customer_name);
                
                $('#appointment_date').html(start);
                $('#preferred_time').html(event.preferred_time);
                
                $('#appointment_reason').html(event.appointment_reason);
                
                */

               /*var status = event.status;

                if(status == "Pending"){
                  $('.label').addClass('label-warning');
                }else if(status == "Confirmed"){
                  $('.label').addClass('label-info');
                }else if(status == "Cancelled"){
                  $('.label').addClass('label-danger');
                }else if(status == "Done"){
                  $('.label').addClass('label-success');
                }*/

               var status = event.status;
               var is_finished = event.is_finished;

                if(status == "Pending"){
                  $('.cancel_detail').css('display','none');
                   $('.confirmed_detail').css('display','none');
                   $('.done_detail').css('display','none');
                   $('.pendingbtnchoices').css('display','block'); 
                   $('.payment_detail').css('display','none');
                   $('.paymenbtndiv').css('display','none');    
                }else if(status == "Confirmed"){
                   
                   $('.done_detail').css('display','none'); 
                   $('.cancel_detail').css('display','none');
                   $('.confirmed_detail').css('display','block');
                  // $('.cancel_description').css('display','none');
                  $('.pendingbtnchoices').css('display','none'); 
                  $('.payment_detail').css('display','none');
                  $('.paymenbtndiv').css('display','none');
                  $('.paymenbtndiv').css('display','none');
                  
                }else if(status == "Cancelled"){
                  $('.cancel_detail').css('display','block');
                   $('.done_detail').css('display','none');
                  $('.confirmed_detail').css('display','none');
                  $('.cancel_description').css('display','none'); 
                  $('.pendingbtnchoices').css('display','none');  
                  $('.payment_detail').css('display','none');
                   $('.paymenbtndiv').css('display','none');
                //$('.table').append(samp);
                }else if(status == "Done"){
                  $('.cancel_detail').css('display','none');
                   $('.done_detail').css('display','block');
                   $('.confirmed_detail').css('display','none'); 
                   $('.cancel_description').css('display','none'); 
                   $('.pendingbtnchoices').css('display','none'); 
                   $('.payment_detail').css('display','none');
                   $('.paymenbtndiv').css('display','none');
                  //$('.cancel_detail').css('display',' ');
                }else if(status == "On-Process"){
                  $('.cancel_detail').css('display','none');
                   $('.done_detail').css('display','none');
                   $('.confirmed_detail').css('display','none'); 
                   $('.pendingbtnchoices').css('display','none'); 
                   //$('.payment_detail').css('display','none');

                   if(is_finished == 1){
                   // alert(1);
                    
                    $('.paymenbtndiv').css('display','block');
                    $('.payment_detail').css('display','block');
                   }
                  //$('.cancel_detail').css('display',' ');
                }

                //span
                


                /*var cancellation_reason = event.cancellation_reason;

                if(cancellation_reason == ""){
                  $('#is_cancelled').hide();
                }else{
                  $('#is_cancelled').show();
                }

                $('#cancel_reason').html(event.cancellation_reason);

                //alert(status);
                //$('#startTime').html(mywhen);
                $('#appointmentID').val(event.id);

                */
                //tbl_appointment
              var z =   $('#appointment_id').html(event.appointment_id);
               
                $('#btn-prescription').attr('href',"<?php echo site_url()?>appointment/print_appointment_summary/"+event.id);
               

                $('#customer_name').html(event.title);
                $('#preferred_date').html(event.preferredDate);
                $('#preferred_time').html(event.preferredtime);
                $('#appointment_status').html(event.status);
                $('#pet_name').html(event.pet_name);
                $('#vet_in_charge').html(event.vet_in_charge);
                $('#cancel_reason').html(event.cancel_reason);  


                //done
                //tbl_checkup
                $('#subjective').html(event.subjective);
                $('#objective').html(event.objective);
                $('#assessment').html(event.assessment);
                $('#plan').html(event.plan);
                $('#possible_cause').html(event.possible_cause);
               /* $('#service_list').html(event.service_list);
                $('#service_fee').html(event.service_fee);*/
                $('#total_payment').html(event.total_payment);



                //post payment soap
                $('#pre_subjective').html(event.subjective);
                $('#pre_objective').html(event.objective);
                $('#pre_assessment').html(event.assessment);
                $('#pre_plan').html(event.plan);
                $('#pre_possible_cause').html(event.possible_cause);
               /* $('#service_list').html(event.service_list);
                $('#service_fee').html(event.service_fee);*/
                var pre_total_payment_val = $('#pre_total_payment').html(event.total_payment);
                $('#pre_total_payment_val').val(event.total_payment);





               /* var a = $('#onprocessbtn').data('appointmenttableid');
                alert(a);
                //alert($('#onprocessbtn').data('appointmenttableid',event.appointment_id));
                $('#onprocessbtn').data('appointmenttableid',event.id);
                alert($('#onprocessbtn').data('appointmenttableid'));
              */

               $('#onprocessbtn').attr('data-appointmenttableid',event.id);
               $('#approvedbtn').attr('data-appointmenttableid',event.id);

               $('#checkout').attr('data-appointmenttableid',event.id);

               $('#appointment_table_id_cancel').attr('value',event.id);
                //$("data-appointmenttableid").data(event.appointment_id);

                $('#checkup_id').val(event.checkup_id);
                var checkup_id =  $('#checkup_id').val();
                console.log('checkup_id ' + checkup_id);



                $.ajax({

                  url: '<?php echo base_url('appointment/get_services_for_calendar_view/')?>'+checkup_id,

                  type: "GET",

                  dataType: "json",

                  success:function(data) {

                      $('ul.service_list').empty();

                      $('ul.service_list').append('<li >Professional Fee = ₱<?php echo $vet_fee;?></li>');

                       $.each(data, function(key, value) {

                          $('ul.service_list').append('<li >'+ value.service_name +' = ₱ '+ value.service_fees +'</li>');
                          
                          console.log(value.service_name);

                      });

                  }

                });


               /* $.ajax({

                  url: '<?php echo base_url('appointment/get_services_with_fee/')?>'+checkup_id,

                  type: "GET",

                  dataType: "json",

                  success:function(datas) {

                    $('#total_fee').html(datas.total_fee);
                    console.log('wala ' + datas.total_fee);
                  }

                });*/


                $('#calendarModal').modal();
            },

    });





        function reload(){
       
          setTimeout(function(){ 

              $(".display-success").fadeOut("fast");
              location.reload();
               }, 2000);
        }

       /* $('.btn-receipt').click(function(){

            reload();
        });
        */

        $('.btn-cancel').click(function(){

            $('.cancel_description').toggle();
        });


        $('.button-prescription').click(function(){

            reload();
        });

        $('.btn-checkout').click(function(){
              var total_fee = $('#pre_total_payment_val').val();
              var cash = $('#cash').val();
              var change =  $("#change").val();
              var appointment_table_id  = $(this).data("appointmenttableid");
              var appointment_status = "Done";
              console.log(appointment_table_id);

              $.ajax({
                  url : "<?php echo site_url('appointment/appointment_receipt');?>",
                  method : "POST",
                  data : {appointment_table_id: appointment_table_id,total_fee:total_fee,cash:cash,change:change,appointment_status:appointment_status},
                  success: function(data){
                      
                      console.log("nadagdag na" + data.code);
                      //document.getElementById("reloaded").contentDocument.location.reload(true);
                      //$("#reloaded").load();
                      //location.reload();
                     //alert('tapos na')

                      $('.paymenbtndiv').css('display','none');
                      $('.prescriptionbtndiv').css('display','block');
                  }
              });

            //$('.cancel_description').toggle();
        });

     /*   $('.paymenbtn').click(function(){
            $('.cancel_description').css('display','none'); 
            $('.payment_detail').toggle();

        });*/

      //JAVASCRIPT FUNCTION
      document.getElementById("cash").oninput = function() {computeChange()};

      function computeChange() {

        var  cash = $('#cash').val();
        var total_fee = $('#pre_total_payment_val').val();
        var change;
        if(cash.length != 0){
          $("#checkout").attr("disabled",false);
          
         change = cash - total_fee;
         console.log('totalfee: ' + total_fee);
         console.log('cash: ' + cash);
         console.log('change: ' + change);

          if(change >= 0){
            //alert('ivan');
            $("#checkout").attr("disabled",false);
          }else{
            $("#checkout").attr("disabled",true);
          }
          $("#change").val(format_number(change));
        }else{
          $("#checkout").attr("disabled",true);
          $("#change").val("");
        }

      }

        $('.onprocess').click(function(){

          var appointment_table_id  = $(this).data("appointmenttableid");
          var appointment_status = "On-Process";


          //alert(appointment_table_id);

         $.ajax({
              url : "<?php echo site_url('Appointment/Change_to_onprocess');?>",
              method : "POST",
              data : {appointment_table_id: appointment_table_id,appointment_status:appointment_status},
              success: function(data){
                  
                  console.log("nadagdag na" + data.code);
                  //document.getElementById("reloaded").contentDocument.location.reload(true);
                  //$("#reloaded").load();
                  //alert('Appointment now is on going');
                  reload();
                  
              }
          });
        });
    

        $('.approved').click(function(){

          var appointment_table_id  = $(this).data("appointmenttableid");
          var appointment_status = "Confirmed";


          //alert(appointment_table_id);

         $.ajax({
              url : "<?php echo site_url('Appointment/Change_to_onprocess');?>",
              method : "POST",
              data : {appointment_table_id: appointment_table_id,appointment_status:appointment_status},
              success: function(data){
                  
                  console.log("nadagdag na" + data.code);
                  //document.getElementById("reloaded").contentDocument.location.reload(true);
                  //$("#reloaded").load();
                  //alert('Appointment now is on going');
                  reload();
                  
              }
          });
        });



  });
</script>


</body>
</html>
