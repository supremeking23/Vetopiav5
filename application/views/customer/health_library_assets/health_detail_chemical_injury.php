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
        <small>Chemical Injuries: First Aid</small>
      </h1>
    
    </section>

    <!-- Main content -->
    <section class="content">
   
    
      <div class="row">
        <div class="col-md-12">
      <p>

</p><p>Chemical injuries to tissue are caused by contact with harmful chemicals such as lye, acids, and strong cleaning supplies.&nbsp; Also called chemical burns, they can be similar to thermal (heat) burns and treatment can be complex and last many weeks. Prompt removal of the chemical agent and rapid veterinary medical attention can help minimize the injury and speed healing.</p><p><strong>What to Do</strong> </p><ul><li>Wash the contaminated area with large volumes of tepid flowing water for at least 15 minutes.&nbsp;&nbsp; </li><li>In the case of dry chemicals, brush them away carefully, taking care to protect&nbsp;the eyes, nose, and mouth of both you and your pet. </li><li>If the chemical is in the eye, flush the eye with large volumes of water or contact lens saline&nbsp; for 15 minutes. (See below for <em>saline </em>recipe.)&nbsp;&nbsp; </li><li>Seek veterinary attention as soon as possible.&nbsp; </li><li>Avoid being bitten by using a muzzle on your pet if your think there is a risk of being bitten. </li><li>Make sure the area is well ventilated as some chemicals can release strong fumes.</li></ul><p><strong>What NOT to Do</strong> </p><ul><li>Do not apply neutralizing agents to the skin or eyes. They can cause a chemical reaction that produces heat and cause further injury to tissues.&nbsp;&nbsp; </li><li>Do not immerse your pet in non-flowing water if a dry chemical has spilled on him or her. These dry chemicals are usually activated by water. The water must be flowing in order to rinse the chemical away. </li></ul><p>Pure water can be quite irritating to the eyes and raw skin. It is much more comfortable for your pet if you use <em>saline</em>: simply dissolve 2 teaspoons of table salt in one quart of water (metric: 9 grams of salt in 1 liter of water).</p>
<p>
<!-- <HR ALIGN="left" WIDTH="100%" SIZE="1" COLOR="#D7D7A7">
<BR>Copyright  2009 - 2018 by the Veterinary Information Network, Inc. All rights reserved.<BR>
<BR> -->
</p>
        </div>
      </div>


    

     

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
     
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
