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
       
        <li><a href="<?php echo site_url()?>veterinarian/appointments"><i class="fa fa-calendar"></i> <span>Appointments</span></a></li>
        <li><a href="<?php echo site_url()?>veterinarian/pets"><i class="fa fa-firefox"></i> <span>Pets</span></a></li> 
      
      <!--  <li class="treeview">
          <a href="#">
            <i class="fa fa-th"></i>
            <span>Product</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">      
            <li><a href="<?php echo site_url()?>veterinarian/items"><i class="fa fa-circle-o"></i> Items</a></li>
            <li><a href="<?php echo site_url()?>veterinarian/foods"><i class="fa fa-circle-o"></i> Foods</a></li>
            <li><a href="<?php echo site_url()?>veterinarian/medicines"><i class="fa fa-circle-o"></i> Medicine</a></li>
          </ul>
        </li>

    -->


      <li><a href="<?php echo site_url()?>veterinarian/medicines"><i class="fa fa-server"></i> <span>Medicines</span></a></li>
            <li><a href="<?php echo site_url()?>veterinarian/pet_health_care_library"><i class="fa fa-book"></i> <span>Health Care Library</span></a></li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>