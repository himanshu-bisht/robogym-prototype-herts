<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/statics/bootstrap/css/bootstrap.css');?>">
  <script src='assets/statics/bootstrap/js/bootstrap.min.js'></script>
	<style>
	#nav { font-family: Arial; font-size: 14px; width: 100%; float: left; margin: 0 0 1em 0; padding: 0; list-style: none;}
	#nav {list-style: none; border:0;}
	#rightnav { list-style: none; }
	#nav li { float: left; }
	#rightnav li { float: right; }
	#nav li a { margin: 0 3px 0 0; font-size: 15px; display: block; padding: 8px 15px; text-decoration: none; color: #000; background-color: #f2f2f2; border: 1px solid #c1c1c1;}
	#nav li a:hover {background-color: #f2e4d5;}
	#nav a:link, a:visited {border-radius: 12px 12px 12px 12px; }
	</style>
</head>
<body>
<!-- <body> -->
<!-- THIS IS WHERE CUSTOM CODE GOES-->

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <!-- <a class="navbar-brand" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button> -->

  <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
			<li class="nav-item active">
        <a class="nav-link" href='<?php echo site_url('main/GymMember')?>'>Members</a>
      </li>
			<li class="nav-item active">
        <a class="nav-link" href='<?php echo site_url('main/GymCard')?>'>Cards</a>
      </li>
			<li class="nav-item active">
        <a class="nav-link" href='<?php echo site_url('main/GymGoals')?>'>Goals</a>
      </li>
			<li class="nav-item active">
        <a class="nav-link" href='<?php echo site_url('main/IndividualGymGoals')?>'> Individual Gym Goals</a>
      </li>
			<!-- <li class="nav-item active">
				<a class="nav-link" href='<?php echo site_url('main/blank')?>'>Blank Page</a>
			</li>
			<li class="nav-item active">
				<a class="nav-link" href='<?php echo site_url('main/querynav')?>'>Queries</a>
			</li> -->
		</ul>
		<ul class="nav navbar-nav navbar-right">
					<li class="nav-item active">
		        <a class="btn btn-danger" href='<?php echo site_url('User/logout')?>'> Logout</a>
		      </li>
				</ul>
  </div>
</nav>	
<!-- ORIGINAL -->
</body>
</html>
