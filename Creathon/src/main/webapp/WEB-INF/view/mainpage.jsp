<!DOCTYPE html>
<html lang="en">
<head>
<title>Dazzling Delhi | Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<!-- Favicon-->
<link rel="icon" href="assets/frontimages/creathonLogo.jpg" type="image/x-icon">
<meta name="keywords"
	content="New Party Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<style>
	.dignitaries{
		background-color:white;
		 opacity: 0.6;
	}
</style>
<!-- bootstrap-css -->
<link href="assets/css/front/bootstrap.css" rel="stylesheet"
	type="text/css" media="all" />
<!--// bootstrap-css -->
<!-- css -->
<link rel="stylesheet" href="assets/css/front/style.css" type="text/css"
	media="all" />
<link href="assets/css/front/jQuery.lightninBox.css" rel="stylesheet"
	type="text/css" media="all" />
<link rel="stylesheet" href="assets/css/front/flexslider.css"
	type="text/css" media="screen" property="" />
<!-- animation -->
<link href="assets/css/front/aos.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- //animation effects-css-->
<!-- //animation -->
<!--// css -->
<!-- font-awesome icons -->
<link href="assets/css/front/font-awesome.css" rel="stylesheet">
<!-- //font-awesome icons -->
<!-- font -->
<link
	href="//fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700,800"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Galada"
	rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans"
	rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Oswald:400,500,600,700"
	rel="stylesheet">
<!-- //font -->
<script src="assets/js/front/jquery-2.2.3.min.js"></script>
<script src="assets/js/front/bootstrap.js"></script>

</head>
<body>
	<!-- w3-banner -->
	<div class="w3-banner jarallax">
		<div class="wthree-different-dot">
			<div class="head">
				<div class="container">
					<div class="navbar-top">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
							<div class="navbar-brand logo ">
								<h1>
									<a href="<%=request.getContextPath()%>/">Creathon</a>
								</h1>
								<!-- <a href="index.php"><img src="assets/frontimages/creathon.png" alt=""> </a> -->
							</div>

						</div>

						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse"
							id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav link-effect-4">
								<li class="active first-list"><a
									href="<%=request.getContextPath()%>/">Home</a></li>
								<li><a href="#about" class="scroll">About</a></li>
								<li><a href="#services" class="scroll">Services</a></li>
								<li><a href="#gallery" class="scroll">Gallery</a></li>

								<li><a href="#" class="dropdown-toggle"
									data-toggle="dropdown" role="button" aria-haspopup="true"
									aria-expanded="false"><span data-letters="Pages">More</span><span
										class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a href="#client" class="scroll">Testimonials</a></li>
										<li><a href="#pricing" class="scroll">Shooting
												Location</a></li>
										<li><a href="#team" class="scroll">Team</a></li>
										<li><a href="#event" class="scroll">Events</a></li>
										<li><a href="#book" class="scroll">Booking</a></li>
									</ul></li>
								<li><a href="login">Login / Signup</a></li>






							</ul>
						</div>
						<!-- /.navbar-collapse -->
					</div>
				</div>
			</div>
			<!-- banner -->
			<div class="banner">
				<div class="container">
					<div class="slider">

						<script src="assets/js/front/responsiveslides.min.js"></script>
						<script>
							// You can also use "$(window).load(function() {"
							$(function() {
								// Slideshow 4
								$("#slider3")
										.responsiveSlides(
												{
													auto : true,
													pager : true,
													nav : true,
													speed : 500,
													namespace : "callbacks",
													before : function() {
														$('.events')
																.append(
																		"<li>before event fired.</li>");
													},
													after : function() {
														$('.events')
																.append(
																		"<li>after event fired.</li>");
													}
												});
							});
						</script>
						<div id="top" class="callbacks_container-wrap">
							<ul class="rslides" id="slider3">
							<li>
									<div class="slider-info" data-aos="fade-left">
										<h6>Creathon Team</h6>
										<h3>Creathon</h3>
										<p>The team which works to make an impact</p>
										<div class="more-button">
											<a href="#" data-toggle="modal" data-target="#myModal">More
												Info</a>
										</div>
									</div>
								</li> 
						   <li>
									<div class="slider-info" data-aos="fade-left">
										<h6>WORK THE WAY YOU WANT</h6>
										<h3>The best user experience</h3>
										<p>Simplified work flow</p>
										<div class="more-button">
											<a href="#" data-toggle="modal" data-target="#myModal">More
												Info</a>
										</div>
									</div>
								</li>
								<li>
									<div class="slider-info" data-aos="fade-left">
										<h6>GET THE BEST SHOT THIS YEAR</h6>
										<h3>THE DAZZLING LOCATIONS</h3>
										<p>Explore the beautiful locations and make the moment memorable</p>
										<div class="more-button">
											<a href="#" data-toggle="modal" data-target="#myModal">More
												Info</a>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- //banner -->
		</div>
	</div>
	<!-- //w3-banner -->
	<!-- modal -->
	<div class="modal about-modal fade" id="myModal" tabindex="-1"
		role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">New Party</h4>
				</div>
				<div class="modal-body">
					<div class="agileits-w3layouts-info">
						<img src="assets/frontimages/g1.jpg" alt="" />
						<p>Duis venenatis, turpis eu bibendum porttitor, sapien quam
							ultricies tellus, ac rhoncus risus odio eget nunc. Pellentesque
							ac fermentum diam. Integer eu facilisis nunc, a iaculis felis.
							Pellentesque pellentesque tempor enim, in dapibus turpis
							porttitor quis. Suspendisse ultrices hendrerit massa. Nam id
							metus id tellus ultrices ullamcorper. Cras tempor massa luctus,
							varius lacus sit amet, blandit lorem. Duis auctor in tortor sed
							tristique. Proin sed finibus sem.</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //modal -->
	<div class="banner-bottom" id="about">
		<div class="container">
			<h3 class="heading-agileinfo" data-aos="zoom-in">About Us</h3>
			<div class="w3ls_banner_bottom_grids">
				<div class="col-md-4 agileits_services_grid" data-aos="fade-right">
					<div class="w3_agile_services_grid1">
						<img src="assets/frontimages/g1.jpg" alt=" "
							class="img-responsive">
						<div class="w3_blur"></div>
					</div>
					<h3>FILM SHOOTING</h3>
					<p>The dazzling agencies from delhi provides best user experience.</p>

					<div class="w3layouts_more">
						<a href="#book" class="scroll">Apply Now</a>
					</div>
				</div>
				<div class="col-md-4 agileits_services_grid" data-aos="fade-up">
					<div class="w3_agile_services_grid1">
						<img src="assets/frontimages/g2.jpg" alt=" "
							class="img-responsive">
						<div class="w3_blur"></div>
					</div>
					<h3>DOCUMENTARY</h3>
					<p>Conducting events with creathon is the best and the versatile way to showcase your talent.</p>

					<div class="w3layouts_more">
						<a href="#book" class="scroll">Apply Now</a>
					</div>
				</div>
				<div class="col-md-4 agileits_services_grid" data-aos="fade-left">
					<div class="w3_agile_services_grid1">
						<img src="assets/frontimages/travel.jpg" alt=" "
							class="img-responsive">
						<div class="w3_blur"></div>
					</div>
					<h3>OTHER</h3>
					<p class="text-justify">The API's gives all the production house crew members a great journey experience.</p>

					<div class="w3layouts_more">
						<a href="#book" class="scroll">Apply Now</a>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- services -->
	<div class="services jarallax" id="services">
		<h3 class="heading-agileinfo" data-aos="zoom-in">
			Services<span class="thr">We Try To Provide The Best Services
				For All The Shooting Locations</span>
		</h3>
		<div class="container">

			<div class="col-md-4 ser-1" data-aos="fade-right">
				<div class="grid1">

					<h4>ONLINE APPLICATION TRACKING</h4>
					<p class="text-justify">The production house can track their
						application status online, and can take necessary actions
						accordingly.</p>
				</div>
			</div>
			<div class="col-md-4 ser-1" data-aos="fade-down">
				<div class="grid1">

					<h4>REAL-TIME SHOOT LOCATION IMAGES</h4>
					<p class="text-justify">For every shooting location, we do
						provide images that are from different wheather conditions.</p>
				</div>
			</div>
			<div class="col-md-4 ser-1" data-aos="fade-left">
				<div class="grid1">

					<h4>HASSLE FREE FILMING CONDITIONS</h4>
					<p class="text-justify">Unless and until the shot is totally
						illegal, the filming team won't be disturbed from agencies end.</p>
				</div>
			</div>


			<div class="col-md-4 ser-1" data-aos="fade-right">
				<div class="grid1">

					<h4>ONLINE PAYMENT FOR LOCATIONS</h4>
					<p class="text-justify">We are providing online payment
						solutions through different payment gateways, which brings
						transparency.</p>
				</div>
			</div>
			<div class="col-md-4 ser-1" data-aos="fade-up">
				<div class="grid1">

					<h4>UPLOAD DOCUMENTS THROUGH DIGILOCKER</h4>
					<p class="text-justify">Uploading documents through digilocker
						will make it a hassle-free task for the producers and would be
						safe.</p>
				</div>
			</div>
			<div class="col-md-4 ser-1" data-aos="fade-left">
				<div class="grid1">

					<h4>ROAM AROUND THE DAZZLING CITY IN RADIO TAXI</h4>
					<p class="text-justify">Exploring the city with easy booking of
						cabs would develop interest within producers and their crew
						members.</p>
				</div>
			</div>
			<div class="clearfix"></div>

		</div>
	</div>
	<!-- //services -->

	<!-- Portfolio section -->
	<section class="portfolio-agileinfo" id="gallery">
		<div class="container">
			<h3 class="heading-agileinfo" data-aos="zoom-in">
				Gallery<span>Some Of Our Best Locations</span>
			</h3>
			<div class="gallery-grids">
				<div class="tab_img">
					<div class="col-md-3 col-sm-6 col-xs-6 portfolio-grids"
						data-aos="zoom-in">
						<a href="assets/frontimages/chandni_chowkN.jpg"
							class="b-link-stripe b-animate-go lightninBox" data-lb-group="1">
							<img src="assets/frontimages/chandni_chowkN.jpg"
							class="img-responsive" alt="w3ls" />
							<div class="b-wrapper">
								<i class="fa fa-search-plus" aria-hidden="true"></i>

							</div>
						</a>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-6 portfolio-grids"
						data-aos="zoom-in">
						<a href="assets/frontimages/connaughtPlaceN.jpg"
							class="b-link-stripe b-animate-go lightninBox" data-lb-group="1">
							<img src="assets/frontimages/connaughtPlaceN.jpg"
							class="img-responsive" alt="w3ls" />
							<div class="b-wrapper">
								<i class="fa fa-search-plus" aria-hidden="true"></i>

							</div>
						</a>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-6 portfolio-grids"
						data-aos="zoom-in">
						<a href="assets/frontimages/delhi_metroN.jpg"
							class="b-link-stripe b-animate-go lightninBox" data-lb-group="1">
							<img src="assets/frontimages/delhi_metroN.jpg"
							class="img-responsive" alt="w3ls" />
							<div class="b-wrapper">
								<i class="fa fa-search-plus" aria-hidden="true"></i>

							</div>
						</a>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-6 portfolio-grids"
						data-aos="zoom-in">
						<a href="assets/frontimages/india_gateN.jpg"
							class="b-link-stripe b-animate-go lightninBox" data-lb-group="1">
							<img src="assets/frontimages/india_gateN.jpg"
							class="img-responsive" alt="w3ls" />
							<div class="b-wrapper">
								<i class="fa fa-search-plus" aria-hidden="true"></i>

							</div>
						</a>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-6 portfolio-grids"
						data-aos="zoom-in">
						<a href="assets/frontimages/indira_gandhi_memorialN.jpg"
							class="b-link-stripe b-animate-go lightninBox" data-lb-group="1">
							<img src="assets/frontimages/indira_gandhi_memorialN.jpg"
							class="img-responsive" alt="w3ls" />
							<div class="b-wrapper">
								<i class="fa fa-search-plus" aria-hidden="true"></i>

							</div>
						</a>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-6 portfolio-grids"
						data-aos="zoom-in">
						<a href="assets/frontimages/jama_masjidN.jpg"
							class="b-link-stripe b-animate-go lightninBox" data-lb-group="1">
							<img src="assets/frontimages/jama_masjidN.jpg"
							class="img-responsive" alt="w3ls" />
							<div class="b-wrapper">
								<i class="fa fa-search-plus" aria-hidden="true"></i>

							</div>
						</a>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-6 portfolio-grids"
						data-aos="zoom-in">
						<a href="assets/frontimages/khan_marketN.jpg"
							class="b-link-stripe b-animate-go lightninBox" data-lb-group="1">
							<img src="assets/frontimages/khan_marketN.jpg"
							class="img-responsive" alt="w3ls" />
							<div class="b-wrapper">
								<i class="fa fa-search-plus" aria-hidden="true"></i>

							</div>
						</a>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-6 portfolio-grids"
						data-aos="zoom-in">
						<a href="assets/frontimages/lodhi_gardensN.jpg"
							class="b-link-stripe b-animate-go lightninBox" data-lb-group="1">
							<img src="assets/frontimages/lodhi_gardensN.jpg"
							class="img-responsive" alt="w3ls" />
							<div class="b-wrapper">
								<i class="fa fa-search-plus" aria-hidden="true"></i>

							</div>
						</a>
					</div>

					<div class="clearfix"></div>
				</div>

			</div>
		</div>
	</section>
	<!-- /Portfolio section -->
	<!-- Clients -->
	<div class="clients-main jarallax" id="client">
		<div class="container">
			<!-- Owl-Carousel -->
			<h3 class="heading-agileinfo" data-aos="zoom-in">
				TESTIMONIALS<span class="thr">Word from the dignitaries</span>
			</h3>
			<div class="cli-ent" data-aos="fade-down">
				<section class="slider">
					<div class="flexslider">
						<ul class="slides">
							<li>
								<div class="item g1">
									<div class="agile-dish-caption">
										<img class="lazyOwl" src="assets/frontimages/shahrukhKhan.jpg"
											alt="" />
										<h4 class="dignitaries"><b>Shahrukh Khan</b></h4>
										<span>Actor</span>

									</div>

									<div class="clearfix"></div>
									<p class="para-w3-agile">
										<span class="fa fa-quote-left" aria-hidden="true"></span>I am
										glad that I got the opportunity to play a Delhi boy. I used to
										hate it when actors, who are not from Delhi, will play Delhi
										guys. I used to think why I have not been given the chance to
										play a Delhi boy as I come from there. I am very happy now. I
										had forgotten the accent. It's good to recapture that.
									</p>
								</div>
							</li>
							<li>
								<div class="item g1">
									<div class="agile-dish-caption">
										<img class="lazyOwl" src="assets/frontimages/rishiN.jpg"
											alt="" />
										<h4 class="dignitaries"><b>Rishi Kapoor</b></h4>
										<span>Actor / Producer</span>

									</div>

									<div class="clearfix"></div>
									<p class="para-w3-agile">
										<span class="fa fa-quote-left" aria-hidden="true"></span>Before
										signing this film, I was very apprehensive about coming to
										Chandni Chowk to shoot. I thought it would be impossible to
										shoot here because of the crowd. But I was proved wrong. Not
										only have the people in the Chandni Chowk and Jama Masjid area
										been so kind to us.
									</p>
								</div>
							</li>
							<li>
								<div class="item g1">
									<div class="agile-dish-caption">
										<img class="lazyOwl" src="assets/frontimages/akshayN.jpg"
											alt="" />
										<h4 class="dignitaries"><b>Akshay Kumar</b></h4>
										<span>Actor</span>

									</div>

									<div class="clearfix"></div>
									<p class="para-w3-agile">
										<span class="fa fa-quote-left" aria-hidden="true"></span>Some
										of my best memories from Delhi are about playing here. We used
										to play cricket near the Red Fort. My friends and I used to go
										to India Gate and play in the lawns a lot. Whenever I see the
										Red Fort, it reminds me of the days I spent hitting fours and
										sixes on the streets there.
									</p>
								</div>
							</li>
						</ul>
					</div>
				</section>
			</div>
			<!--// Owl-Carousel -->
		</div>
	</div>
	<!--// Clients -->
	<div class="pricing" id="pricing">
		<div class="container">
			<h3 class="heading-agileinfo" data-aos="zoom-in">
				Shooting Location<span>The Dazzling Shooting Locations That
					We Do Have In Delhi</span>
			</h3>
			<div class="w3ls_banner_bottom_grids">
				<div class="col-md-4 agileits_services_grid" data-aos="fade-right">
					<div class="w3_agile_services_grid1">
						<img src="assets/frontimages/qutub_minar.jpg" alt=" "
							class="img-responsive">
						<div class="w3_blur"></div>
					</div>
					<div class="pr-ta">
						<h3>Qutub Minar</h3>
						<p class="text-justify">
							Qutab Minar is a soaring, 73 m-high tower of victory, built in
							1193 by Qutab-ud-din Aibak immediately after the defeat of
							Delhi's last Hindu kingdom. <br> <br>
						</p>
						<!-- <span class="moto-color1_3"><i class="fa fa-calendar-check-o" aria-hidden="true"></i>&nbsp; December 28, 2017</span> -->
						<div class="tabl-erat">
							<div class="col-md-7 ratt">
								<h6>&#x20b9; 49,999/-per day</h6>
							</div>
							<div class="col-md-5 tag">
								<a href="#book" class="scroll">Apply Now</a>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-4 agileits_services_grid" data-aos="fade-up">
					<div class="w3_agile_services_grid1">
						<img src="assets/frontimages/red_fort.jpg" alt=" "
							class="img-responsive">
						<div class="w3_blur"></div>
					</div>
					<div class="pr-ta">
						<h3>Red Fort</h3>
						<p class="text-justify">The Red sandstone walls of the massive
							Red Fort rise 33-m above the clamour of Old Delhi as a reminder
							of the magnificent power and pomp of the Mughal emperors.</p>

						<!-- <span class="moto-color1_3"><i class="fa fa-calendar-check-o" aria-hidden="true"></i>&nbsp; December 28, 2017</span> -->
						<div class="tabl-erat">
							<div class="col-md-7 ratt">
								<h6>&#x20b9; 79,999/-per day</h6>
							</div>
							<div class="col-md-5 tag">
								<a href="#book" class="scroll">Apply Now</a>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="col-md-4 agileits_services_grid" data-aos="fade-left">
					<div class="w3_agile_services_grid1">
						<img src="assets/frontimages/india_gate.jpg" alt=" "
							class="img-responsive">
						<div class="w3_blur"></div>
					</div>
					<div class="pr-ta">
						<h3>India Gate</h3>
						<p class="text-justify">
							At the centre of New Delhi stands the 42 m high India Gate, an
							"Arc-de-Triomphe" like archway in the middle of a crossroad. <br>
							<br>
							<br>
						</p>
						<!-- <span class="moto-color1_3"><i class="fa fa-calendar-check-o" aria-hidden="true"></i>&nbsp; December 28, 2017</span> -->
						<div class="tabl-erat">
							<div class="col-md-7 ratt">
								<h6>&#x20b9; 99,999/-per day</h6>
							</div>
							<div class="col-md-5 tag">
								<a href="#book" class="scroll">Apply Now</a>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<!-- <a href="" class="scroll">More Locations</a> -->
			
			<div class="more-button">
				<a href="moreLocations" >More Locations</a>
			</div>
					</div>
	</div>
	<!-- register -->
	<!-- <div class="register-sec-w3l jarallax" id="book">
		<div class="container">
		<h3 class="heading-agileinfo" data-aos="zoom-in">Book An Event<span class="thr">Events Is A Professionally Managed Event</span></h3>
			<div class="book-appointment" data-aos="zoom-in">
				<form action="#" method="post">
					<div class="gaps">
						<p></p>
						<input type="text" name="Name" placeholder="Name" required="" />
					</div>
					<div class="gaps">
						<p></p>
						<input type="email" name="email" placeholder="Email" required="" />
					</div>
					<div class="gaps">
						<p></p>
						<input type="text" name="Phone Number" placeholder="Phone Number" required="" />
					</div>
					<div class="gaps">
						<textarea name="Message" placeholder="Message..." required=""></textarea>
					</div>
					<input type="submit" value="Book Now">
				</form>
			</div>

		</div>
	</div> -->
	<!-- //register -->
	<!-- Team section -->


	<section class="team" id="team">
		<div class="container">
			<h3 class="heading-agileinfo" data-aos="zoom-in">OUR CREATHON
				TEAM</h3>
			<div class="team-grid-top">

				<div id="myCarousel" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->


					<!-- Wrapper for slides -->
					<div class="carousel-inner">
						<div class="item active">
							<div class="col-md-3 team1" data-aos="fade-right">
								<div class="inner-team1">
									<img src="assets/frontimages/t1.jpg" alt="" />
									<h3>Aman Agarwal</h3>
									<h4>Team Leader</h4>
									<div class="team-social">
										<a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i
											class="fa fa-linkedin"></i></a> <a href="#"><i
											class="fa fa-pinterest-p"></i></a>
									</div>
								</div>
							</div>
							<div class="col-md-3 team1" data-aos="fade-down">
								<div class="inner-team1">
									<img src="assets/frontimages/t2.jpg" alt="" />
									<h3>Vedvrat Lodhi</h3>
									<h4>Developer</h4>
									<div class="team-social">
										<a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i
											class="fa fa-linkedin"></i></a> <a href="#"><i
											class="fa fa-pinterest-p"></i></a>
									</div>
								</div>
							</div>
							<div class="col-md-3 team1" data-aos="fade-up">
								<div class="inner-team1">
									<img src="assets/frontimages/t3.jpg" alt="" />
									<h3>Shubham Tiwari</h3>
									<h4>Developer</h4>
									<div class="team-social">
										<a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i
											class="fa fa-linkedin"></i></a> <a href="#"><i
											class="fa fa-pinterest-p"></i></a>
									</div>
								</div>
							</div>
							<div class="col-md-3 team1" data-aos="fade-up">
								<div class="inner-team1">
									<img src="assets/frontimages/apekshaN.jpg" alt="" />
									<h3>Apeksha Tiwary</h3>
									<h4>Developer</h4>
									<div class="team-social">
										<a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i
											class="fa fa-linkedin"></i></a> <a href="#"><i
											class="fa fa-pinterest-p"></i></a>
									</div>
								</div>
							</div>
						</div>

						<div class="item">
							<div class="col-md-3 team1" data-aos="fade-right">
								<div class="inner-team1">
									<img src="assets/frontimages/manishSingh.jpg" alt="" />
									<h3>Manish Singh</h3>
									<h4>Team Leader</h4>
									<div class="team-social">
										<a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i
											class="fa fa-linkedin"></i></a> <a href="#"><i
											class="fa fa-pinterest-p"></i></a>
									</div>
								</div>
							</div>
							<div class="col-md-3 team1" data-aos="fade-down">
								<div class="inner-team1">
									<img src="assets/frontimages/prachiN.jpg" alt="" />
									<h3>Prachi Wagadare</h3>
									<h4>Developer</h4>
									<div class="team-social">
										<a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i
											class="fa fa-linkedin"></i></a> <a href="#"><i
											class="fa fa-pinterest-p"></i></a>
									</div>
								</div>
							</div>
							<div class="col-md-3 team1" data-aos="fade-up">
								<div class="inner-team1">
									<img src="assets/frontimages/t1.jpg" alt="" />
									<h3>Aman Agarwal</h3>
									<h4>Developer</h4>
									<div class="team-social">
										<a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i
											class="fa fa-linkedin"></i></a> <a href="#"><i
											class="fa fa-pinterest-p"></i></a>
									</div>
								</div>
							</div>
							<div class="col-md-3 team1" data-aos="fade-up">
								<div class="inner-team1">
									<img src="assets/frontimages/apekshaN.jpg" alt="" />
									<h3>Apeksha Tiwary</h3>
									<h4>Developer</h4>
									<div class="team-social">
										<a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i
											class="fa fa-linkedin"></i></a> <a href="#"><i
											class="fa fa-pinterest-p"></i></a>
									</div>
								</div>
							</div>
						</div>

						<div class="item">
							<div class="col-md-3 team1" data-aos="fade-right">
								<div class="inner-team1">
									<img src="assets/frontimages/t1.jpg" alt="" />
									<h3>Vedvrat Lodhi</h3>
									<h4>Team Leader</h4>
									<div class="team-social">
										<a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i
											class="fa fa-linkedin"></i></a> <a href="#"><i
											class="fa fa-pinterest-p"></i></a>
									</div>
								</div>
							</div>
							<div class="col-md-3 team1" data-aos="fade-down">
								<div class="inner-team1">
									<img src="assets/frontimages/t2.jpg" alt="" />
									<h3>Shubham Tiwari</h3>
									<h4>Developer</h4>
									<div class="team-social">
										<a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i
											class="fa fa-linkedin"></i></a> <a href="#"><i
											class="fa fa-pinterest-p"></i></a>
									</div>
								</div>
							</div>
							<div class="col-md-3 team1" data-aos="fade-up">
								<div class="inner-team1">
									<img src="assets/frontimages/manishSingh.jpg" alt="" />
									<h3>Manish Singh</h3>
									<h4>Developer</h4>
									<div class="team-social">
										<a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i
											class="fa fa-linkedin"></i></a> <a href="#"><i
											class="fa fa-pinterest-p"></i></a>
									</div>
								</div>
							</div>
							<div class="col-md-3 team1" data-aos="fade-up">
								<div class="inner-team1">
									<img src="assets/frontimages/prachiN.jpg" alt="" />
									<h3>Prachi Wagadare</h3>
									<h4>Developer</h4>
									<div class="team-social">
										<a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i
											class="fa fa-linkedin"></i></a> <a href="#"><i
											class="fa fa-pinterest-p"></i></a>
									</div>
								</div>
							</div>

						</div>
					</div>

					<!-- Left and right controls -->
					<a class="left carousel-control" href="#myCarousel"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#myCarousel"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right"></span> <span
						class="sr-only">Next</span>
					</a>

				</div>



				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>

		</div>
	</section>
	<!-- //Team section -->
	<!-- Stats -->
	<div class="stats news-w3layouts jarallax">
		<div class="container">
			<div class="stats-agileinfo agileits-w3layouts">
				<div class="col-sm-3 col-xs-6 stats-grid" data-aos="fade-right">
					<div class="stats-img">
						<i class="fa fa-users" aria-hidden="true"></i>
					</div>
					<p>Locations</p>
					<div class='numscroller numscroller-big-bottom' data-slno='1'
						data-min='0' data-max='212' data-delay='5' data-increment="5">157000</div>
				</div>
				<div class="col-sm-3 col-xs-6 stats-grid" data-aos="fade-up">
					<div class="stats-img w3-agileits">
						<i class="fa fa-calendar-check-o" aria-hidden="true"></i>
					</div>
					<p>Agencies</p>
					<div class='numscroller numscroller-big-bottom' data-slno='1'
						data-min='0' data-max='16' data-delay='2' data-increment="1">850</div>
				</div>
				<div class="col-sm-3 col-xs-6 stats-grid" data-aos="fade-down">
					<div class="stats-img w3-agileits">
						<i class="fa fa-briefcase" aria-hidden="true"></i>
					</div>
					<p>Happy Producers</p>
					<div class='numscroller numscroller-big-bottom' data-slno='1'
						data-min='0' data-max='250' data-delay='5' data-increment="5">5000</div>
				</div>
				<div class="col-sm-3 col-xs-6 stats-grid" data-aos="fade-left">
					<div class="stats-img w3-agileits">
						<i class="fa fa-trophy" aria-hidden="true"></i>
					</div>
					<p>Visitors</p>
					<div class='numscroller numscroller-big-bottom' data-slno='1'
						data-min='0' data-max='46940' data-delay='.1' data-increment="100">110</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<!-- Progressive-Effects-Animation-JavaScript -->
			<script type="text/javascript"
				src="assets/js/front/numscroller-1.0.js"></script>
			<!-- //Progressive-Effects-Animation-JavaScript -->
		</div>
	</div>
	<!-- //Stats -->

	<!-- event schedule -->
	<div class="event-time " id="event">
		<div class="container">
			<h3 class="heading-agileinfo" data-aos="zoom-in">
				News & Events<span>Events Is A Professionally Managed Event</span>
			</h3>
			<div class="testi-info">
				<!-- Nav tabs -->
				<ul class="nav nav-tabs" role="tablist">
					<li role="presentation" class="active"><a href="#testi"
						aria-controls="testi" role="tab" data-toggle="tab">2016</a></li>
					<li role="presentation"><a href="#profile"
						aria-controls="profile" role="tab" data-toggle="tab">2017</a></li>
					<li role="presentation"><a href="#messages"
						aria-controls="messages" role="tab" data-toggle="tab">2018</a></li>
				</ul>
				<!-- Tab panes -->
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="testi">
						<div class="eventmain-info">
							<div class="event-subinfo">
								<div class="col-md-6  w3-latest-grid">
									<div class="col-md-6 col-xs-6 event-right eventtxt-right"
										data-aos="fade-down">
										<img src="assets/frontimages/fan_dwarkasector14.jpg"
											class="img-responsive" alt="">
									</div>
									<div class="col-md-6 col-xs-6 event-left" data-aos="fade-right">
										<h5>Fan</h5>

										<p>Releaded on: 15 April 2016.</p>
										<h6>
											<span class="icon-event" aria-hidden="true">venue:</span>
											Dwarka Sector-14
										</h6>
										<a href="#" data-toggle="modal" data-target="#myModal">view
											details</a>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="col-md-6 w3-latest-grid">
									<div class="col-md-6 col-xs-6 event-right" data-aos="fade-up">
										<img src="assets/frontimages/sultan_jama-masjid.jpg"
											class="img-responsive" alt="">
									</div>
									<div class="col-md-6 col-xs-6 event-left in-news"
										data-aos="fade-right">
										<h5>Sultan</h5>

										<p>Released on: 6 July 2016.</p>
										<h6>
											<span class="icon-event" aria-hidden="true">venue:</span>
											Jama Masjid
										</h6>
										<a href="#" data-toggle="modal" data-target="#myModal">view
											details</a>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="event-subinfo">
								<div class="col-md-6 w3-latest-grid">
									<div class="col-md-6 col-xs-6 event-right  eventtxt-right"
										data-aos="fade-down">
										<img src="assets/frontimages/pink_delhi_streets.jpg"
											class="img-responsive" alt="">
									</div>
									<div class="col-md-6 col-xs-6 event-left" data-aos="fade-left">
										<h5>Pink</h5>

										<p>Released on: 16 September 2016.</p>
										<h6>
											<span class="icon-event" aria-hidden="true">venue:</span>
											Delhi Streets
										</h6>
										<a href="#" data-toggle="modal" data-target="#myModal">view
											details</a>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="col-md-6 w3-latest-grid">
									<div class="col-md-6 col-xs-6 event-right" data-aos="fade-up">
										<img src="assets/frontimages/dangal_talkatora.jpg"
											class="img-responsive" alt="">
									</div>
									<div class="col-md-6 col-xs-6 event-left in-news"
										data-aos="fade-right">
										<h5>Dangal</h5>

										<p>Released on: 23 December 2016.</p>
										<h6>
											<span class="icon-event" aria-hidden="true">venue:</span>
											Talkatora Stadium
										</h6>
										<a href="#" data-toggle="modal" data-target="#myModal">view
											details</a>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane" id="profile">
						<div class="eventmain-info">
							<div class="event-subinfo">
								<div class="col-md-6 w3-latest-grid">
									<div class="col-md-6 col-xs-6 event-right eventtxt-right">
										<img src="assets/frontimages/ok_jaanu_jama_masjid.jpg"
											class="img-responsive" alt="">
									</div>
									<div class="col-md-6 col-xs-6 event-left">
										<h5>Ok Jaanu</h5>

										<p>Released on: 13 January 2017.</p>
										<h6>
											<span class="icon-event" aria-hidden="true">venue:</span>
											Jama Masjid
										</h6>
										<a href="#" data-toggle="modal" data-target="#myModal">view
											details</a>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="col-md-6 w3-latest-grid">
									<div class="col-md-6 col-xs-6 event-right">
										<img src="assets/frontimages/hindi_medium_chandni_chowk.jpg"
											class="img-responsive" alt="">
									</div>
									<div class="col-md-6 col-xs-6 event-left in-news">
										<h5>Hindi Medium</h5>

										<p>Released on: 19 May 2017.</p>
										<h6>
											<span class="icon-event" aria-hidden="true">venue:</span>
											Chandni Chowk
										</h6>
										<a href="#" data-toggle="modal" data-target="#myModal">view
											details</a>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="event-subinfo">
								<div class="col-md-6 w3-latest-grid">
									<div class="col-md-6 col-xs-6 event-right  eventtxt-right">
										<img src="assets/frontimages/shab_delhi_NCR_indiaGate.jpg"
											class="img-responsive" alt="">
									</div>
									<div class="col-md-6 col-xs-6 event-left">
										<h5>Shab</h5>

										<p>Released on: 14 July 2017.</p>
										<h6>
											<span class="icon-event" aria-hidden="true">venue:</span>
											India Gate
										</h6>
										<a href="#" data-toggle="modal" data-target="#myModal">view
											details</a>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="col-md-6 w3-latest-grid">
									<div class="col-md-6 col-xs-6 event-right">
										<img
											src="assets/frontimages/fukrey_returns_delhi_university.jpg"
											class="img-responsive" alt="">
									</div>
									<div class="col-md-6 col-xs-6 event-left in-news">
										<h5>Fukrey Returns</h5>

										<p>Released on: 8 December 2017.</p>
										<h6>
											<span class="icon-event" aria-hidden="true">venue:</span>
											Delhi University
										</h6>
										<a href="#" data-toggle="modal" data-target="#myModal">view
											details</a>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
					<div role="tabpanel" class="tab-pane" id="messages">
						<div class="eventmain-info">
							<div class="event-subinfo">
								<div class="col-md-6 w3-latest-grid">
									<div class="col-md-6 col-xs-6 event-right eventtxt-right">
										<img src="assets/frontimages/aiyaary_india_gate.jpg"
											class="img-responsive" alt="">
									</div>
									<div class="col-md-6 col-xs-6 event-left">
										<h5>Aiyaary</h5>

										<p>Released on: 16 February 2018.</p>
										<h6>
											<span class="icon-event" aria-hidden="true">venue:</span>
											India Gate
										</h6>
										<a href="#" data-toggle="modal" data-target="#myModal">view
											details</a>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="col-md-6 w3-latest-grid">
									<div class="col-md-6 col-xs-6 event-right">
										<img src="assets/frontimages/baaghi2_paharganj.jpg"
											class="img-responsive" alt="">
									</div>
									<div class="col-md-6 col-xs-6 event-left in-news">
										<h5>Baaghi 2</h5>

										<p>Released on: 30 March 2018.</p>
										<h6>
											<span class="icon-event" aria-hidden="true">venue:</span>
											Pahar Ganj
										</h6>
										<a href="#" data-toggle="modal" data-target="#myModal">view
											details</a>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="event-subinfo">
								<div class="col-md-6 w3-latest-grid">
									<div class="col-md-6 col-xs-6 event-right  eventtxt-right">
										<img src="assets/frontimages/october_delhi.jpg"
											class="img-responsive" alt="">
									</div>
									<div class="col-md-6 col-xs-6 event-left">
										<h5>October</h5>

										<p>Released on: 13 April 2018.</p>
										<h6>
											<span class="icon-event" aria-hidden="true">venue:</span>
											Delhi
										</h6>
										<a href="#" data-toggle="modal" data-target="#myModal">view
											details</a>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="col-md-6 w3-latest-grid">
									<div class="col-md-6 col-xs-6 event-right">
										<img src="assets/frontimages/baazar_delhi.jpg"
											class="img-responsive" alt="">
									</div>
									<div class="col-md-6 col-xs-6 event-left in-news">
										<h5>Baazaar</h5>

										<p>Released on: 27 April 2018</p>
										<h6>
											<span class="icon-event" aria-hidden="true">venue:</span>
											Delhi
										</h6>
										<a href="#" data-toggle="modal" data-target="#myModal">view
											details</a>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- //event schedule -->
	<!-- map -->
	<!-- <div class="frame">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3667.6604653138397!2d77.45374021505603!3d23.182589184872327!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x397c43e8e479cd57%3A0x545ace232415d5c9!2sIndia!5e0!3m2!1sen!2sin!4v1521032210199" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
			</div> -->
	<!-- //map -->


	<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="f-bg-w3l">
				<div class="col-md-4 w3layouts_footer_grid" data-aos="fade-right">
					<h2>Contact Information</h2>
					<ul class="con_inner_text">
						<li><span class="fa fa-map-marker" aria-hidden="true"></span>Address
							OF the Main Address <label>address "address" <br>
								NJ, 08540
						</label></li>
						<li><span class="fa fa-envelope-o" aria-hidden="true"></span>
							<a href="mailto:info@example.com">info@creathon.com</a></li>
						<li><span class="fa fa-phone" aria-hidden="true"></span>Phone:
							+91-9090909090</li>
					</ul>

					<ul class="social_agileinfo">
						<li><a href="https://www.facebook.com/" class="w3_facebook"><i
								class="fa fa-facebook"></i></a></li>
						<li><a href="https://twitter.com/" class="w3_twitter"><i
								class="fa fa-twitter"></i></a></li>
						<li><a href="https://www.linkedin.com/" class="w3_instagram"><i
								class="fa fa-linkedin"></i></a></li>
						<li><a href="https://plus.google.com/" class="w3_google"><i
								class="fa fa-google-plus"></i></a></li>
					</ul>
				</div>
				<div class="col-md-4 w3layouts_footer_grid" data-aos="fade-down">
					<h2>Subscribe Newsletter</h2>
					<p>By subscribing to our mailing list you will always get
						latest news from us.</p>
					<form action="#" method="post">
						<input type="email" name="Email" placeholder="Enter your email..."
							required="">
						<button class="btn1">
							<i class="fa fa-envelope-o" aria-hidden="true"></i>
						</button>
						<div class="clearfix"></div>
					</form>
				</div>
				<div class="col-md-4 w3layouts_footer_grid" data-aos="fade-left">
					<h3>Fabulous Place in Delhi</h3>
					<ul class="con_inner_text midimg">
						<li><a href="#" data-toggle="modal" data-target="#myModal"><img
								src="assets/frontimages/lodhi_gardens.jpg" alt=""
								class="img-responsive" /></a></li>
						<li><a href="#" data-toggle="modal" data-target="#myModal"><img
								src="assets/frontimages/g3.jpg" alt="" class="img-responsive" /></a></li>
						<li><a href="#" data-toggle="modal" data-target="#myModal"><img
								src="assets/frontimages/g4.jpg" alt="" class="img-responsive" /></a></li>
						<li><a href="#" data-toggle="modal" data-target="#myModal"><img
								src="assets/frontimages/g5.jpg" alt="" class="img-responsive" /></a></li>
						<li><a href="#" data-toggle="modal" data-target="#myModal"><img
								src="assets/frontimages/g6.jpg" alt="" class="img-responsive" /></a></li>
						<li><a href="#" data-toggle="modal" data-target="#myModal"><img
								src="assets/frontimages/g7.jpg" alt="" class="img-responsive" /></a></li>
						<li><a href="#" data-toggle="modal" data-target="#myModal"><img
								src="assets/frontimages/g8.jpg" alt="" class="img-responsive" /></a></li>
						<li><a href="#" data-toggle="modal" data-target="#myModal"><img
								src="assets/frontimages/g1.jpg" alt="" class="img-responsive" /></a></li>
					</ul>

				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<p class="copyright" data-aos="zoom-in">
			Copyright © 2018 | Creathon | All Rights Reserved | Design by <a
				href="http://www.istudentlabs.com/" target="_blank">IKstudent
				Labs</a>
		</p>
	</div>
	<!-- //footer -->

	<!-- js for portfolio lightbox -->
	<script src="assets/js/front/jQuery.lightninBox.js"></script>
	<script type="text/javascript">
		$(".lightninBox").lightninBox();
	</script>
	<!-- /js for portfolio lightbox -->
	<!-- flexSlider -->
	<script defer src="assets/js/front/jquery.flexslider.js"></script>
	<script type="text/javascript">
		$(window).load(function() {
			$('.flexslider').flexslider({
				animation : "slide",
				start : function(slider) {
					$('body').removeClass('loading');
				}
			});
		});
	</script>
	<!-- //flexSlider -->

	<script type="text/javascript" src="assets/js/front/move-top.js"></script>
	<script type="text/javascript" src="assets/js/front/easing.js"></script>

	<script src="assets/js/front/jarallax.js"></script>
	<script src="assets/js/front/SmoothScroll.min.js"></script>
	<script type="text/javascript">
		/* init Jarallax */
		$('.jarallax').jarallax({
			speed : 0.5,
			imgWidth : 1366,
			imgHeight : 768
		})
	</script>
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear'
				};
			 */

			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>
	<!-- //here ends scrolling icon -->
	<!-- scrolling script -->
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop : $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- //scrolling script -->
	<!-- animation effects-js files-->
	<script src="assets/js/front/aos.js"></script>
	<!-- //animation effects-js-->
	<script src="assets/js/front/aos1.js"></script>
	<!-- //animation effects-js-->
	<!-- animation effects-js files-->

</body>
</html>
