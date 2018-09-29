<?php 
	foreach($settings_content as $contents){
		$aboutus = $contents->aboutus_content;
		$service = $contents->service_content;
		$clinic_email = $contents->clinic_email_address;
		$clinic_address = $contents->clinic_home_address .' '. $contents->clinic_barangay_address .' '. $contents->clinic_city_address;

		$home = $contents->clinic_home_address;
		$barangay = $contents->clinic_barangay_address;
		$city = $contents->clinic_city_address;

		$email = $contents->clinic_email_address;

		$postal_id = $contents->clinic_postal_id;
		$telephone =  $contents->telephone;
		$cellphone =  $contents->cellphone;
		$store_name = $contents->store_name;


		$about_us_picture = $contents->about_us_picture;
		$service_picture = $contents->service_picture;
		$clinic_name = $contents->store_name;
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
	<script src="<?php echo site_url()?>assets/dist/js/scroll2Section.js"></script>
	<!--<script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script> -->
	<link href="<?php echo site_url()?>assets/dist/css/font-awesome.min.css" rel="stylesheet">
	<link href="<?php echo site_url()?>assets/dist/css/style.css" rel="stylesheet">
	  <link rel="shortcut icon" href="<?php echo site_url(); ?>assets/site_images/logo3.png">


<style type="text/css">
	.text-block {
    position: absolute;
    bottom: 20px;
    right: 20px;
    background-color: rgba(255,255,255,0.5);
    color: white;
    padding-left: 20px;
    padding-right: 20px;
    width: 550px;
}



/* Top left text */
.top-left {
    position: absolute;
    top: 8px;
    left: 16px;
    background-color: rgba(255,255,255,0.5);
    color: black;
    padding-left: 20px;
    padding-right: 20px;
    width: 530px
}

.navbar-expand-md .navbar-collapse .navbar-nav .active {
  font-weight: 700;
  color: #EEC856;
  background: transparent;
  border-bottom: 4px solid #EEC856;
  text-shadow: none;
  /*sticky-top*/
}

.nav-link .active{
  font-weight: 700;
  color: #EEC856;
  background: transparent;
  border-bottom: 4px solid #EEC856;
  text-shadow: none;	
}



</style>
</head>
<body data-spy="scroll" data-target="#navbar-site" data-offset="120">
	<style>
		body{
			position: relative;
			padding-top:70px;
		}
	</style>

<!-- Navigation -->
	<nav id="navbar-site" class="navbar navbar-expand-md navbar-light bg-light fixed-top" style="">
		<div class="container-fluid">
				<a class="navbar-brand" data-section href="#!slides"><?php echo $store_name?></a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarResponsive">
						<ul class="navbar-nav ml-auto">
							<li class="nav-item">
								<a class="nav-link"   href="#slides" >Home</a>
							</li>
							<li class="nav-item">
								<a class="nav-link"  href="#about" >About</a>
							</li>
							
							<li class="nav-item">
								<a class="nav-link"  href="#team" >Team</a>
							</li>
							<li class="nav-item">
								<a class="nav-link"  href="#services" data-anchor="services">Services</a>
							</li>
							<li class="nav-item">
								<a class="nav-link"  href="#article" >Pet Health Care Library</a>
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
   $output .= '<div class="carousel-item ">';
  }
  $output .= '
  						<img src= "'.site_url().'assets/images/site_images/'.$row["banner_image"].'" alt="'.$row["banner_caption_heading"].'" />
						<div class="top-left d-none d-md-block">
							<h2 class="">'.$row["banner_caption_heading"].'</h2>
							'.$row["banner_caption"].'
						</div>
  </div>
  ';
  $count = $count + 1;
 }
 return $output;
}

//<h3 class="display-2 text-center">'.$row["banner_caption_heading"].'</h>
							//<h3>'.$row["banner_caption"].'</h3>

?>

<!--- Image Slider -->
	<div id="slides" class="carousel slide" data-ride="carousel" style="">
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
			<img src="<?php echo site_url()?>assets/images/site_images/<?php echo $about_us_picture?>" class="img-fluid">
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
					<?php if(empty($vets->profile)){?>
					<img class="card-img" src="<?php echo site_url()?>assets/images/profiles/guest2landing.jpg">
					<?php }else{ ?>
						<img class="card-img" src="<?php echo site_url()?>assets/images/profiles/<?php echo $vets->profile?>">
					<?php }?>
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
			<img src="<?php echo site_url()?>assets/images/site_images/<?php echo $service_picture?>" class="img-fluid">
		</div>
		<div class="col-lg-9">
				<h1>Our Services</h1>
				<?php echo $service;?>
		<br>
		<!--<a href="#" class="btn btn-primary">Learn More</a> -->
		<p>The following are the veterinary pet services offered at the <?php echo $clinic_name?></p>
		<ul>
			<?php foreach($get_all_pet_services_active as $services):?>
				<li><?php echo $services->service_name;?></li>
			<?php endforeach;?>
		</ul>
		</div>
		
	</div>

</div>






<hr class="my-4">
<!--- Connect -->
<div class="container-fluid padding" id="article">
	<div class="row welcome text-center">
		<div class="col-12">
			<h1 class="display-4">Pet Health Care Library</h1>
		</div>
		<hr>
	</div>

</div>


<!--- Cards -->
<div class="container-fluid padding">
	<div class="row padding">
		

	<?php foreach($articles as $article):?>
		<div class="col-md-4">
			<div class="card">
					
						<img class="card-img" height="500" widht="300" src="<?php echo site_url()?>assets/images/library/<?php echo $article->article_image;?>">
			
					<div class="card-body">
						<h4 class="card-title"><?php echo $article->title;?> <br /><small>By: Dr. <?php echo $article->created_by;?></small></h4>
						<p class="card-text">
						</p>
						<button type="button" class="btn btn-outline-secondary" data-toggle="modal" data-target="#readArticle<?php echo $article->library_id;?>">Read More</button> 
				     

				        <div class="modal fade" id="readArticle<?php echo $article->library_id;?>">
				          <div class="modal-dialog modal-lg">
				            <div class="modal-content ">
				              <div class="modal-header">
				                
				                <h4 class="modal-title"><?php echo $article->title;?> </h4>
				                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				              </div>
				              <div class="modal-body">
				                <div class="row">
				                	<div class="col-md-12">
				                		<img class="card-img-top " height="500" widht="300" src="<?php echo site_url()?>assets/images/library/<?php echo $article->article_image;?>">
				                		
				                	</div>

				                	<div class="col-md-12">
				                		<p class="">
				                			<?php $find_article_content_by_library_id = $this->article_model->find_article_content_by_library_id($article->library_id);

				                			foreach($find_article_content_by_library_id as $content){
				                				echo $content->article_contents;
				                			}
				                			?>

				                		</p>
				                	</div>
				                	
				                </div>
				              </div>
				              <div class="modal-footer">
				                <button type="button" class="btn btn-default pull-left btn-sm btn-flat" data-dismiss="modal">Close</button>
				               
				              </div>
				            </div>
				            <!-- /.modal-content -->
				          </div>
				          <!-- /.modal-dialog -->
				        </div>
				        <!-- /.modal -->						
					</div>
			</div>
		</div>

	<?php endforeach;?>
	</div>
</div>

<!--- Footer -->
<footer>
		<div class="container-fluid padding">
				<div class="row text-center">

						<div class="col-md-4">
								<hr class="light">
								<h5>The Staffs</h5>
								<hr class="light">
							<?php foreach($staffs as $staff):?>
								<p><?php echo $staff->firstname;?> <?php echo $staff->lastname;?> </p>
								
							<?php endforeach;?>
						</div>
						<div class="col-md-4">
								<h1><?php echo ucfirst($store_name);?></h1>
								<hr class="light">
								<p><?php echo $home?> <br /><?php echo $barangay?>
								<?php echo $city?> ,<?php echo $postal_id;?> 
								</p>

								
								
						</div>						
						<div class="col-md-4">
								<hr class="light">
								<h5>Contact Information</h5>
								<hr class="light">
								<p>Telephone No. : <?php echo $telephone;?></p>
								<!--<p>Email: <?php echo $email?></p> -->
								<p>Cellphone No. : <?php echo $cellphone?></p>
						</div>
						<div class="col-12">
							<hr class="light-100">
							<h5>&copy;vitopia.com</h5>
						</div>
				</div>
		</div>
</footer>



<script>
	$("section").scroll2Section({menu:'nav',offsetTop:56}).on('update',function(event,element){
			var href = $(element).attr('href');
			//href.css('background','red');
			
		});


</script>
</body>
</html>
