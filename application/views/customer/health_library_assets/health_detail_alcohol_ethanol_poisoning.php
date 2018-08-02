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
        <small>Alcohol (Ethanol) Poisoning</small>
      </h1>
    
    </section>

    <!-- Main content -->
    <section class="content">
   
    
      <div class="row">
        <div class="col-md-12">
     <p>

</p><p>Dogs and cats can get more than just drunk when they drink alcoholic beverages -- they can get a trip to the emergency room. Pets can die from alcohol ingestion.</p><p>Alcoholic drinks contain a lot of ethanol (ethyl alcohol, grain alcohol). Typical alcohol percentages for alcoholic beverages are: beer at 3% to 5% ethanol, wine at 9% to 12%, and whiskey at 40% to 90%. By reading the label on the bottle, you can tell what the alcohol concentration is; “proof” is equal to twice the percentage concentration (80 proof is 40 percent alcohol).</p><p>All poisoning problems boil down to the amount (dosage) of alcohol ingested compared to weight. Thus, when pets drink a person's alcoholic beverage that was left within reach, or that was given to them intentionally by someone, it can cause a significant toxicity problem. Within 15 to 30 minutes after the pet has drunk the alcohol on an empty stomach (or within 1 to 2 hours on a full stomach), central nervous system signs (such as staggering, excitement, or decreased reflexes) can begin. Behavioral changes can be seen, as can an increased need to urinate. As the problem gets worse, the pet may become depressed, have a slow respiratory rate, or go into cardiac arrest. Puppies and kittens are at particular risk because of their small size and immature organ systems. </p><p>But beverages are not the only concern. Accidental alcohol poisoning can occur if a pet gets into certain types of medications, because ethanol is frequently used as a solvent in medications. And fermented products, such as bread dough, can also be a problem. Ethanol toxicity is seen more often in dogs than in cats because dogs are more likely to steal food and drink reserved for their owners.</p><p>To diagnose alcohol poisoning, a veterinarian will run some blood tests. The only test that offers a definitive diagnosis is a blood ethanol concentration test, although other blood chemistry parameters may indicate the possibility of alcohol poisoning.</p><p>Emergency treatment is necessary for affected pets. If the respiratory rate is depressed, ventilation or some type of respiratory support may be needed. Activated charcoal is usually given as soon as possible after ingestion, to soak up the poison. Intravenous (IV) fluid therapy is usually given to improve fluid and electrolyte levels, acidosis, and hypoglycemia. For pets who go into cardiac arrest, cardiac care is given.</p><p>If the animal is going to recover from alcohol poisoning, recovery will usually be seen within 8 to 12 hours or so. Prevention is, however, best. Be aware of the potential problem and keep alcoholic beverages and medications out of your pets' reach. If you suspect your pet has ingested any form of alcohol, contact a veterinarian immediately.<br></p>
<p>
<!-- <HR ALIGN="left" WIDTH="100%" SIZE="1" COLOR="#D7D7A7">
<BR>Copyright  2010 - 2018 by the Veterinary Information Network, Inc. All rights reserved.<BR>
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
