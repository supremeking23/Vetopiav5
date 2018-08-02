<?php foreach($theme_color as $t_color){

  $skin_color = $t_color->theme_color;
  $settings_id =$t_color->settings_id;

}?>

<!DOCTYPE html>
<html>

<?php $this->load->view('include_pages_customer/page_header');?>
<style type="text/css">
  a {
    padding-left: 5px;
    padding-right: 5px;
    margin-left: 5px;
    margin-right: 5px;
  }
</style>

<body class="hold-transition <?php echo $skin_color;?> sidebar-mini" id="pethealthlibrary">
<div class="wrapper">


  <?php $this->load->view('include_pages_customer/document_header');?>
 
  <?php $this->load->view('include_pages_customer/sidebar');?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       Pet Health Library
        
      </h1>
    
    </section>

    <!-- Main content -->
    <section class="content">
   
      <div class="row">
        <div class="col-md-12">
            <!-- Search form (start) -->
          <form method='post' action="<?= site_url() ?>customer/load_library" >
            <div class="col-md-3">
              <input type='text' class="form-control" placeholder="Search for Keywords" name='search' value='<?= $search ?>'>
            </div>
            <div class="col-md-3">
              <input type='submit' name='submit' class="btn btn-success btn-flat btn-sm" value='Search'>
            </div>
            
          </form>
          <br/>
        </div>
      </div>

      <br />

      <div class="row">
        <div class="col-md-12">
          
              <!-- Posts List -->
          <table  class="table table-bordered table-striped" width='100%' style='border-collapse: collapse;'>
            <tr>
            
              <th>Title</th>
              <th>Content</th>
            </tr>
            <?php 
            $sno = $row+1;
            foreach($result as $data){

              $content = substr($data['content'],0, 100)." ...";
              echo "<tr>";
              
              echo "<td><a href='".site_url()."customer/health_detail/".$data['library_id']."' target='_blank'>".$data['title']."</a></td>";
              echo "<td>".$content."</td>";
              echo "</tr>";
              $sno++;

            }
            if(count($result) == 0){
              echo "<tr>";
              echo "<td colspan='3'>No record found.</td>";
              echo "</tr>";
            }
            ?>
          </table>


                <!-- Paginate -->
        <div style='margin-top: 10px;'>
          <?= $pagination; ?>
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


<!--page scripts -->


<!-- footer scripts -->

<script src="<?php echo site_url();?>assets/dist/js/generalscripts.js"></script>

<!-- page script -->
<script>

  

     

</script>


</body>
</html>
