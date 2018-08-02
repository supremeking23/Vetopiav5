<?php foreach($theme_color as $t_color){

  $skin_color = $t_color->theme_color;
  $settings_id =$t_color->settings_id;

}?>
<!DOCTYPE html>
<html>

<?php $this->load->view('include_pages_admin/page_header');?>

<body class="hold-transition <?php echo $skin_color;?> sidebar-mini" id="old_appointment">
<div class="wrapper">


  <?php $this->load->view('include_pages_admin/document_header');?>
 
  <?php $this->load->view('include_pages_admin/sidebar');?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Old Appointment
      </h1>
    
    </section>

    <!-- Main content -->
    <section class="content">
     
   
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
