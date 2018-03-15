<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<title>Praadis Training</title>
<!-- Favicon-->
<link rel="icon" href="assets/favicon.ico" type="image/x-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Bootstrap Core Css -->
<link href="assets/plugins/bootstrap/css/bootstrap.css" rel="stylesheet">

<!-- Bootstrap Select Css -->
<link href="assets/plugins/bootstrap-select/css/bootstrap-select.css"
	rel="stylesheet" />

<!-- Waves Effect Css -->
<link href="assets/plugins/node-waves/waves.css" rel="stylesheet" />

<!-- Animation Css -->
<link href="assets/plugins/animate-css/animate.css" rel="stylesheet" />

<!-- Sweet Alert Css -->
<link href="assets/plugins/sweetalert/sweetalert.css" rel="stylesheet" />

<!-- JQuery DataTable Css -->
<link
	href="assets/plugins/jquery-datatable/skin/bootstrap/css/dataTables.bootstrap.css"
	rel="stylesheet">

<!-- Bootstrap Material Datetime Picker Css -->
<link
	href="assets/plugins/bootstrap-material-datetimepicker/css/bootstrap-material-datetimepicker.css"
	rel="stylesheet" />

<!-- Wait Me Css -->
<link href="assets/plugins/waitme/waitMe.css" rel="stylesheet" />

<!-- Custom Css -->
<link href="assets/css/style.css" rel="stylesheet">
<!-- Morris Css -->
    <link href="assets/plugins/morrisjs/morris.css" rel="stylesheet" />

<!-- Multi Select Css -->
<link href="assets/plugins/multi-select/css/multi-select.css"
	rel="stylesheet">

<!-- AdminBSB Themes. You can choose a theme from css/themes instead of get all themes -->
<link href="assets/css/themes/all-themes.css" rel="stylesheet" />

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script>
function onlyAlphabets(e, t) {
    try {
        if (window.event) {
            var charCode = window.event.keyCode;
        }
        else if (e) {
            var charCode = e.which;
        }
        
        if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123) || charCode == 32){
        	
            return true;
        }else{
        	
        
            return false;
        }
    }
    catch (err) {
        alert(err.Description);
    }
}


function isNumberKey(evt)
{
   var charCode = (evt.which) ? evt.which : evt.keyCode;
  // alert(charCode);
   if (charCode != 46 && charCode > 31 
     && (charCode < 48 || charCode > 57))
      return false;

   return true;
}

function isPhoneNo(evt,number)
{
	/* alert("1");
   isNumberKey(evt);
   alert("1"); */
   if (number.value.length != 10) {
	 //  alert("Please enter a valid mobile no of 10 digits!!");
	   callAlert("Please enter a valid mobile no of 10 digits!!");
	   number.value="";
	   return false;
   }
   return true;
}


function validate_fileupload(fileName)
{
    var allowed_extensions = new Array("jpg","png","gif");
    var file_extension = fileName.split('.').pop().toLowerCase(); // split function will split the filename by dot(.), and pop function will pop the last element from the array which will give you the extension as well. If there will be no extension then it will return the filename.

    for(var i = 0; i <= allowed_extensions.length; i++)
    {
        if(allowed_extensions[i]==file_extension)
        {
            return true; // valid file extension
        }
    }

    return false;
}
</script>
<script>
	function setProfilePic() {

	}
	

	function fileValidation(){
	    var fileInput = document.getElementById('imgInp');
	    var filePath = fileInput.value;
	    var allowedExtensions = /(\.jpg|\.jpeg|\.png|\.gif)$/i;
	    if(!allowedExtensions.exec(filePath)){
	    	callAlert("Please upload file having extensions .jpeg/.jpg/.png/.gif only.");
	        //alert('Please upload file having extensions .jpeg/.jpg/.png/.gif only.');
	        document.getElementById('imagePreview').innerHTML = 'Please upload file having extensions .jpeg/.jpg/.png/.gif only.';
	        document.getElementById('imagePreview').style = 'display:block';
	        fileInput.value = '';
	        return false;
	    }else{
	        //Image preview
	        if (fileInput.files && fileInput.files[0]) {
	            var reader = new FileReader();
	            reader.onload = function(e) {
	                //document.getElementById('imagePreview').innerHTML = '<img src="'+e.target.result+'"/>';
	                document.getElementById('imagePreview').style = 'display:none';
	            };
	            reader.readAsDataURL(fileInput.files[0]);
	        }
	    }
	}
	
	function fileValidation1(){
	    var fileInput = document.getElementById('imgInp1');
	    var filePath = fileInput.value;
	    var allowedExtensions = /(\.jpg|\.jpeg|\.png|\.gif)$/i;
	    if(!allowedExtensions.exec(filePath)){
	    	callAlert("Please upload file having extensions .jpeg/.jpg/.png/.gif only.");
	        //alert('Please upload file having extensions .jpeg/.jpg/.png/.gif only.');
	        document.getElementById('imagePreview').innerHTML = 'Please upload file having extensions .jpeg/.jpg/.png/.gif only.';
	        document.getElementById('imagePreview').style = 'display:block';
	        fileInput.value = '';
	        return false;
	    }else{
	        //Image preview
	        if (fileInput.files && fileInput.files[0]) {
	            var reader = new FileReader();
	            reader.onload = function(e) {
	                //document.getElementById('imagePreview').innerHTML = '<img src="'+e.target.result+'"/>';
	                document.getElementById('imagePreview').style = 'display:none';
	            };
	            reader.readAsDataURL(fileInput.files[0]);
	        }
	    }
	}
</script>
</head>

<body class="theme-red" >
	<!-- Page Loader -->
	<div class="page-loader-wrapper">
		<div class="loader">
			<div class="preloader">
				<div class="spinner-layer pl-red">
					<div class="circle-clipper left">
						<div class="circle"></div>
					</div>
					<div class="circle-clipper right">
						<div class="circle"></div>
					</div>
				</div>
			</div>
			<p>Please wait...</p>
		</div>
	</div>
	<!-- #END# Page Loader -->
	<!-- Overlay For Sidebars -->
	<div class="overlay"></div>
	<!-- #END# Overlay For Sidebars -->
	<!-- Search Bar -->
	<!-- <div class="search-bar">
		<div class="search-icon">
			<i class="material-icons">search</i>
		</div>
		<input type="text" placeholder="START TYPING...">
		<div class="close-search">
			<i class="material-icons">close</i>
		</div>
	</div> -->
	<!-- #END# Search Bar -->
	<!-- Top Bar -->
	<nav class="navbar">
		<div class="container-fluid">
			<div class="navbar-header">
				<a href="javascript:void(0);" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar-collapse"
					aria-expanded="false"></a> <a href="javascript:void(0);"
					class="bars"></a> <a class="navbar-brand"
					href="<%=request.getContextPath()%>/">Praadis Training</a>
			</div>
			<div class="collapse navbar-collapse" id="navbar-collapse">
				<ul class="nav navbar-nav navbar-right">
					<!-- Call Search -->
					<!-- <li><a href="javascript:void(0);" class="js-search"
						data-close="true"><i class="material-icons">search</i></a></li> -->
					<!-- #END# Call Search -->
					<!-- Notifications -->
					<!-- <li class="dropdown"><a href="javascript:void(0);"
						class="dropdown-toggle" data-toggle="dropdown" role="button">
							<i class="material-icons">notifications</i> <span
							class="label-count">7</span>
					</a>
						<ul class="dropdown-menu">
							<li class="header">NOTIFICATIONS</li>
							<li class="body">
								<ul class="menu">
									<li><a href="javascript:void(0);">
											<div class="icon-circle bg-light-green">
												<i class="material-icons">person_add</i>
											</div>
											<div class="menu-info">
												<h4>12 new members joined</h4>
												<p>
													<i class="material-icons">access_time</i> 14 mins ago
												</p>
											</div>
									</a></li>
									<li><a href="javascript:void(0);">
											<div class="icon-circle bg-cyan">
												<i class="material-icons">add_shopping_cart</i>
											</div>
											<div class="menu-info">
												<h4>4 sales made</h4>
												<p>
													<i class="material-icons">access_time</i> 22 mins ago
												</p>
											</div>
									</a></li>
									<li><a href="javascript:void(0);">
											<div class="icon-circle bg-red">
												<i class="material-icons">delete_forever</i>
											</div>
											<div class="menu-info">
												<h4>
													<b>Nancy Doe</b> deleted account
												</h4>
												<p>
													<i class="material-icons">access_time</i> 3 hours ago
												</p>
											</div>
									</a></li>
									<li><a href="javascript:void(0);">
											<div class="icon-circle bg-orange">
												<i class="material-icons">mode_edit</i>
											</div>
											<div class="menu-info">
												<h4>
													<b>Nancy</b> changed name
												</h4>
												<p>
													<i class="material-icons">access_time</i> 2 hours ago
												</p>
											</div>
									</a></li>
									<li><a href="javascript:void(0);">
											<div class="icon-circle bg-blue-grey">
												<i class="material-icons">comment</i>
											</div>
											<div class="menu-info">
												<h4>
													<b>John</b> commented your post
												</h4>
												<p>
													<i class="material-icons">access_time</i> 4 hours ago
												</p>
											</div>
									</a></li>
									<li><a href="javascript:void(0);">
											<div class="icon-circle bg-light-green">
												<i class="material-icons">cached</i>
											</div>
											<div class="menu-info">
												<h4>
													<b>John</b> updated status
												</h4>
												<p>
													<i class="material-icons">access_time</i> 3 hours ago
												</p>
											</div>
									</a></li>
									<li><a href="javascript:void(0);">
											<div class="icon-circle bg-purple">
												<i class="material-icons">settings</i>
											</div>
											<div class="menu-info">
												<h4>Settings updated</h4>
												<p>
													<i class="material-icons">access_time</i> Yesterday
												</p>
											</div>
									</a></li>
								</ul>
							</li>
							<li class="footer"><a href="javascript:void(0);">View
									All Notifications</a></li>
						</ul></li> -->
					<!-- #END# Notifications -->
					<!-- Tasks -->
					<!-- <li class="dropdown"><a href="javascript:void(0);"
						class="dropdown-toggle" data-toggle="dropdown" role="button">
							<i class="material-icons">flag</i> <span class="label-count">9</span>
					</a>
						<ul class="dropdown-menu">
							<li class="header">TASKS</li>
							<li class="body">
								<ul class="menu tasks">
									<li><a href="javascript:void(0);">
											<h4>
												Footer display issue <small>32%</small>
											</h4>
											<div class="progress">
												<div class="progress-bar bg-pink" role="progressbar"
													aria-valuenow="85" aria-valuemin="0" aria-valuemax="100"
													style="width: 32%"></div>
											</div>
									</a></li>
									<li><a href="javascript:void(0);">
											<h4>
												Make new buttons <small>45%</small>
											</h4>
											<div class="progress">
												<div class="progress-bar bg-cyan" role="progressbar"
													aria-valuenow="85" aria-valuemin="0" aria-valuemax="100"
													style="width: 45%"></div>
											</div>
									</a></li>
									<li><a href="javascript:void(0);">
											<h4>
												Create new dashboard <small>54%</small>
											</h4>
											<div class="progress">
												<div class="progress-bar bg-teal" role="progressbar"
													aria-valuenow="85" aria-valuemin="0" aria-valuemax="100"
													style="width: 54%"></div>
											</div>
									</a></li>
									<li><a href="javascript:void(0);">
											<h4>
												Solve transition issue <small>65%</small>
											</h4>
											<div class="progress">
												<div class="progress-bar bg-orange" role="progressbar"
													aria-valuenow="85" aria-valuemin="0" aria-valuemax="100"
													style="width: 65%"></div>
											</div>
									</a></li>
									<li><a href="javascript:void(0);">
											<h4>
												Answer GitHub questions <small>92%</small>
											</h4>
											<div class="progress">
												<div class="progress-bar bg-purple" role="progressbar"
													aria-valuenow="85" aria-valuemin="0" aria-valuemax="100"
													style="width: 92%"></div>
											</div>
									</a></li>
								</ul>
							</li>
							<li class="footer"><a href="javascript:void(0);">View
									All Tasks</a></li>
						</ul></li> -->
					<!-- #END# Tasks -->
					<li class="pull-right"><a href="javascript:void(0);"
						class="js-right-sidebar" data-close="true"><i
							class="material-icons">more_vert</i></a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- #Top Bar -->