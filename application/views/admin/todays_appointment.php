<?php foreach($theme_color as $t_color){

  $skin_color = $t_color->theme_color;
  $settings_id =$t_color->settings_id;

}?>

<!DOCTYPE html>
<html>

<?php $this->load->view('include_pages_admin/page_header');?>

<body class="hold-transition <?php echo $skin_color;?> sidebar-mini" id="todays_appointment">
  <div class="wrapper">


    <?php $this->load->view('include_pages_admin/document_header');?>
   
    <?php $this->load->view('include_pages_admin/sidebar');?>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <h1>
          Today's Appointment
        </h1>
      
      </section>

      <!-- Main content -->
      <section class="content">
       
      <div class="row">
        <div class="col-md-12">
          <div class="box box-warning box-solid">
              <div class="box-header with-border">
                <h3 class="box-title text-center">Todays Appointment</h3>

              </div>
              <div class="box-body">

              <table  class="datatables table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Appointment ID</th>

                  <th>Customer Name</th>
                  <th>Pet Name</th>
                  <th>Date</th>
                  <th>Time</th>
                  <th>Veterinarian in Charge</th>
                  <th>Status</th>
                </tr>
                </thead>
                <tbody>
                

                <?php foreach($todays_appointment as $t_appointment):?>

                  <tr>
                     <td><?php echo $t_appointment->appointment_id;?></td>
                    <td><?php echo $t_appointment->customer_name;?></td>
                    <td><?php echo $t_appointment->pet_name;?></td>
                    <td> <?php echo $t_appointment->preferredtime;?></td>
                    <td><button type="button" class="btn btn-primary btn-sm btn-flat" data-tooltip="tooltip" data-title="Assign a veterinarian" data-target="#assignVet" data-toggle="modal">None</button></td>
                    <td><?php echo $t_appointment->appointment_status;?></td>
                  </tr>



                   <div class="modal fade" id="assignVet">
                      <div class="modal-dialog">
                        <div class="modal-content">
                          <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title">Veterinarians</h4>
                          </div>
                          <div class="modal-body">
                            
                          </div>
                          <div class="modal-footer">
                            <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary">Save changes</button>
                          </div>
                        </div>
                        <!-- /.modal-content -->
                      </div>
                      <!-- /.modal-dialog -->
                    </div>
                    <!-- /.modal -->


                  <?php endforeach;?>

                </tbody>
               
              </table>

                            
              </div>
              <!-- /.box-body -->
              <div class="box-footer">
               
              </div>
              <!-- /.box-footer-->
          </div>

        </div>
      </div>
     
      </section>
      <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <footer class="main-footer">
      <div class="pull-right hidden-xs">
        <b>Beta Version</b> 
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
<?php $this->load->view('include_pages_admin/appointment_modal');?>


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


    //get JSON

    $.getJSON("<?php echo site_url()?>appointment/scheduleTimeTable", function(data){

        $.each(data,function(key,value){
             $('select[name="scheduleTime"]').append('<option value="'+ value.timeSchedule_id +'">'+ value.time +'</option>');
        });

    });

    var customerType = $('#customerType');
    var walkinForm = $('#walkinForm');
    var memberForm = $('#memberForm');
  
    memberForm.hide();
    walkinForm.show();

    customerType.on("change",function(e){
        var value = $(this).val();
        console.log(value);

        if(value =="walkin"){
            memberForm.hide();
            walkinForm.show();
        }else{
            memberForm.show();
            walkinForm.hide();

           
            //$.ajax()
        }
    });



 

</script>


</body>
</html>
