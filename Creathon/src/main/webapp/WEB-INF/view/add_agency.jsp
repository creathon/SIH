<%-- <%@include file="include/header.jsp"%>
<%@include file="include/sidebar.jsp"%> --%>


<!-- testing
 -->
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
				  $("#stateId").selectpicker("refresh");
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
				 $("#cityId").selectpicker("refresh");
			});
}
</script>
<section class="content">
	<div class="container-fluid">
		<div class="block-header">
		<div class="body">
					<c:if test="${not empty error}">
						<script>
								window.onload = function() {
									/* callAlert("${error}"); */
									callErrorAlert("Error!!", "${error}")
								}
							</script>
					</c:if>
					<c:if test="${not empty success}">
						<script>
								window.onload = function() {
									callImageAlert("Success", "${success}");
								}
							</script>
					</c:if>
				<!-- <ol class="breadcrumb">
					<li><a href="/creathon">Home</a></li>
					<li><a href="javascript:void(0);">Masters</a></li>
					<li class="active">Add Agency</li>
				</ol> -->
			</div>
			<!-- <h2>ADD AGENCY</h2> -->
		</div>
		<!-- Basic Validation -->
		<div class="row clearfix">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="card">
					<div class="header">
						<h2>ADD AGENCY DETAILS</h2>
					</div>
					<div class="body">
						<form:form class="creathon_login"  id="form_validation" method="POST" action="saveAgency" modelAttribute="agency" enctype="multipart/form-data">
						
						 <h1 class="welcome text-center">Log In</h1>
                  <hr>
							<div class="form-group col-md-12">
								<div class="form-group form-float">
									<div class="form-line">
										<form:input type="text" class="form-control" path="name" name="agency_name" required="true"/> <label class="form-label">Agency
											Name</label>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-float">
									<div class="form-line">
										<form:input type="email" class="form-control" path="email" name="email" required="true"/>
										<label class="form-label">Email</label>
									</div>
								</div>
							</div>
							<div class="col-sm-4">
							<label class="form-label">Select Country</label>
								<form:select class="form-control show-tick" path="addressId.country.id" onchange="getState(this.value)">
									<option value="">-- Country --</option>
									<c:forEach items="${countryList}" var="cl">
									<option value="${cl.id}">${cl.name}</option>
										</c:forEach>
								</form:select>
							</div>
							<div class="col-sm-4">
							<label class="form-label">Select State</label>
								<form:select class="form-control show-tick" onchange="getCity(this.value)" id="stateId" path="addressId.state.id">
									<option value="">-- State --</option>
									
									<c:forEach items="${stateList}" var="sl">
													<option value="${sl.id}">${sl.name}</option>
										</c:forEach>
								</form:select>
							</div>
							<div class="col-sm-4">
							<label class="form-label">Select City</label>
								<form:select class="form-control show-tick" id="cityId" path="addressId.city.id">
									<c:forEach items="${stateList}" var="sl">
													<option value="${sl.id}">${sl.name}</option>
										</c:forEach>
								</form:select>
							</div>
							<div class="col-md-6">
								<div class="form-group form-float">
									<div class="form-line">
										<form:input type="text" path="addressId.landmark" class="form-control" name="landmark"
											required="true"/> <label class="form-label">Landmark</label>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-float">
									<div class="form-line">
										<form:input type="text" path="addressId.street" class="form-control" name="street" required="true"/>
										<label class="form-label">Street</label>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-float">
									<div class="form-line">
										<form:input type="text" path="addressId.pincode" class="form-control" name="pincode"
											required="true"/> <label class="form-label">Pincode</label>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-float">
									<div class="form-line">
										<form:input type="text" path="addressId.buildingNo" class="form-control" name="building_no"
											required="true"/> <label class="form-label">Flat no /
											Building name</label>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-float">
									<div class="form-line">
										<form:input type="text" path="representativeName" class="form-control"
											name="representative_name" required="true"/> <label
											class="form-label">Representative Name</label>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-float">
									<div class="form-line">
										<form:input type="text" path="representativeContactNo" class="form-control" name="rep_cont_no"
											required="true"/> <label class="form-label">Representative
											contact no</label>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-float">
									<div class="form-line">
										<form:input type="email" path="representativeEmail" class="form-control" name="rep_email"
											required="true"/> <label class="form-label">Representative
											email</label>
									</div>
								</div>
							</div>
						
							<div class="col-md-6">
								<div class="form-group form-float">
									<label class="form-label">Agency profile pic</label>
									<div class="form-line">
										<form:input type="file" class="form-control" name="agency_profile" path="agencyPhoto"
											required="true"/>

									</div>
								</div>
							</div>
							<div class="col-md-6">
							<label class="form-label">Select Type</label>
								<form:select class="form-control show-tick" path="type">
									<option value="">-- Type --</option>
									<option value="w">Without Location</option>
									<option value="wo">With Location</option>
								</form:select>
							</div>
							<button class="btn btn-primary waves-effect" type="submit">SUBMIT</button>
						</form:form>
					</div>
				</div>
			</div>
		</div>
		<!-- #END# Basic Validation -->

	</div>
</section>
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

<%-- <%@include file="include/footer.jsp"%> --%>