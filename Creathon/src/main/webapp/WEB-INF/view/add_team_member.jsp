<%@include file="include/header_producer.jsp"%>
<%@include file="include/sidebar_producer.jsp"%>

<script>

function getState(countryId,id) {
	//alert("getstate"+$('#stateId'+i).find('option')	);
	alert(id);
	$('#stateId'+id).find('option').remove().end().append('<option value="">Select States</option>').val('');
	
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
				$('#stateId'+id).html(opt);
				console.log(stateList);
				  $("#stateId"+id).selectpicker("refresh");
			});
alert("doen");
}


function getCity(stateId,id) {
	alert("getCity");
	$('#cityId'+id).find('option').remove().end().append('<option value="">Select City</option>').val('');
	
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
				$('#cityId'+id).html(opt);
				 $("#cityId"+id).selectpicker("refresh");
			});
}
</script>
<section class="content">
	<div class="container-fluid">
	
	<!-- Alert div start -->
		<div class="row clearfix">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
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
				</div>
			</div>
		</div>
		<!-- Alert div end -->
	
		<div class="block-header">
			<div class="body">
				<ol class="breadcrumb">
					<li><a href="/creathon">Home</a></li>
					<li><a href="javascript:void(0);">Masters</a></li>
					<li class="active">Add Crew Member</li>
				</ol>
			</div>
			<!-- <h2>ADD AGENCY</h2> -->
		</div>
		<!-- Multi Column -->
		<div class="row clearfix">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="card">
					<div class="header">
						<h2>ADD CREW MEMBER DETAILS</h2>
					</div>
					<div class="body">
						<form:form action="saveTeamMember" method="POST" modelAttribute="teamMember">

							<div class="row clearfix">
								<div class="col-md-4">
								<b>Crew Name</b>
									<div class="form-group">
										<div class="form-line">
											<form:input type="text" class="form-control" path="name" 
												placeholder="Crew Name" required="true" />
										</div>
									</div>
								</div>
								 <div class="col-md-4">
								 <b>Fathers Name</b>
									<div class="form-group">
										<div class="form-line">
											<form:input type="text" class="form-control"
												path="fatherName" placeholder="Father's Name"
												required="true" />
										</div>
									</div>
								</div>
								<div class="col-md-4">
								<b>Email</b>
									<div class="form-group">
										<div class="form-line">
											<form:input type="email" class="form-control"
												placeholder="Email" path="email" required="true" />
										</div>
									</div>
								</div>
							</div>

							<div class="row clearfix">
								<div class="col-md-4">
								<b>Aadhhar No</b>
									<div class="form-group">
										<div class="form-line">
											<form:input type="text" class="form-control" path="aadharNo"
												placeholder="Aadhar No" required="true" />
										</div>
									</div>
								</div>
								<div class="col-sm-4">
								<b>Date of Birth</b>
									<div class="form-group">
										<div class="form-line">
											<form:input type="text" class="datepicker form-control"
												path="dateOfBirth" placeholder="Date of Birth..."
												required="true" />
										</div>
									</div>
								</div>
								<div class="col-md-4">
								<b>Place Of Birth</b>
									<div class="form-group">
										<div class="form-line">
											<form:input type="text" class="form-control" path="placeOfBirth"
												placeholder="Place of Birth" required="true" />
										</div>
									</div>
								</div>
							</div>

							<div class="row clearfix">
								<div class="col-sm-4">
								<b>Designation</b>
									<form:select class="form-control show-tick"
										path="designation.id" required="true">
										<option value="">-- Select Designation --</option>
										<c:forEach items="${designationList}" var="dl">
										<option value="${dl.id}"><c:out value="${dl.name}"></c:out></option>
									
										</c:forEach>
									</form:select>
								</div>
								<div class="col-md-4">
									 <b>Period of Visit</b>
									<div class="form-group">
										<div class="form-line">
											<form:input type="text" class="form-control"
												path="periodOfVisit" placeholder="Period of Visit"
												required="true" />
										</div>
									</div>
								</div>
								<div class="col-md-4">
								 <b>Area of Visit</b>
									<div class="form-group">
										<div class="form-line">
											<form:input type="text" class="form-control"
												path="areaOfVisit" placeholder="Area of Visit"
												required="true" />
										</div>
									</div>
								</div>
							</div>

							<div class="row clearfix">
								<div class="col-md-4">
								 <b>Passport No</b>
									<div class="form-group">
										<div class="form-line">
											<form:input type="text" class="form-control"
												path="passportNo" placeholder="Passport No" required="true" />
										</div>
									</div>
								</div>
								<div class="col-md-4"> <b>Passport Issuing Authority</b>
									<div class="form-group">
										<div class="form-line">
											<form:input type="text" class="form-control"
												path="passportIssuingAuthority"
												placeholder="Passport Issuing Authority" required="true" />
										</div>
									</div>
								</div>
								<div class="col-sm-4"> <b>Passport validity</b>
									<div class="form-group">
										<div class="form-line">
											<form:input type="text" class="datepicker form-control"
												path="passportValidity" placeholder="Passport validity..."
												required="true" />
										</div>
									</div>
								</div>
							</div>

							<div class="row clearfix">
								<div class="col-md-4"> <b>Visa No"</b>
									<div class="form-group">
										<div class="form-line">
											<form:input type="text" class="form-control" path="visaNo"
												placeholder="Visa No" required="true" />
										</div>
									</div>
								</div>
								<div class="col-md-4"> <b>Visa Type</b>
									<div class="form-group">
										<div class="form-line">
											<form:input type="text" class="form-control" path="visaType"
												placeholder="Visa Type" required="true" />
										</div>
									</div>
								</div>
								<div class="col-md-4"> <b>Visa Issuing Authority</b>
									<div class="form-group">
										<div class="form-line">
											<form:input type="text" class="form-control"
												path="visaIssuingAuthority"
												placeholder="Visa Issuing Authority" required="true" />
										</div>
									</div>
								</div>
							</div>

							<div class="row clearfix">
								<div class="col-sm-4"> <b>Visa Validity</b>
									<div class="form-group">
										<div class="form-line">
											<form:input type="text" class="datepicker form-control"
												path="visaValidity" placeholder="Visa Validity..."
												required="true" />
										</div>
									</div>
								</div>
							</div>

							<!-- present address start -->

							<h2 class="card-inside-title">Present Address</h2>
							<div class="row clearfix">
								<div class="col-sm-4"> <b>Country</b>
									<form:select class="form-control show-tick" onchange="getState(this.value,'0')"
										path="presentAddress.country.id" id="country0" required="true">
										<option value="">-- Please Country --</option>
										<option value="101">10</option>
										<option value="20">20</option>
										<option value="30">30</option>
										<option value="40">40</option>
										<option value="50">50</option>
									</form:select>
								</div>
								<div class="col-sm-4"> <b>State</b>
									<form:select class="form-control show-tick" id="stateId0"
									 onchange="getCity(this.value,'0')"
										path="presentAddress.state.id" required="true">
										<option value="">-- Please State --</option>
									
									</form:select>
								</div>
								<div class="col-sm-4"> <b>City</b>
									<form:select class="form-control show-tick" id="cityId0"
										path="presentAddress.city.id" required="true">
										<option value="">-- Please City --</option>
										<option value="1">10</option>
										<option value="20">20</option>
										<option value="30">30</option>
										<option value="40">40</option>
										<option value="50">50</option>
									</form:select>
								</div>
								<div class="col-md-6"> <b>Landmark</b>
									<div class="form-group">
										<div class="form-line">
											<form:input type="text" class="form-control"
												path="presentAddress.landmark" placeholder="landmark" id="landmark0"
												required="true" />
										</div>
									</div>
								</div>
								<div class="col-md-6"><b>Street</b>
									<div class="form-group">
										<div class="form-line">
											<form:input type="text" class="form-control"
												path="presentAddress.street" placeholder="street" id="street0"
												required="true" />
										</div>
									</div>
								</div>
								<div class="col-md-6"><b>Pincode</b>
									<div class="form-group">
										<div class="form-line">
											<form:input type="text" class="form-control"
												path="presentAddress.pincode" placeholder="pincode" id="pincode0"
												required="true" />
										</div>
									</div>
								</div>
								<div class="col-md-6"><b>Building Name / Flat No</b>
									<div class="form-group">
										<div class="form-line">
											<form:input type="text" class="form-control"
												path="presentAddress.buildingNo"
												placeholder="building name / flat no" required="true" id="flat0"/>
										</div>
									</div>
								</div>
							</div>
							<!-- present address end -->
<h2 class="card-inside-title">Permanent Address Same as Present Address</h2>
<div class="demo-switch">
                                <div class="switch">
                                    <label>OFF<input type="checkbox" onclick="fillData('cb',this.value)" id="cb"  ><span class="lever"></span>ON</label>
                                </div>
                                </div>
<div id="perma">
							<!-- Permanent address start -->
							<h2 class="card-inside-title">Permanent Address</h2>
							<div class="row clearfix">
								<div class="col-sm-4"> <b>Country</b>
									<form:select class="form-control show-tick"  onchange="getState(this.value,'1')"
										path="permanentAddress.country.id" required="true" id="country1">
										<option value="">-- Please Country --</option>
										<option value="101">10</option>
										<option value="20">20</option>
										<option value="30">30</option>
										<option value="40">40</option>
										<option value="50">50</option>
									</form:select>
								</div>
								<div class="col-sm-4"> <b>State</b>
									<form:select class="form-control show-tick" id="stateId1"  onchange="getCity(this.value,'1')"
										path="permanentAddress.state.id" required="true">
										<option value="">-- Please State --</option>
										<option value="1">10</option>
										<option value="20">20</option>
										<option value="30">30</option>
										<option value="40">40</option>
										<option value="50">50</option>
									</form:select>
								</div>
								<div class="col-sm-4"> <b>City</b>
									<form:select class="form-control show-tick" id="cityId1"
										path="permanentAddress.city.id" required="true">
										<option value="">-- Please City --</option>
										<option value="1">10</option>
										<option value="20">20</option>
										<option value="30">30</option>
										<option value="40">40</option>
										<option value="50">50</option>
									</form:select>
								</div>
								<div class="col-md-6"> <b>Landmark</b>
									<div class="form-group">
										<div class="form-line">
											<form:input type="text" class="form-control"
												path="permanentAddress.landmark" placeholder="landmark" id="landmark1"
												required="true" />
										</div>
									</div>
								</div>
								<div class="col-md-6"> <b>Street</b>
									<div class="form-group">
										<div class="form-line">
											<form:input type="text" class="form-control"
												path="permanentAddress.street" placeholder="street" id="street1"
												required="true" />
										</div>
									</div>
								</div>
								<div class="col-md-6"> <b>Pincode</b>
									<div class="form-group">
										<div class="form-line">
											<form:input type="text" class="form-control"
												path="permanentAddress.pincode" placeholder="pincode" id="pincode1"
												required="true" />
										</div>
									</div>
								</div>
								<div class="col-md-6"> <b>Building Name / Flat No</b>
									<div class="form-group">
										<div class="form-line">
											<form:input type="text" class="form-control"
												path="permanentAddress.buildingNo"
												placeholder="building name / flat no" required="true" id="flat1" />
										</div>
									</div>
								</div>
							</div>
							</div>
							<!-- Permanent address end -->

							<div class="form-group">
								<div class="">
									<input type="submit" class="form-control btn btn-success"
										placeholder="" value="SUBMIT" >
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
		<!-- #END# Multi Column -->
	</div>
</section>
<%@include file="include/footer.jsp"%>
<script>
$("#perma").hide();
function fillData(id,state)
{
	if ($('#'+id).is( ':checked')) { 
		//alert('');
		$("#perma").hide();
		$('#country1').val($('#counrty0').val());
		$('#stateId1').val($('#stateId0').val());
		$('#cityId1').val($('#cityId0').val());
		$('#landmark1').val($('#landmark0').val());
		$('#pincode1').val($('#pincode0').val());
		$('#flat1').val($('#flat0').val());
		$('#street1').val($('#street0').val());
		
		
     //    $("#PreFirstAddr").val($("#ParFirstAddr").val());
                             
}
else {
	//alert('hedy');
	$("#perma").show();
// $("#PreFirstAddr").val('');
           
}
	/* 
	alert($('#'+id).val());
	if(state=='0'){//present address same as permanent address
		$('#'+id).val('1');
	}
	else{//not same
		$('#'+id).val('0');
	}
	alert($('#'+id).val());
	*/
	} 
</script>