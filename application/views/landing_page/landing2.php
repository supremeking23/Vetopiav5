<?php 
	foreach($settings_content as $contents){
		$aboutus = $contents->aboutus_content;
		$service = $contents->service_content;
		$clinic_email = $contents->clinic_email_address;
		$clinic_address = $contents->clinic_home_address .' '. $contents->clinic_barangay_address .' '. $contents->clinic_city_address;
		$postal_id = $contents->clinic_postal_id;
	}

?>


<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Vetopia</title>
	<link rel="stylesheet" href="<?php echo site_url()?>assets/dist/css/bootstrap.min.css">
	<script src="<?php echo site_url()?>assets/dist/js/jquery-3.2.1.min.js"></script>
	<script src="<?php echo site_url()?>assets/dist/js/popper.min.js"></script>
	<script src="<?php echo site_url()?>assets/dist/js/bootstrap.min.js"></script>
	<!--<script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script> -->
	<link href="<?php echo site_url()?>assets/dist/css/font-awesome.min.css" rel="stylesheet">
	<link href="<?php echo site_url()?>assets/dist/css/style.css" rel="stylesheet">
	  <link rel="shortcut icon" href="<?php echo site_url(); ?>assets/site_images/logo3.png">
</head>
<body>

<!-- Navigation -->
	<nav class="navbar navbar-expand-md navbar-light bg-light sticky-top" style="">
		<div class="container-fluid">
				<a class="navbar-brand" href="#">Vetopia</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarResponsive">
						<ul class="navbar-nav ml-auto">
							<li class="nav-item active">
								<a class="nav-link" href="#slides">Home</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="#about">About</a>
							</li>
							
							<li class="nav-item">
								<a class="nav-link" href="#team">Team</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="#services">Services</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="<?php echo site_url()?>login">Sign In</a>
							</li>
						</ul>
				</div>
		</div>
	</nav>




                        <?php
                           // for carousel slides only
                            $connect = mysqli_connect("localhost", "root", "", "vetopia_db");
                            function make_query($connect)
                            {
                             $query = "SELECT * FROM tbl_bannerimages ORDER BY bannerimage_id ASC";
                             $result = mysqli_query($connect, $query);
                             return $result;
                            }

                            function make_slide_indicators($connect)
                            {
                             $output = ''; 
                             $count = 0;
                             $result = make_query($connect);
                             while($row = mysqli_fetch_array($result))
                             {
                              if($count == 0)
                              {
                               $output .= '
                               <li data-target="#slides" data-slide-to="'.$count.'" class="active"></li>
                               ';
                              }
                              else
                              {
                               $output .= '
                               <li data-target="#slides" data-slide-to="'.$count.'"></li>
                               ';
                              }
                              $count = $count + 1;
                             }
                             return $output;
                            }






function make_slides($connect)
{
 $output = '';
 $count = 0;
 $result = make_query($connect);
 while($row = mysqli_fetch_array($result))
 {
  if($count == 0)
  {
   $output .= '<div class="carousel-item active">';
  }
  else
  {
   $output .= '<div class="carousel-item">';
  }
  $output .= '
  						<img src= "'.site_url().'assets/images/site_images/'.$row["banner_image"].'" alt="'.$row["banner_caption_heading"].'" />
						<div class="carousel-caption">
							<h1 class="display-2">'.$row["banner_caption_heading"].'</h1>
							<h3>'.$row["banner_caption"].'</h3>
							
						</div>
  </div>
  ';
  $count = $count + 1;
 }
 return $output;
}

?>

<!--- Image Slider -->
	<div id="slides" class="carousel slide" data-ride="carousel" >
            <ul class="carousel-indicators" style="color: black">
                <?php echo make_slide_indicators($connect); ?>
            </ul>
			<div class="carousel-inner">
				<?php echo make_slides($connect); ?>
				
			</div>
	</div>

<!--- Jumbotron -->

<br >
<br>


<!--- Two Column Section -->
<div class="container-fluid padding" id="about">
	<div class="row padding">
		<div class="col-lg-6">
				<h1>About Us</h1>
				<?php echo $aboutus;?>
		<br>
		<!--<a href="#" class="btn btn-primary">Learn More</a> -->
		</div>
		<div class="col-lg-6">
			<img src="<?php echo site_url()?>assets/images/site_images/carousel-stateoftheart.jpg" class="img-fluid">
		</div>
	</div>
</div>

<hr class="my-4">


<!--- Meet the team -->
<div class="container-fluid padding" id="team">
	<div class="row welcome text-center">
		<div class="col-12">
			<h1 class="display-4">Meet the Team</h1>
		</div>
		<hr>
	</div>
</div>

<!--- Cards -->
<div class="container-fluid padding">
	<div class="row padding">
		

	<?php foreach($veterinarians as $vets):?>
		<div class="col-md-4">
			<div class="card">
					<img class="card-img-top" src="<?php echo site_url()?>assets/images/profiles/<?php echo $vets->profile?>">
					<div class="card-body">
						<h4 class="card-title">Dr. <?php echo $vets->firstname .' '.  $vets->lastname;?></h4>
						<p class="card-text">
							<?php echo  $vets->vetbio;?>
						</p>
						<!--<button type="button" class="btn btn-outline-secondary">Read More</button> -->
					</div>
			</div>
		</div>

	<?php endforeach;?>
	</div>
</div>

<!--- Two Column Section -->

<hr class="my-4">
<!--- Connect -->
<div class="container-fluid padding" id="services">
	<div class="row padding">
		<div class="col-lg-3">
			<img src="<?php echo site_url()?>assets/images/site_images/vs.png" class="img-fluid">
		</div>
		<div class="col-lg-9">
				<h1>Our Services</h1>
				<?php echo $service;?>
		<br>
		<!--<a href="#" class="btn btn-primary">Learn More</a> -->
		</div>
		
	</div>

</div>

<!--- Footer -->
<footer>
		<div class="container-fluid padding">
				<div class="row text-center">
						<div class="col-md-4">
								<h1>Vetopia</h1>
								<hr class="light">
								<p>555-555-555</p>
								<p><?php echo $clinic_address?>, <?php echo $postal_id;?></p>
								
								
						</div>
						<div class="col-md-4">
								<hr class="light">
								<h5>The Staffs</h5>
								<hr class="light">
							<?php foreach($staffs as $staff):?>
								<p><?php echo $staff->firstname;?> <?php echo $staff->lastname;?> </p>
								
							<?php endforeach;?>
						</div>
						<div class="col-md-4">
								<hr class="light">
								<h5>Service Area</h5>
								<hr class="light">
								<p><?php echo $clinic_address?>, <?php echo $postal_id;?></p>
						</div>
						<div class="col-12">
							<hr class="light-100">
							<h5>&copy;vitopia.com</h5>
						</div>
				</div>
		</div>
</footer>

</body>
</html>
