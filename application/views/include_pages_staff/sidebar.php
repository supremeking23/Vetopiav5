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
       
        <li><a href="<?php echo site_url()?>staff/pos"><i class="fa fa-dashboard"></i> <span>POS</span></a></li>
       <li><a href="<?php echo site_url()?>staff/appointments"><i class="fa fa-calendar"></i> <span>Appointment</span></a></li>

        <li><a href="<?php echo site_url()?>staff/customers"><i class="fa fa-user"></i> <span>Customer</span></a></li>

        <li><a href="<?php echo site_url()?>staff/pets"><i class="fa fa-firefox"></i> <span>Pet</span></a></li>
        
       
        
        
       
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