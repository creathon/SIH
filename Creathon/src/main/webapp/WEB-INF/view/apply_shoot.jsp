
<%@include file="include/header_producer.jsp"%>
<%@include file="include/sidebar_producer.jsp"%>
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
				<ol class="breadcrumb">
					<li><a href="/creathon">Home</a></li>
					<li><a href="javascript:void(0);">Masters</a></li>
					<li class="active">Add Agency</li>
				</ol>
			</div>
			<!-- <h2>ADD AGENCY</h2> -->
		</div>

				<div class="row clearfix">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="card">
							<div class="header">
								<h2>Apply For Shoot</h2>
							</div>
							<div class="body">


								<form:form action="saveshoot" modelAttribute="shootApplication"
									method="post" enctype="multipart/form-data">

									<div class="col-sm-4">
										<form:select path="film.id">
											<option>---Select Film</option>
											<c:forEach items="${filmList}" var="fl">
												<option value="${fl.id}">${fl.name}</option>
											</c:forEach>
										</form:select>
									</div>


									<div class="col-sm-4">
										<select onchange="return findLocation(this.value)">
											<option>---Select Agency---</option>
											<c:forEach items="${agencyList}" var="fl">
												<option value="${fl.id}">${fl.name}</option>
											</c:forEach>
										</select>
									</div>

									<div class="col-sm-4">
										<form:select path="location.id" id="location">
											<option>---Select Location---</option>
										</form:select>
									</div>

									<div class="col-md-6">
										<div class="form-group form-float">
											<div class="form-line">
												<form:input class="form-control" type="text"
													placeholder="NO of people in Cast" path="noPeopleInCast" />
											</div>
										</div>
									</div>

									<div class="col-md-6">
										<div class="form-group form-float">
											<div class="form-line">
												<form:input type="text" class="datepicker form-control"
													placeholder="dateOfShooting" path="dateOfShooting" />
											</div>
										</div>
									</div>

									<div class="col-md-6">
										<div class="form-group form-float">
											<div class="form-line">
												<form:input type="text" class="timepicker form-control"
													placeholder="timeOfShooting" path="timeOfShooting" />
											</div>
										</div>
									</div>

									<div class="col-md-6">
										<div class="form-group form-float">
											<div class="form-line">

												<form:input class="form-control" type="file"
													path="script.scriptFile" />
											</div>
										</div>
									</div>

									<div class="col-md-6">
										<div class="form-group form-float">
											<div class="form-line">
												<form:input class="form-control" type="text"
													placeholder="Place Of Stay" path="placeOfStay" />
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group form-float">
											<div class="form-line">
												<form:input class="form-control" type="text"
													placeholder="Period Of Stay" path="periodOfStay" />
											</div>
										</div>										
										</div>
									
									<div class="col-md-6">
										<div class="form-group form-float">
											<div class="form-line">
												<form:textarea class="form-control" path="equipmentToBeUsed"
													placeholder="Equipment to be userd" />
											</div>
										</div>
									</div>

									<div class="col-md-6">
										<div class="form-group form-float">
											<div class="form-line">
												<form:input placeHolder="Date Of Release"
													class="datepicker form-control" path="dateOfRelease"
													type="text" />
											</div>
										</div>
									</div>
									<div class="col-md-6">

										<h2 class="card-inside-title">Are you filming in any
											forest area</h2>
										<div class="demo-radio-button">
											<form:radiobutton name="group5"
												class="with-gap radio-col-pink" value="1" label="Yes"
												path="filmingInAnyForestArea"
												onclick="showhide(this.value,'forest')" />
											<form:radiobutton name="group5"
												class="with-gap radio-col-pink" selected="true" label="no"
												value="0" path="filmingInAnyForestArea"
												onclick="showhide(this.value,'forest')" checked="true" />

										</div>
									</div>



									<div class="col-md-6" id="forest" style="display:none;">
										<div class="form-group form-float">
											<div class="form-line">
												<form:textarea placeholder="Details Of Forest Area"
													path="detailOfForestArea"  />
											</div>
										</div>
									</div>


									<div class="col-md-6">

										<h2 class="card-inside-title">Are you Defense in any area</h2>
										<div class="demo-radio-button">
											<form:radiobutton label="Yes" class="with-gap radio-col-pink"
												value="1" path="filmingInAnyDefenseArea"
												onclick="showhide(this.value,'defence')" />
	<form:radiobutton label="No" class="with-gap radio-col-pink" value="0" path="filmingInAnyDefenseArea"
												onclick="showhide(this.value,'defence')" checked="true"/>

										</div>
									</div>

						<div class="col-md-6" id="defence" style="display:none;">
										<div class="form-group form-float">
											<div class="form-line">
												<form:textarea placeholder="Details Of Defence Area"
													path="detailOfDefenseArea"  />
											</div>
										</div>
										</div>
									


									<div class="col-md-6">
				
										<h2 class="card-inside-title">Are you Doing Aerial
											Shooting</h2>
										<div class="demo-radio-button">
											<input type="radio" class="with-gap radio-col-pink" id="r1"
												name="a" value="1"
												onclick="return showhide(this.value,'areial')" checked> <label
												for="r1">Yes</label>
									
											<input type="radio"
												class="with-gap radio-col-pink" id="r2" name="a" value="0"
												onclick="return showhide(this.value,'areial')" >
												<label for="r2">No</label>
										</div>


</div>


										<div id="areial"> <!-- style="display: none;" -->>
											<div class="col-sm-4">
												<form:select path="aerialPhotography.cameramanId.id">
													<option value="">---Select CameraMan---</option>
													<c:forEach items="${cameramanList}" var="cl">
														<option value="${cl.id}">${cl.name}</option>
													</c:forEach>
												</form:select>
											</div>
											<div class="col-md-6">
												<div class="form-group form-float">
													<div class="form-line">
														<form:input class="form-control" placeholder="purposeOfPhotography"
															path="aerialPhotography.purposeOfPhotography" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group form-float">
													<div class="form-line">
											<form:input  class="form-control" placeholder="focalLengthOfCamera"
												path="aerialPhotography.focalLengthOfCamera" />
												</div>
												</div>
												</div>
												<div class="col-md-6">
												<div class="form-group form-float">
													<div class="form-line">
											<form:input class="form-control" placeholder="heightOfFlight"
												path="aerialPhotography.heightOfFlight" />
												</div>
												</div>
												</div>
												<div class="col-md-6">
												<div class="form-group form-float">
													<div class="form-line">
											<form:input class="form-control" placeholder="formalSize"
												path="aerialPhotography.formalSize" />
												</div>
												</div>
												</div>
												<div class="col-md-6">
												<div  class="form-group form-float">
													<div class="form-line">
											<form:input class="form-control" placeholder="typeOfCamera"
												path="aerialPhotography.typeOfCamera" />
												</div>
												</div>
												</div>
												<div class="col-md-6">
												<div class="form-group form-float">
													<div class="form-line">
											<form:input class="form-control" placeholder="typeOfSensor"
												path="aerialPhotography.typeOfSensor" />
												</div>
												</div>
												</div>
												<div class="col-md-6">
												<div class="form-group form-float">
													<div class="form-line">
											<form:input placeholder="dateOfPhotography"
												class="datepicker form-control"
												path="aerialPhotography.dateOfPhotography" />
												</div>
												</div>
												</div>
												
												<div class="col-md-6">
												<div class="form-group form-float">
													<div class="form-line">
											<form:input class="form-control" placeholder="descriptionOfAircraft"
												path="aerialPhotography.descriptionOfAircraft" />
												</div>
												</div>
												</div>
														<div class="col-md-6">
												<div class="form-group form-float">
													<div class="form-line">
											<form:input class="form-control"   placeholder="nameOfPilot"
												path="aerialPhotography.nameOfPilot" />
												</div>
												</div>
												</div>
													<div class="col-md-6">
												<div class="form-group form-float">
													<div class="form-line">
											<form:input class="form-control"   placeholder="addressOfPilot"
												path="aerialPhotography.addressOfPilot" />
												</div>
												</div>
												</div>
													<div class="col-md-6">
												<div class="form-group form-float">
													<div class="form-line">
											<form:input class="form-control" placeholder="ownerOfAircraft"
												path="aerialPhotography.ownerOfAircraft" />
												</div>
												</div>
												</div>
											<form:input class="form-control" placeholder="nameOfAircraft"
												path="aerialPhotography.nameOfAircraft" />

									</div>

						

									<input type="submit" value="Apply for shoot" />
								</form:form>
							</div>
						</div>
					</div>
				</div>
				</div>
				
				
</section>


<%@include file="include/footer.jsp"%>

<script>
	function findLocation(agencyId) {
//alert(agencyId);
		$('#location').html('');
		$('#location').html('<option value="">Select Location</option>');
		
		$.ajax({
			url : "ajax/getLocation?id=" + agencyId,
			success : function(result) {
				console.log(result);
				for( i in result){
					console.log(result[i])
				$('#location').append('<option value='+result[i].id+'>'+result[i].name+'</option>');
					$('#location').selectpicker("refresh");
				}
			}
		});
	}
	
 	function showhide(value,id)
 	{
 		if(value == '0')
 			{
 			$('#'+id).hide();
 			}
 		else 		
 			{
 			$('#'+id).show();
 			}
 		
 	}
</script>

