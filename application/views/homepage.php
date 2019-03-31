<DOCTYPE html>
<html lang="en" dir="ltr">
<html>

<head>
<title>RoboGym Website</title>

</head>
    <body>
      <!---NavigarionBar---->
      <section id="nav-bar">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" >RoboGym</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#slider">Top <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#about">About Us</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#services">Services</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#team">Team Members</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#price">Price Plan</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#testimonials">Testimonials</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<?php echo site_url('User/login')?>" >Sign In</a>
      </li>
    </ul>
  </div>
</nav>



      </section>
<!---Slider------->

      <div id="slider">
        <div id="headerSlider" class="carousel slide" date-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#headerSlider" data-slide-to="0" class="active"></li>
            <li data-target="#headerSlider" data-slide-to="1"></li>
            <li data-target="#headerSlider" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img src="<?php echo base_url('assets/images/Gym1.jpg');?>" class="d-block img-fluid" >
            <div class="carousel-caption">
              <h5>Imagine It</h5>
            </div>
            </div>
            <div class="carousel-item">
              <img src="<?php echo base_url('assets/images/Gym2.jpeg');?>" class="d-block img-fluid" >
            <div class="carousel-caption">
              <h5>Try It</h5>
            </div>
          </div>
            <div class="carousel-item">
              <img src="<?php echo base_url('assets/images/Gym3.jpeg');?>" class="d-block img-fluid" >

            <div class="carousel-caption">
              <h5>Love It</h5>
            </div>
            </div>
          </div>
          <a class="carousel-control-prev" href="#headerSlider" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#headerSlider" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
      </div>

      <!---About------>
  <section id="about">
  <class="row">
  <div class="container"></div>
  <div class="col-md-6">
  <h2>About Us</h2>
  <div class="about-content">
    We are RoboGym We are best gym ever

</div>
<button type="button" class="btn btn-primary">Read More</button>

</div>
  <div class="col-md-6 skills-bar">
    <p>Adobe Photoshop</p>
    <div class="progress">
    <div class="progress-bar" style="width:80%">80%</div>
    </div>
    <p>UI Design</p>
    <div class="progress">
    <div class="progress-bar" style="width:85%">85%</div>
    </div>
    <p>Word Press</p>
    <div class="progress">
    <div class="progress-bar" style="width:75%">75%</div>
  </div>
    <p>Graphics Designing</p>
    <div class="progress">
    <div class="progress-bar" style="width:70%">70%</div>
  </div>
  </div>

      </section>
<!---Services----->
<section id="services">
  <div class="container">
    <h1>Our Services</h1>
    <div class="row services">
      <div class="col-md-3 text-center">
        <div class="icon">
        <i class="fa fa-music"></i>
        </div>
        <h3>Nice Music</h3>
        <p>
        Give you Power
        </p>

      </div>
      <div class="col-md-3 text-center">
        <div class="icon">
        <i class="fa fa-thermometer-full"></i>
        </div>
        <h3>Nice Temperature</h3>
        <p>
        Enjoy here
        </p>

      </div>
      <div class="col-md-3 text-center">
        <div class="icon">
        <i class="fa fa-shower"></i>
        </div>
        <h3>Do exercise</h3>
        <p>
        Free shower
        </p>

      </div>
      <div class="col-md-3 text-center">
        <div class="icon">
        <i class="fa fa-beer"></i>
      </div>
      <h3>Relax Bar</h3>
        <p>
        Relax after work out
        </p>

      </div>
    </div>
  </div>
</section>
<!---Team Members ---->
<section id="team">
  <div class="container">
    <h1>Our Team</h1>
    <div class="row">
    <div class="col-mad-3 profile-pic text-center">
    <div class="img-box">
    <img src="<?php echo base_url('assets/images/name1.jpg');?>" class="img-responsive" height="250px">
    <ul>
    <a href="#"><li><i class="fa fa-facebook"></i></li></a>
    <a href="#"><li><i class="fa fa-twitter"></i></li></a>
    <a href="#"><li><i class="fa fa-linkedin"></i></li></a>
    </ul>
    </div>
       <h2>Himanshu Bisht</h2>
       <h3>Backend</h3>
    </div>
    <div class="col-mad-3 profile-pic text-center">
    <div class="img-box">
    <img src="<?php echo base_url('assets/images/name2.jpg');?>" class="img-responsive" height="250px">
    <ul>
    <a href="#"><li><i class="fa fa-facebook"></i></li></a>
    <a href="#"><li><i class="fa fa-twitter"></i></li></a>
    <a href="#"><li><i class="fa fa-linkedin"></i></li></a>
    </ul>
    </div>
       <h2>Priyanka R.Jangde</h2>
       <h3>Backend</h3>
    </div>
    <div class="col-mad-3 profile-pic text-center">
    <div class="img-box">
    <img src="<?php echo base_url('assets/images/name3.jpeg');?>" class="img-responsive" height="250px">
    <ul>
    <a href="#"><li><i class="fa fa-facebook"></i></li></a>
    <a href="#"><li><i class="fa fa-twitter"></i></li></a>
    <a href="#"><li><i class="fa fa-linkedin"></i></li></a>
    </ul>
    </div>
       <h2>Senal Dias</h2>
       <h3>Frontend</h3>
    </div>
    <div class="col-mad-3 profile-pic text-center">
    <div class="img-box">
    <img src="<?php echo base_url('assets/images/name4.jpeg');?>" class="img-responsive" height="250px">
    <ul>
    <a href="#"><li><i class="fa fa-facebook"></i></li></a>
    <a href="#"><li><i class="fa fa-twitter"></i></li></a>
    <a href="#"><li><i class="fa fa-linkedin"></i></li></a>
    </ul>
    </div>
       <h2>Zhao Zexing</h2>
       <h3>Frontend</h3>
    </div>
    </div>
   </div>
</section>
<!---Price Plans-------->
<section id="price">
  <h1>Price Plan</h1>
  <div class="row">
    <div class="col-md-3">
      <div class="single-price">
        <div class="price-head">
          <h2>By Month</h2>
          <p>£100<span>pre month</span></p>
        </div>
        <div class="price-contect">
        <ul>
          <li>free equipment</li>
          <li>1 hour yoga class</li>
        </ul>
        </div>
        <div class="price-button">
          <a class="buy-btn" href="#">Join It!</a>
        </div>
      </div>
    </div>
    <div class="col-md-3">
      <div class="single-price">
        <div class="price-head">
          <h2>By 6 Month</h2>
          <p>£100<span>pre month</span></p>
        </div>
        <div class="price-contect">
        <ul>
          <li>free equipment</li>
          <li>8 hour yoga class</li>
          <li>swimming pool</li>
        </ul>
        </div>
        <div class="price-button">
          <a class="buy-btn" href="#">Join It!</a>
        </div>
      </div>
    </div>
    <div class="col-md-3">
      <div class="single-price">
        <div class="price-head">
          <h2>By 12 Month</h2>
          <p>£100<span>pre month</span></p>
        </div>
        <div class="price-contect">
        <ul>
          <li>free equipment</li>
          <li>24 hour yoga class</li>
          <li>swimming pool</li>
          <li>free coffee everyday</li>
        </ul>
        </div>
        <div class="price-button">
          <a class="buy-btn" href="#">Join It!</a>
        </div>
      </div>
    </div>
  </div>
</section>
<!--   -Testimonial-------->
<section id="testimonials">
  <div class="container">
    <h1>Testimonials</h1>
    <p class="text-center">add something</p>
    <div class="row">
     <div class="col-md-4 text-center">
       <div class="profile">
         <img src="<?php echo base_url('assets/images/name1.jpg');?>" class="user">
         <h1>
           Like this place it make me happy
         <h1>
         <h3>Bat man  <span>
            A normal rich man </span> </h3>
       </div>
       </div>
       <div class="col-md-4 text-center">
         <div class="profile">
           <img src="<?php echo base_url('assets/images/name2.jpg');?>" class="user">
           <h1>
             Like this place it make me happy
           </h1>
           <h3>Bat man  <span>
              A normal rich man </span> </h3>
         </div>
         </div>
         <div class="col-md-4 text-center">
           <div class="profile">
             <img src="<?php echo base_url('assets/images/name4.jpeg');?>" class="user">
             <h1>
               Like this place it make me happy
             <h1>
             <h3>Bat man  <span>
                A normal rich man </span> </h3>
           </div>
           </div>
     </div>
    </div>
</div>
</section>
<script src="<?php echo base_url('js/smooth-scroll.polyfills.min.js');?>">
</script>
<script>
	var scroll = new SmoothScroll('a[href*="#"]');
</script>
</body>
</html>
