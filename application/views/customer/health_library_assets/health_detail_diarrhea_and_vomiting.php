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
        <small>Diarrhea and Vomiting: First Aid</small>
      </h1>
    
    </section>

    <!-- Main content -->
    <section class="content">
   
    
      <div class="row">
        <div class="col-md-12">
         
          <p>

</p><div class="HideFromPerl"><img title="Diarrhea and vomiting" style="margin: 5px; width: 201px; height: 130px; float: right;" src="<?php echo site_url()?>assets/images/library/716176.gif" documentid="0" tabletype="20" ordinal="1" fileid="716176" subdocfilerepositoryid="19523763" width="198" height="128"></div>
<p>Diarrhea is the frequent evacuation of watery stools. Vomiting is the forceful expulsion of stomach contents through the mouth.</p>
<p><strong>What to Do</strong></p>
<ul>
<li>Remove all food and water.&nbsp;</li>
<li>Check for signs of dehydration.&nbsp;</li>
<li>If the diarrhea and/or vomiting continues or the pet acts ill, seek veterinary attention. Diarrhea and vomiting can quickly lead to serious fluid loss and electrolyte imbalance, especially in very young and very old animals.&nbsp;&nbsp;</li>
<li>If no vomiting occurs for 6 to 8 hours, begin to frequently give small amounts of clear liquids (water, Gatorade, Pedialyte, or other electrolyte solution). A rule of thumb is to give 1 teaspoon per pound of body weight every 2 or 3 hours throughout the day and night.&nbsp; If your pet does not vomit the fluid, the following day offer small frequent meals of boiled hamburger and rice or boiled chicken and rice. If your pet does not want to eat, starts to vomit, or continues to have diarrhea, go to the veterinarian for medical care.</li>
<li>Isolate the sick pet from other pets.</li>
</ul>
<p><strong>What NOT to Do</strong></p>
<ul>
<li>Do not administer any over-the-counter or prescription medications to your pet without talking to a veterinarian first.&nbsp;&nbsp;</li>
<li>Do not allow the pet to eat or drink anything until there has been no vomiting for 6 to 8 hours.</li>
</ul>
<p>Vomiting and diarrhea are associated with a host of problems that are referred to collectively as gastroenteritis. Some cases are quite severe (e.g., poisoning), and some are not (e.g., dietary indiscretion). If fever is present, infection may be a cause. Most infections that cause diarrhea and vomiting are contagious, so it is wise to assume that other pets might be vulnerable if they are exposed.&nbsp;</p>
<p>If your pet is not feeling well and has vomiting and/or diarrhea, see a veterinarian.</p>
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
