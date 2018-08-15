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
        <small>Dehydration: First Aid</small>
      </h1>
    
    </section>

    <!-- Main content -->
    <section class="content">
   
    
      <div class="row">
        <div class="col-md-12">
         
        <p>

</p><p>Dehydration is excessive loss of water from the body (typically through vomiting and/or diarrhea) or inappropriate intake of water into the body (decreased thirst).&nbsp; The most common mistake with a vomiting pet is to encourage food and water intake while the pet is still vomiting. This actually makes matters worse by not allowing the stomach and intestinal tract time to rest, and can cause additional vomiting and water loss. Removing access to food and water for a short period of time may seem like it would make dehydration worse, but it can help your pet avoid further dehydration. Dehydration makes your pet feel lethargic, and can potentially cause severe problems with the kidneys and other internal organs if untreated.</p>
<p><strong>What to Do</strong></p>
<ul>
<li>If moderate or severe dehydration, seek veterinary attention.&nbsp; (See below for how to assess if dehydration is potentially severe in your pet.)&nbsp;</li>
<li>If dehydration is mild and the pet is not vomiting, give frequent, small amounts of water by mouth; that means in the range of 1 tsp for a cat or small dog to 1 tbsp to 1/4 cup for a medium to large dog every few hours.</li>
<li>If your pet is lethargic, in pain, or has not eaten for 24 hours, seek veterinary attention.</li>
</ul>
<p><strong>What NOT to Do</strong></p>
<ul>
<li>Do not allow your pet to have immediate free access to large amounts of water or other liquid.&nbsp;&nbsp;</li>
<li>Do not feed your pet any dry food until directed to do so by a veterinary professional.</li>
</ul>
<p>Dehydration often accompanies symptoms like vomiting, diarrhea, hypothermia (low body temperature), fever, no access to water, and other conditions. It can be detected by several tests: <br><br><em>Mouth</em>: Are the tongue and gums moist or dry? If they are dry, there is a chance your pet may be dehydrated. Is the saliva thick or ropey? Normally, saliva is quite watery and hardly noticeable.</p>
<p><em>Eyes:</em> Are they normal, or do they sink into the sockets? Sunken or dry eyes may indicate dehydration, and warrant veterinary attention.</p>
<p><em>Skin:</em> Do the skin turgor test outlined in the Physical Exam Checklist. If the skin is slow to return to position, the pet may be moderately to severely dehydrated. If the skin does not return fully to its position, your pet may be severely dehydrated and may be in critical condition. Seek veterinary attention immediately. The <a href="http://www.veterinarypartner.com/Content.plx?P=A&amp;S=0&amp;C=0&amp;A=292&amp;EVetID=900000083" target="_blank">skin turgor test</a> is not always accurate and several factors such as age, weight loss and condition of the skin can give misleading results. A veterinary professional can help you determine how dehydrated your pet is, what the cause may be, and the best course of treatment.</p>
<p>
<!-- <HR ALIGN="left" WIDTH="100%" SIZE="1" COLOR="#D7D7A7">
<BR>Copyright  2018 - 2018 by the Veterinary Information Network, Inc. All rights reserved.<BR>
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
