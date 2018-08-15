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


}?>

<!DOCTYPE html>
<html>

<?php $this->load->view('include_pages_admin/page_header');?>

<body class="hold-transition <?php echo $skin_color;?> sidebar-mini" id="logs">
<div class="wrapper">


  <?php $this->load->view('include_pages_admin/document_header');?>
 
  <?php $this->load->view('include_pages_admin/sidebar');?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Logs
        
      </h1>
    
    </section>

    <!-- Main content -->
    <section class="content">
     
      <div class="row">
        <div class="col-md-12">

            <div class="box box-solid <?php echo $box_color;?>">
              <div class="box-header with-border">
                <h3 class="box-title">Logs</h3>        
              </div>
            <!-- /.box-header -->
              <div class="box-body table-responsive">

                  <table id="" class="datatablelogs table table-bordered table-striped">
                    <thead>
                    <tr>
                      <th>Log Date</th>
                      <th>Users</th>
                      <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    
                    <?php foreach($all_logs as $logs):?>
                    <tr>
                      <td><?php 

                             $date =date_create($logs->log_date);
                             echo  $log_date_format= date_format($date,"F d, Y h:i:sa");
                           ;?> </td>
                      <td><?php echo $logs->log_user;?> (<?php echo $logs->log_usertype;?>) </td>
                      <td><?php echo $logs->log_action;?>  </td>
                    </tr>
                  <?php endforeach;?>
                    </tbody>
                   
                  </table>


              </div>
            <!-- ./box-body -->
            <div class="box-footer">
            
            </div>
            <!-- /.box-footer -->
          </div>
          <!-- /.box -->
       
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->


     
   

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
<?php $this->load->view('include_pages_admin/modals');?>

<!--page scripts -->


<!-- footer scripts -->
<?php $nows = date('Y-m-d H:i:s');?>
<script src="<?php echo site_url();?>assets/dist/js/generalscripts.js"></script>

<!-- page script -->
<script>

  $(document).ready(function() {


     //setHeader()
     $('.datatablelogs').DataTable( {
        'ordering'    : false,
        "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
        'paging'      : true,
        'info'        : true,
        dom: 'Bfrtip',
        /*buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ],*/

        buttons: [
            {
              extend: 'pdfHtml5',
              title: 'Log Report  ',
              customize: function(doc) {
                //setHeader2();
                doc.styles.title = {
                  color: '',
                  fontSize: '40',
                  background: '',
                  alignment: 'center'
                }   
              }  
            },

             {
               extend: 'excelHtml5',
               title: 'Log Report',
  
            },

            {
               extend: 'csvHtml5',
               title: 'Log Report',
               
            },

                ]
            } );
  } );



function setHeader() {
        $tr = $('<tr>');
        $tr.append($('<th>').text("Name"));
        $tr.append($('<th>').text("Position"));
        $tr.append($('<th>').text("Office"));
        $tr.append($('<th>').text("Age"));
        $tr.append($('<th>').text("Start date"));
        $tr.append($('<th>').text("Salary"));
        
        $tr.appendTo('#example thead');
    }

function setHeader2() {
        $tr = $('<tr>');
        $tr.append($('<th>').text("Names"));
        $tr.append($('<th>').text("Positions"));
        $tr.append($('<th>').text("Offices"));
        $tr.append($('<th>').text("Ages"));
        $tr.append($('<th>').text("Start dates"));
        $tr.append($('<th>').text("Salarys"));
        
        $tr.appendTo('#example thead');
    }
     

</script>


</body>
</html>
