<?php 
  //notifications call.. para hindi na magulo ng sa controller
  $count_appointment_pending = $this->appointment_management->count_appointment_pending();
  foreach ($count_appointment_pending as $cap) {
        $cap = $cap->count_all;
  }


  $get_count_lower_product_count =  $this->inventory_management->get_count_lower_product_count();
  foreach ($get_count_lower_product_count as $gclc) {
          $gclc = $gclc->count_all;
  }


  $get_count_lower_product_medicine = $this->inventory_management->get_count_lower_product_medicine();
  foreach ($get_count_lower_product_medicine as $gclcm) {
          $gclcm = $gclcm->count_all;
  }


  $get_count_lower_product_item = $this->inventory_management->get_count_lower_product_item();
  foreach ($get_count_lower_product_item as $gclci) {
          $gclci = $gclci->count_all;
  }

  $get_count_lower_product_food = $this->inventory_management->get_count_lower_product_food();
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
       
        <li><a href="<?php echo site_url()?>admin/dashboard"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a></li>

         <li><a href="<?php echo site_url()?>admin/pos"><i class="fa fa-shopping-cart"></i> <span>POS</span></a></li>

        <li><a href="<?php echo site_url()?>admin/appointments"><i class="fa fa-calendar"></i> <span>Appointment</span>
                 <?php if($cap == 0){  //echo $cap;?>     
                    <?php  }else{ ?>
                    <span class="badge label-danger">
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
            <li><a href="<?php echo site_url()?>admin/admins"><i class="fa fa-circle-o"></i> Admin</a></li>
            <li><a href="<?php echo site_url()?>admin/veterinarians"><i class="fa fa-circle-o"></i> Veterinarian</a></li>
            <li><a href="<?php echo site_url()?>admin/staffs"><i class="fa fa-circle-o"></i> Staff</a></li>
            <li><a href="<?php echo site_url()?>admin/customers"><i class="fa fa-circle-o"></i> Customer</a></li>
          </ul>
        </li>

        <li><a href="<?php echo site_url()?>admin/pets"><i class="fa fa-firefox"></i> <span>Pets</span></a></li>

        <li><a href="<?php echo site_url()?>admin/services"><i class="fa fa-server"></i> <span>Services</span></a></li>

        <li class="treeview">
          <a href="#">
            <i class="fa fa-th"></i>
            <span>Product</span>
             <?php if($gclc == 0){
                      //echo $cap;
                      }else{ ?>
                      <span class="badge label-danger" data-tooltip="tooltip" title="You have <?php echo $gclc?> product(s) that is in critical count" >
                       <?php  echo $gclc;?>
                      </span>  
                   <?php  }?>   
       
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
               
            </span>
          </a>
          <ul class="treeview-menu">      
            <li><a href="<?php echo site_url()?>admin/items"><i class="fa fa-circle-o"></i> Items
                <?php if($gclci == 0){
                      //echo $cap;
                      }else{ ?>
                      <span class="badge label-danger"  >
                       <?php  echo $gclci;?>
                      </span>  
                  <?php  } ?>   
            </a></li>
            <li><a href="<?php echo site_url()?>admin/foods"><i class="fa fa-circle-o"></i> Foods
                   <?php if($gclcf == 0){
                      //echo $cap;
                      }else{ ?>
                      <span class="badge label-danger"  >
                       <?php  echo $gclcf;?>
                      </span>  
                   <?php  } ?>   
            </a></li>
            <li><a href="<?php echo site_url()?>admin/medicines"><i class="fa fa-circle-o"></i> Medicines
              <?php if($gclcm == 0){
                      //echo $cap;
                      }else{ ?>
                      <span class="badge label-danger"  >
                       <?php  echo $gclcm;?>
                      </span>  
                   <?php  } ?>   
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
            <li><a href="<?php echo site_url()?>admin/sales"><i class="fa fa-circle-o"></i> Sales</a></li>
            <li><a href="<?php echo site_url()?>admin/inventory"><i class="fa fa-circle-o"></i> Inventory</a></li>
            
          </ul>
        </li>

        
         <li><a href="<?php echo site_url()?>admin/<?php echo site_url()?>admin/pet_health_care_library"><i class="fa fa-book"></i> <span>Health Care Library</span></a></li>

        <?php if($this->session->userdata('account_type') == "Super Admin"):?>


        <li><a href="<?php echo site_url()?>admin/logs"><i class="fa  fa-sticky-note-o"></i> <span>Logs</span></a></li>

        <li><a href="<?php echo site_url()?>admin/settings"><i class="fa  fa-gear"></i> <span>Settings</span></a></li>


      <?php endif;?>

      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>



