<?php 
  //notifications call.. para hindi na magulo ng sa controller
  $count_appointment_pending = $this->appointment_management->count_appointment_pending();
  foreach ($count_appointment_pending as $cap) {
        $cap = $cap->count_all;
  }


  // echo   $max_product_count;//

  foreach($theme_color as $t_color){
    $max_product_count = $t_color->max_product_count;
  }


  $half = $max_product_count/2;

  $get_count_lower_product_count =  $this->inventory_management->get_count_lower_product_count($half);
  foreach ($get_count_lower_product_count as $gclc) {
          $gclc = $gclc->count_all;
  }


  $get_count_lower_product_medicine = $this->inventory_management->get_count_lower_product_medicine($half);
  foreach ($get_count_lower_product_medicine as $gclcm) {
          $gclcm = $gclcm->count_all;
  }


  $get_count_lower_product_item = $this->inventory_management->get_count_lower_product_item($half);
  foreach ($get_count_lower_product_item as $gclci) {
          $gclci = $gclci->count_all;
  }

  $get_count_lower_product_food = $this->inventory_management->get_count_lower_product_food($half);
  foreach ($get_count_lower_product_food as $gclcf) {
          $gclcf = $gclcf->count_all;
  }

?>


 <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
                
                <?php if(empty($this->session->userdata('profile'))){?>

                      <img src="<?php echo site_url()?>assets/images/profiles/guest2.jpg" class="img-circle" alt="User Image">


                  <?php }else{ ?>

                      <img src="<?php echo site_url()?>assets/images/profiles/<?php echo $this->session->userdata('profile');?>" class="img-circle" alt="User Image">

                 <?php }?>
        </div>
        <div class="pull-left info">
          <p></p>
         
        </div>
      </div>

      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MAIN NAVIGATION</li>
       
        <li><a href="<?php echo site_url()?>Admin/Dashboard"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a></li>

         <li><a href="<?php echo site_url()?>Admin/Pos"><i class="fa fa-shopping-cart"></i> <span>POS</span></a></li>

        <li><a href="<?php echo site_url()?>Admin/Appointments"><i class="fa fa-calendar"></i> <span>Appointment</span>
                 <?php if($cap == 0){  //echo $cap;?>     
                    <?php  }else{ ?>
                    <span class="badge label-danger" data-tooltip="tooltip" title="You have <?php echo $cap?> pending appointment request" >
                     <?php echo $cap; ?>
                      </span>  
                   <?php }?>    
        </a></li>

        <li class="treeview">
          <a href="#">
            <i class="fa fa-users"></i>
            <span>User Management</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">      
            <li><a href="<?php echo site_url()?>Admin/Admins"><i class="fa fa-circle-o"></i> Admin</a></li>
            <li><a href="<?php echo site_url()?>Admin/Veterinarians"><i class="fa fa-circle-o"></i> Veterinarian</a></li>
            <li><a href="<?php echo site_url()?>Admin/Staffs"><i class="fa fa-circle-o"></i> Staff</a></li>
            <li><a href="<?php echo site_url()?>Admin/Customers"><i class="fa fa-circle-o"></i> Customer</a></li>
          </ul>
        </li>

        <li><a href="<?php echo site_url()?>Admin/Pets"><i class="fa fa-firefox"></i> <span>Pets</span></a></li>

        <li><a href="<?php echo site_url()?>Admin/Services"><i class="fa fa-server"></i> <span>Services</span></a></li>

        <li class="treeview">
          <a href="#">
            <i class="fa fa-th"></i>
            <span>Product</span>
           
       
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
               
            </span>
          </a>
          <ul class="treeview-menu">      
            <li><a href="<?php echo site_url()?>Admin/Items"><i class="fa fa-circle-o"></i> Items
             
            </a></li>
            <li><a href="<?php echo site_url()?>Admin/Foods"><i class="fa fa-circle-o"></i> Foods
                
            </a></li>
            <li><a href="<?php echo site_url()?>Admin/Medicines"><i class="fa fa-circle-o"></i> Medicines
             
            </a></li>
          </ul>
        </li>



        <li class="treeview">
          <a href="#">
            <i class="fa fa-sticky-note"></i>
            <span>Report</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">      
            <li><a href="<?php echo site_url()?>Admin/Sales"><i class="fa fa-circle-o"></i> Sales</a></li>
            <li><a href="<?php echo site_url()?>Admin/Inventory"><i class="fa fa-circle-o"></i> Inventory</a></li>
            
          </ul>
        </li>

        
         <li><a href="<?php echo site_url()?>Admin/Pet_health_care_library"><i class="fa fa-book"></i> <span>Health Care Library</span></a></li>

        <?php if($this->session->userdata('account_type') == "Super Admin"):?>


        <li><a href="<?php echo site_url()?>Admin/Logs"><i class="fa fa-sticky-note-o"></i> <span>Logs</span></a></li>

        <li><a href="<?php echo site_url()?>Admin/Settings"><i class="fa  fa-gear"></i> <span>Settings</span></a></li>


      <?php endif;?>

      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>



