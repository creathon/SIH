<%@page import="java.io.File"%>
<%@include file="include/header_agency.jsp"%>
<%@include file="include/sidebar_agency.jsp"%>


<section class="content">

	<div class="container-fluid">
		<div class="block-header">
			<div class="body">
				<c:if test="${not empty error}">
					<div class="alert bg-pink alert-dismissible" role="alert">
						<button type="button" class="close" data-dismiss="alert"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						${error}
					</div>
				</c:if>
				<c:if test="${not empty success}">
					<div class="alert bg-green alert-dismissible" role="alert">
						<button type="button" class="close" data-dismiss="alert"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						${success}
					</div>
				</c:if>
			</div>

			<ol class="breadcrumb">
				<li><a href="/creathon">Home</a></li>
				<li><a href="/creathon/manageApplications">Manage
						Application</a></li>
				<li class="active">View Application Details</li>
			</ol>
		</div>
		<!-- 
			<h2>
				ADD LOCATION
			</h2> -->
	</div>

	<form:form action="updateManageApplicationDetails" method="POST"
		modelAttribute="shootApplication">

		<!-- Basic Validation -->
		<div class="row clearfix">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="card">
					<div class="header">
						<h2>PRODUCTION HOUSE DETAILS</h2>
					</div>
					<div class="body">

						<div class="row clearfix">
							<div class="col-md-4">
								<b>Production House Name</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="productionHouse.name"
											placeholder="production house name" required="true"
											disabled="true" />
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<b>Producer Name</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="productionHouse.producerName"
											placeholder="Producer Name" required="true" disabled="true" />
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<b>Phone No</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="productionHouse.phoneNo"
											placeholder="production house phone no" required="true"
											disabled="true" />
									</div>
								</div>
							</div>
						</div>
						<div class="row clearfix">
							<div class="col-md-4">
								<b>Email</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="productionHouse.emailId"
											placeholder="production house email id.." required="true"
											disabled="true" />
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<b>Contact Person</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="productionHouse.contactPerson"
											placeholder="contact person" required="true" disabled="true" />
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<b>Producer Aadhar No</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="productionHouse.producerAadhar"
											placeholder="producer aadhar" required="true" disabled="true" />
									</div>
								</div>
							</div>
						</div>


					</div>
				</div>
			</div>
		</div>
		<!-- #END# Basic Validation -->
		
		<!-- Basic Validation -->
		<div class="row clearfix">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="card">
					<div class="header">
						<h2>FILM DETAILS</h2>
					</div>
					<div class="body">

						<div class="row clearfix">
							<div class="col-md-4">
								<b>Film Name</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="film.name"
											placeholder="film name" required="true"
											disabled="true" />
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<b>Director</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="film.director.name"
											placeholder="director Name" required="true" disabled="true" />
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<b>Banner Name</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="film.nameOfBanner"
											placeholder="banner name" required="true"
											disabled="true" />
									</div>
								</div>
							</div>
						</div>
						<div class="row clearfix">
							<div class="col-md-4">
								<b>Type of film</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="film.typeOfFilm"
											placeholder="type of film.." required="true"
											disabled="true" />
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<b>Nature Of Film</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="film.natureOfFilm"
											placeholder="nature of film" required="true" disabled="true" />
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<b>Main Actress</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="film.mainActor"
											placeholder="Lead Actor" required="true" disabled="true" />
									</div>
								</div>
							</div>
						</div>
						
						<div class="row clearfix">
							<div class="col-md-4">
								<b>Main Actress</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="film.mainActress"
											placeholder="lead actress.." required="true"
											disabled="true" />
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<b>Cinematographer</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="film.cinematographer.name"
											placeholder="Cinematographer" required="true" disabled="true" />
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<b>Local Line Producer</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="film.localLineProducer.name"
											placeholder="Local line producer name" required="true" disabled="true" />
									</div>
								</div>
							</div>
						</div>
						
						<div class="row clearfix">
							<div class="col-md-4">
								<b>Art Director</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="film.artDirector.name"
											placeholder="Art Director" required="true"
											disabled="true" />
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<b>Language of Film</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="film.language"
											placeholder="Film language" required="true" disabled="true" />
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<b>No of People in Film</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="film.noOfPeopleInFilm"
											placeholder="No of People in Film" required="true" disabled="true" />
									</div>
								</div>
							</div>
						</div>
						
						<div class="row clearfix">
							<div class="col-md-4">
								<b>Certificate Imap</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="film.certificateImap"
											placeholder="Certificate Imap" required="true"
											disabled="true" />
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<b>Certificate Wifpa</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="film.certificateWifpa"
											placeholder="Film language" required="true" disabled="true" />
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<b>Synopsis of film</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="film.synopsisOfFilm"
											placeholder="Synopsis of film" required="true" disabled="true" />
									</div>
								</div>
							</div>
						</div>


					</div>
				</div>
			</div>
		</div>
		<!-- #END# Basic Validation -->
		
		<!-- Basic Validation -->
		<div class="row clearfix">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="card">
					<div class="header">
						<h2>LOCATION DETAILS</h2>
					</div>
					<div class="body">

						<div class="row clearfix">
							<div class="col-md-4">
								<b>Location Name</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="location.name"
											placeholder="location name" required="true"
											disabled="true" />
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<b>Location Type</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="location.type"
											placeholder="Location type" required="true" disabled="true" />
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<b>Location Cost</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="location.price"
											placeholder="location price" required="true"
											disabled="true" />
									</div>
								</div>
							</div>
						</div>
						

					</div>
				</div>
			</div>
		</div>
		<!-- #END# Basic Validation -->
		
		<!-- Basic Validation -->
		<div class="row clearfix">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="card">
					<div class="header">
						<h2>DRONE/AEROPLANE DETAILS</h2>
					</div>
					<div class="body">

						<div class="row clearfix">
							<div class="col-md-4">
								<b>Cameraman Name</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="aerialPhotography.cameramanId.name"
											placeholder="Cameraman Name" required="true"
											disabled="true" />
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<b>Purpose of Photography</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="aerialPhotography.purposeOfPhotography"
											placeholder="Purpose of Photography" required="true" disabled="true" />
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<b>Height of Flight</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="aerialPhotography.heightOfFlight"
											placeholder="Height of Flight" required="true"
											disabled="true" />
									</div>
								</div>
							</div>
						</div>
						
						<div class="row clearfix">
							<div class="col-md-4">
								<b>Formal Size</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="aerialPhotography.formalSize"
											placeholder="Formal Size" required="true"
											disabled="true" />
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<b>Type of Camera</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="aerialPhotography.typeOfCamera"
											placeholder="Type of Camera" required="true" disabled="true" />
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<b>Type of Sensor</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="aerialPhotography.typeOfSensor"
											placeholder="Type of Sensor" required="true"
											disabled="true" />
									</div>
								</div>
							</div>
						</div>
						
						<div class="row clearfix">
							<div class="col-md-4">
								<b>Date of Photography</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="aerialPhotography.dateOfPhotography"
											placeholder="Date of Photography" required="true"
											disabled="true" />
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<b>Description of Aircraft</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="aerialPhotography.descriptionOfAircraft"
											placeholder="Description of aircraft" required="true" disabled="true" />
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<b>Name of Pilot</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="aerialPhotography.nameOfPilot"
											placeholder="Name of Pilot" required="true"
											disabled="true" />
									</div>
								</div>
							</div>
						</div>
						
						<div class="row clearfix">
							<div class="col-md-4">
								<b>Focal Length of Camera</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="aerialPhotography.focalLengthOfCamera"
											placeholder="Focal Length of Camera" required="true"
											disabled="true" />
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<b>Owner of Aircraft</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="aerialPhotography.ownerOfAircraft"
											placeholder="Owner of Aircraft" required="true" disabled="true" />
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<b>Name of Aircraft</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="aerialPhotography.nameOfAircraft"
											placeholder="Name of Aircraft" required="true"
											disabled="true" />
									</div>
								</div>
							</div>
						</div>
													

					</div>
				</div>
			</div>
		</div>
		<!-- #END# Basic Validation -->
		
		<!-- Basic Validation -->
		<div class="row clearfix">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="card">
					<div class="header">
						<h2>BOOKING DETAILS</h2>
					</div>
					<div class="body">

						<div class="row clearfix">
							<div class="col-md-4">
								<b>No of Cast In Film</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="noPeopleInCast"
											placeholder="no of people in cast" required="true"
											disabled="true" />
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<b>Date of Shooting</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="dateOfShooting"
											placeholder="Date of Shooting" required="true" disabled="true" />
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<b>Time of Shooting</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="timeOfShooting"
											placeholder="Time of Shooting" required="true"
											disabled="true" />
									</div>
								</div>
							</div>
						</div>
						
						<div class="row clearfix">
							<div class="col-md-4">
								<b>Place of Stay</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="placeOfStay"
											placeholder="Place of Stay" required="true"
											disabled="true" />
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<b>Period of Stay</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="periodOfStay"
											placeholder="Period of Stay" required="true" disabled="true" />
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<b>Equipments to be used</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="equipmentToBeUsed"
											placeholder="Equipments to be used" required="true"
											disabled="true" />
									</div>
								</div>
							</div>
						</div>
						
						
						<div class="row clearfix">
							<div class="col-md-4">
								<b>Date of Release</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="dateOfRelease"
											placeholder="Date of Release" required="true"
											disabled="true" />
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<b>Filming in any forest area</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="filmingInAnyForestArea"
											placeholder="Filming in any forest area" required="true" disabled="true" />
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<b>Details of forest area</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="detailOfForestArea"
											placeholder="Details of forest area" required="true"
											disabled="true" />
									</div>
								</div>
							</div>
						</div>
						
						<div class="row clearfix">
							<div class="col-md-4">
								<b>Filming in any defense area</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="filmingInAnyDefenseArea"
											placeholder="Filming in any defense area" required="true"
											disabled="true" />
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<b>Details of defense area</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="detailOfDefenseArea"
											placeholder="Details of defense area" required="true" disabled="true" />
									</div>
								</div>
							</div>
							<%-- <div class="col-md-4">
								<b>Details of forest area</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="detailOfForestArea"
											placeholder="Details of forest area" required="true"
											disabled="true" />
									</div>
								</div>
							</div> --%>
						</div>
						

					</div>
				</div>
			</div>
		</div>
		<!-- #END# Basic Validation -->
		
		<c:forEach items="${shootApplication.locationPermissions}" var="locationPermission">
			<!-- Basic Validation -->
		<div class="row clearfix">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="card">
					<div class="header">
						<h2>${locationPermission.agency.name} PERMISSION DETAILS</h2>
					</div>
					<div class="body">

						<div class="row clearfix">
							<div class="col-md-4">
								<b>Agency Name</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="" value="${locationPermission.agency.name}"
											placeholder="Status" required="true" disabled="true" />
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<b>Status</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="" value="${locationPermission.status.name}"
											placeholder="Status" required="true" disabled="true" />
									</div>
								</div>
							</div>
							<div class="col-md-4">
								<b>Comments</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="" value="${locationPermission.comments}"
											placeholder="comments" required="true"
											disabled="true" />
									</div>
								</div>
							</div>
						</div>
						

					</div>
				</div>
			</div>
		</div>
		<!-- #END# Basic Validation -->
		</c:forEach>
		
		
		
	</form:form>
	</div>
	</div>
</section>
<%@include file="include/footer.jsp"%>