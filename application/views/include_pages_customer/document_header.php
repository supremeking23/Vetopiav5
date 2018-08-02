  <header class="main-header">
    <!-- Logo -->
    <a href="index2.html" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><?php echo  $title;?></span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
         <?php //$complete_name = $this->session->userdata('complete_name');?>
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              
              <?php if(empty($this->session->userdata('profile'))){?>
             
                <img src="<?php echo site_url()?>assets/images/profiles/guest2.jpg" class="user-image" alt="User Image">

              <?php }else{ ?>
                  <img src="<?php echo site_url()?>assets/images/profiles/<?php echo $this->session->userdata('profile');?>" class="user-image" alt="User Image">

                <?php }?>

              <span class="hidden-xs"> <?php echo $this->session->userdata('complete_name');?></span>

            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">


              <?php if(empty($this->session->userdata('profile'))){?>

                 <img src="<?php echo site_url()?>assets/images/profiles/guest2.jpg" class="img-circle" alt="User Image">

                 <?php }else{ ?>

                <img src="<?php echo site_url()?>assets/images/profiles/<?php echo $this->session->userdata('profile');?>" class="img-circle" alt="User Image">


                <?php }?>

                <p>
                  <?php echo $complete_name = $this->session->userdata('complete_name');?>
                  <small></small>
                </p>
              </li>
              <!-- Menu Body -->
              <li class="user-body">
               

                <!-- /.row -->
              </li>
              <!-- Menu Footer-->
                  <li class="user-footer">
                        <div class="pull-left">
                          <a href="" class="btn btn-default btn-flat">Profile</a>
                        </div>
                        <div class="pull-right">
                          <a href="<?php echo site_url()?>landing_page/sign_out" class="btn btn-default btn-flat">Sign out</a>
                        </div>
                  </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
          
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->





