<?php 
  $count_appointment_pending = $this->appointment_management->count_appointment_pending();
  foreach ($count_appointment_pending as $cap) {
        $cap = $cap->count_all;
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
       
        <li><a href="<?php echo site_url()?>Staff/Pos"><i class="fa fa-dashboard"></i> <span>POS</span></a></li>
       <li><a href="<?php echo site_url()?>Staff/Appointments"><i class="fa fa-calendar"></i> <span>Appointment</span>
                 <?php if($cap == 0){  //echo $cap;?>     
                    <?php  }else{ ?>
                    <span class="badge label-danger">
                     <?php echo $cap; ?>
                      </span>  
                   <?php }?>  
       </a></li>

        <li><a href="<?php echo site_url()?>Staff/Customers"><i class="fa fa-user"></i> <span>Customer</span></a></li>

        <li><a href="<?php echo site_url()?>Staff/Pets"><i class="fa fa-firefox"></i> <span>Pet</span></a></li>
        
       
        
        
       
       <!-- <li class="treeview">
          <a href="#">
            <i class="fa fa-th"></i>
            <span>Product</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">      
            <li><a href="<?php echo site_url()?>staff/items"><i class="fa fa-circle-o"></i> Items</a></li>
            <li><a href="<?php echo site_url()?>staff/foods"><i class="fa fa-circle-o"></i> Foods</a></li>
            <li><a href="<?php echo site_url()?>staff/medicines"><i class="fa fa-circle-o"></i> Medicine</a></li>
          </ul>
        </li>
       -->
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>