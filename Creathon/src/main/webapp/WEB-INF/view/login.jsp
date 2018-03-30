<!DOCTYPE html>
<html lang="en">
<head>
<title>Dazzling Delhi | Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords" content="New Party Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link rel="stylesheet" href="assets/css/front/bootstrap.css"  type="text/css" media="all" />
<link rel="stylesheet" href="assets/css/front/style.css" type="text/css" media="all" />
<link href="assets/css/front/jQuery.lightninBox.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="assets/css/front/flexslider.css" type="text/css" media="screen" property="" />
<link href="assets/css/front/aos.css" rel="stylesheet" type="text/css" media="all" /><!-- //animation effects-css-->
<link href="assets/css/front/font-awesome.css" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700,800" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Galada" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Oswald:400,500,600,700" rel="stylesheet">
<script src="assets/js/front/jquery-2.2.3.min.js"></script>
<script src="assets/js/front/bootstrap.js"></script>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
</head>
<script>

function hideForeigner() {
    var x = document.getElementById("foreigner");
        x.style.display = "none";
        
        var x = document.getElementById("indian");
        x.style.display = "block";
}
function showForeigner() {
    var x = document.getElementById("foreigner");
        x.style.display = "block";
        var x = document.getElementById("indian");
        x.style.display = "none";
}










function getState(countryId) {
	$('#stateId').find('option').remove().end().append('<option value="">Select State</option>').val('');
	
	$.ajax({
		type : "POST",
		url : "ajax/getStates?id="+countryId,
		

	}).done(
			function(stateList) {
				var opt = '<option value="">Select State</option>';
				for (i in stateList) {
					opt += '<option value="'+stateList[i].id+'">'
							+ stateList[i].name + '</option>';
				}
				$('#stateId').html(opt);
				$('#stateId').selectpicker('refresh');
			});
}


function getCity(stateId) {
	$('#cityId').find('option').remove().end().append('<option value="">Select City</option>').val('');
	
	$.ajax({
		type : "POST",
		url : "ajax/getCities?id="+stateId,
		

	}).done(
			function(cityList) {
				var opt = '<option value="">Select City</option>';
				for (i in cityList) {
					opt += '<option value="'+cityList[i].id+'">'
							+ cityList[i].name + '</option>';
				}
				$('#cityId').html(opt);
				$('#cityId').selectpicker('refresh');
			});
}
</script>
<body>
	<div class="w3-banner jarallax">
		<div class="wthree-different-dot">
			<div class="head">
				<div class="container">
					<div class="navbar-top">
							<div class="navbar-header">
							  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							  </button>
								 <div class="navbar-brand logo ">
									<h1><a href="<%=request.getContextPath()%>/">Creathon</a></h1>
								</div>
							</div>
							<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							 <ul class="nav navbar-nav link-effect-4">
								<li class="first-list"><a href="index.html">Home</a></li>
								<li class="active "><a href="login.html" >Get In</a></li>
							  </ul>
							</div>
						</div>
				</div>
			</div>

   <div class="container" >
         <div class="row" >
           <div class="col-md-4" data-aos="fade-left">
                <form:form class="creathon_login"  modelAttribute="user" action="validate_user" method="Post" id="background-of-login">
                  <h1 class="welcome text-center">Log In</h1>
                  <hr>
                  <div class="form-group col-md-12">
                   <form:input type="email"  path="username" class="form-control"  placeholder="Email"/>
                  </div>
                  <div class="form-group col-md-12">
                   <form:input type="password" class="form-control"   placeholder="Password" path="password" />
                  </div>
                  <div class="form-check col-md-12">
                   <input type="checkbox" class="form-check-input" id="exampleCheck1">
                  <label class="form-check-label" for="exampleCheck1">Remember Me</label> <br>
                  </div>
                    <div class="loginbutton">
<!--                       <a href="#" >Log In</a> -->
                      
                      <div >
                  <button class="loginbutton"  type="submit">Log In</button>
                </div>
                    </div>
                </form:form>
           </div>
           <div class="col-md-8" data-aos="fade-right">
                <form:form class="creathon_login" method="POST" action="saveProductionHouse" modelAttribute="productionHouse"  id="background-of-login">
                  <h1 class="welcome text-center">Sign Up</h1>
                  <hr>
                   <div class="form-group col-md-12">
                    <form:input type="text" class="form-control" placeholder="Production House Name" name="production_house_name" path="name" required="true"/>
                   </div>
                   <div class="form-group col-md-4">
                     <form:input type="email" class="form-control" placeholder="Email" name="email" path="emailId" required="true"/>
                   </div>
                   <div class="form-group col-md-4">
                     <form:input type="text" class="form-control" path="phoneNo" placeholder="Phone No"
											name="phone_no" required="true"/> 
                   </div>
                    <div class="form-group col-md-4">
                      <form:input type="text" class="form-control" name="mobile_no" path="mobileNo" placeholder="Mobile No"
											required="true"/> 
                    </div>
                    <div class="form-group col-md-4">
                    <label class="form-label selectpicker" style="color:white;">Select Country</label>
                      <form:select class="form-control show-tick" path="addressId.country.id" onchange="getState(this.value)">
									<option value="">-- Country --</option>
									<c:forEach items="${countryList}" var="cl">
									<option value="${cl.id}">${cl.name}</option>
										</c:forEach>
								</form:select>
                    </div>
                    <div class="form-group col-md-4">
                      <label class="form-label" style="color:white;">Select State</label>
								<form:select class="form-control selectpicker" onchange="getCity(this.value)" id="stateId" path="addressId.state.id">
									<option value="">-- State --</option>
									
									<c:forEach items="${stateList}" var="sl">
													<option value="${sl.id}">${sl.name}</option>
										</c:forEach>
								</form:select>
                    </div>
                    <div class="form-group col-md-4">
                     <label class="form-label" style="color:white;">Select City</label>
								<form:select class="form-control" id="cityId" path="addressId.city.id">
									<c:forEach items="${stateList}" var="sl">
													<option value="${sl.id}">${sl.name}</option>
										</c:forEach>
								</form:select>
                    </div>
                    <div class="form-group col-md-6">
                     <form:input type="text" class="form-control" name="landmark" placeholder="Landmark" path="addressId.landmark" required="true"/>
                    </div>
                    <div class="form-group col-md-6">
                      <form:input type="text" class="form-control" name="street" placeholder="Street" path="addressId.street" required="true"/>
                    </div>
                    <div class="form-group col-md-6">
                      <form:input type="text" class="form-control" name="pincode" path="addressId.pincode" placeholder="Pincode"
											required="true"/>
                    </div>
                    <div class="form-group col-md-6">
                      <form:input type="text" class="form-control" name="building_no" path="addressId.buildingNo" placeholder="Building No"
											required="true"/>
                    </div>
                    <div class="form-group col-md-12" >
                      <form:input type="text" class="form-control" name="producer_name" path="producerName" placeholder="Producer Name"
											required="true"/>
                    </div>
                    <div class="form-group col-md-12" >
                    <label class="form-label" style="color:white;">Nationality</label><br>
                      <input type="radio" onclick="hideForeigner()" name="nationality" value="Indian"/> <label class="form-label" style="color:white;">Indian</label> &nbsp;&nbsp;
  			          <input type="radio" name="nationality" onclick="showForeigner()" value="Foreigner"/><label class="form-label" style="color:white;">Foreigner</label><br>
                    </div>
                    <div id="foreigner">
                    <div class="form-group col-md-4" >
                      <form:input type="text" class="form-control"  name="passport_no" placeholder="Passport No" path="passportNo" /> 
                    </div>
                    
                    <div class="form-group col-md-4">
                      <form:input type="text" class="form-control" placeholder="Visa Type"  name="visa_type" path="visaType" />
                    </div>
                    <div class="form-group col-md-4">
                      <form:input type="text" class="form-control" placeholder="Visa No."  name="visa_no" path="visaNumber" />
                    </div>
                    
                    <div class="form-group col-md-6" >
                    <label class="form-label" style="color:white;">Passport Validity</label>
                      <form:input type="date" class="datepicker form-control" placeholder="Passport Validity..." path="validity"/>
                    </div>
                    
                    <div class="form-group col-md-4">
                    <label class="form-label" style="color:white;">Visa Validity</label>
                      <form:input type="date" class="form-control" placeholder="Visa Validity"  name="visa_validity" path="visaValidity" 	/> 
                    </div>
                    </div>
                    <div id="indian">
                    <div class="form-group col-md-12">
                    <form:input type="text" class="form-control" placeholder="Producer Aadhar"  name="adhaar" path="producerAadhar" /> 
                    </div>
					</div>

                    <div class="form-group col-md-12">
                    <form:input type="text" class="form-control" placeholder="Contact Person" name="contact_person" path="contactPerson" required="true"/>
                    </div>


                    <div class="form-group col-md-12">
                    <form:textarea name="producer_exp_profile" placeholder="Producer Experience Profile" cols="30" rows="3" class="form-control no-resize" path="producerExperienceProfile" required="true"></form:textarea>
                    </div>


                    <div class="form-group col-md-12">
                    <input type="password" class="form-control" name="password"	required="true"/>
                    </div>
                <div>
                  <button class="loginbutton"  type="submit">Sign In</button>
                </div>
                </form:form>
           </div>
         </div>
   </div>
 </div>
</div>

	 <!-- footer -->
	 <div class="footer">
	 <div class="container">
	 	<div class="f-bg-w3l">
	 	<div class="col-md-4 w3layouts_footer_grid" data-aos="fade-right">
	 				<h2>Contact Information</h2>
	 						<ul class="con_inner_text">
	 						<li><span class="fa fa-map-marker" aria-hidden="true"></span>IstudentLabs<label>address address <br>
	 NJ, 08540</label></li>
	 						<li><span class="fa fa-envelope-o" aria-hidden="true"></span> <a href="mailto:info@example.com">istudentlabs.com</a></li>
	 						<li><span class="fa fa-phone" aria-hidden="true"></span>Phone: +1-9999999999</li>
	 					</ul>

	 				<ul class="social_agileinfo">
	 					<li><a href="https://www.facebook.com/" class="w3_facebook"><i class="fa fa-facebook"></i></a></li>
	 					<li><a href="https://twitter.com/" class="w3_twitter"><i class="fa fa-twitter"></i></a></li>
	 					<li><a href="https://www.linkedin.com/" class="w3_instagram"><i class="fa fa-linkedin"></i></a></li>
	 					<li><a href="https://plus.google.com/" class="w3_google"><i class="fa fa-google-plus"></i></a></li>
	 				</ul>
	 			</div>
	 			<div class="col-md-4 w3layouts_footer_grid" data-aos="fade-down">
	 				<h2>Subscribe Newsletter</h2>
	 				<p>By subscribing to our mailing list you will always get latest news from us.</p>
	 				<form action="#" method="post">
	 					<input type="email" name="Email" placeholder="Enter your email..." required="">
	 					<button class="btn1"><i class="fa fa-envelope-o" aria-hidden="true"></i></button>
	 					<div class="clearfix"> </div>
	 				</form>
	 			</div>
	 			<div class="col-md-4 w3layouts_footer_grid" data-aos="fade-left">
	 				<h3>Recent Events</h3>
	 					<ul class="con_inner_text midimg">
	 					<li><a href="#" data-toggle="modal" data-target="#myModal"><img src="assets/frontimages/g2.jpg" alt="" class="img-responsive" /></a></li>
	 						<li><a href="#" data-toggle="modal" data-target="#myModal"><img src="assets/frontimages/g3.jpg" alt="" class="img-responsive" /></a></li>
	 					<li><a href="#" data-toggle="modal" data-target="#myModal"><img src="assets/frontimages/g4.jpg" alt="" class="img-responsive" /></a></li>
	 					<li><a href="#" data-toggle="modal" data-target="#myModal"><img src="assets/frontimages/g5.jpg" alt="" class="img-responsive" /></a></li>
	 					<li><a href="#" data-toggle="modal" data-target="#myModal"><img src="assets/frontimages/g6.jpg" alt="" class="img-responsive" /></a></li>
	 						<li><a href="#" data-toggle="modal" data-target="#myModal"><img src="assets/frontimages/g7.jpg" alt="" class="img-responsive" /></a></li>
	 					 <li><a href="#" data-toggle="modal" data-target="#myModal"><img src="assets/frontimages/g8.jpg" alt="" class="img-responsive" /></a></li>
	 					<li><a href="#" data-toggle="modal" data-target="#myModal"><img src="assets/frontimages/g1.jpg" alt="" class="img-responsive" /></a></li>
	 					 </ul>

	 			</div>
	 			<div class="clearfix"> </div>
	 		</div>
	 		</div>
	 		<p class="copyright" data-aos="zoom-in">© 2018 | Creathon | All Rights Reserved | Design by <a href="http://www.istudentlabs.com/" target="_blank">Istudent Labs.</a></p>
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
	 				$(window).load(function(){
	 					$('.flexslider').flexslider({
	 					animation: "slide",
	 					start: function(slider){
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
	 		speed: 0.5,
	 		imgWidth: 1366,
	 		imgHeight: 768
	 	})
	 </script><!-- here stars scrolling icon -->
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

	 		$().UItoTop({ easingType: 'easeOutQuart' });

	 		});
	 </script>
	 <!-- //here ends scrolling icon -->
	 <!-- scrolling script -->
	 <script type="text/javascript">
	 jQuery(document).ready(function($) {
	 	$(".scroll").click(function(event){
	 		event.preventDefault();
	 		$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
	 	});
	 });
	 </script>
	 <!-- //scrolling script -->
	 <!-- animation effects-js files-->
	 <script src="assets/js/front/aos.js"></script><!-- //animation effects-js-->
	 <script src="assets/js/front/aos1.js"></script><!-- //animation effects-js-->
	 <!-- animation effects-js files-->

	 </body>
	 </html>
