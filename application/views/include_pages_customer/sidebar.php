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
        <li><a href="<?php echo site_url()?>customer/request_appointment"><i class="fa fa-calendar"></i> <span>Request Appointment</span></a></li>
        <li><a href="<?php echo site_url()?>customer/my_pets"><i class="fa fa-dashboard"></i> <span>My Pets</span></a></li>
        <li><a href="<?php echo site_url()?>customer/pet_health_library"><i class="fa fa-book"></i> <span>Pet Health Library</span></a></li>

        
        
       
        <li><a href="<?php echo site_url()?>customer/purchase_history"><i class="fa  fa-opencart"></i> <span>Purchase History</span></a></li>

       
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>