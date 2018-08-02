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
        <li><a href="<?php echo site_url()?>admin/appointments"><i class="fa fa-calendar"></i> <span>Appointment</span></a></li>

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
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">      
            <li><a href="<?php echo site_url()?>admin/items"><i class="fa fa-circle-o"></i> Items</a></li>
            <li><a href="<?php echo site_url()?>admin/foods"><i class="fa fa-circle-o"></i> Foods</a></li>
            <li><a href="<?php echo site_url()?>admin/medicines"><i class="fa fa-circle-o"></i> Medicine</a></li>
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



        <?php if($this->session->userdata('account_type') == "Super Admin"):?>

        <li><a href="<?php echo site_url()?>admin/logs"><i class="fa  fa-sticky-note-o"></i> <span>Logs</span></a></li>

        <li><a href="<?php echo site_url()?>admin/settings"><i class="fa  fa-gear"></i> <span>Settings</span></a></li>


      <?php endif;?>

      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>



