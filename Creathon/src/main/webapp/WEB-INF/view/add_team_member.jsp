<%@include file="include/header_producer.jsp"%>
<%@include file="include/sidebar_producer.jsp"%>
<section class="content">
	<div class="container-fluid">
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
									<div class="form-group">
										<div class="form-line">
											<form:input type="text" class="form-control" path="name"
												placeholder="Crew Name" required="true" />
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<div class="form-line">
											<form:input type="text" class="form-control"
												path="fatherName" placeholder="Father's Name"
												required="true" />
										</div>
									</div>
								</div>
								<div class="col-md-4">
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
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="form-control" path="aadharNo"
												placeholder="Aadhar No" required="true" />
										</div>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="form-group">
										<div class="form-line">
											<form:input type="text" class="datepicker form-control"
												path="dateOfBirth" placeholder="Date of Birth..."
												required="true" />
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<div class="form-line">
											<input type="text" class="form-control" path="placeOfBirth"
												placeholder="Place of Birth" required="true" />
										</div>
									</div>
								</div>
							</div>

							<div class="row clearfix">
								<div class="col-sm-4">
									<form:select class="form-control show-tick"
										path="designation.id" required="true">
										<option value="">-- Select Designation --</option>
										<option value="10">10</option>
										<option value="20">20</option>
										<option value="30">30</option>
										<option value="40">40</option>
										<option value="50">50</option>
									</form:select>
								</div>
								<div class="col-sm-4">
									<form:select class="form-control show-tick" path="film.id"
										required="true">
										<option value="">-- Select Film --</option>
										<option value="10">10</option>
										<option value="20">20</option>
										<option value="30">30</option>
										<option value="40">40</option>
										<option value="50">50</option>
									</form:select>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<div class="form-line">
											<form:input type="text" class="form-control"
												path="periodOfVisit" placeholder="Period of Visit"
												required="true" />
										</div>
									</div>
								</div>
							</div>

							<div class="row clearfix">
								<div class="col-md-4">
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
									<div class="form-group">
										<div class="form-line">
											<form:input type="text" class="form-control"
												path="passportNo" placeholder="Passport No" required="true" />
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<div class="form-line">
											<form:input type="text" class="form-control"
												path="passportIssuingAuthority"
												placeholder="Passport Issuing Authority" required="true" />
										</div>
									</div>
								</div>
								<div class="col-sm-4">
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
								<div class="col-md-4">
									<div class="form-group">
										<div class="form-line">
											<form:input type="text" class="form-control" path="visaNo"
												placeholder="Visa No" required="true" />
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<div class="form-line">
											<form:input type="text" class="form-control" path="visaType"
												placeholder="Visa Type" required="true" />
										</div>
									</div>
								</div>
								<div class="col-md-4">
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
								<div class="col-sm-4">
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
								<div class="col-sm-4">
									<form:select class="form-control show-tick"
										path="presentAddress.country.id" required="true">
										<option value="">-- Please Country --</option>
										<option value="10">10</option>
										<option value="20">20</option>
										<option value="30">30</option>
										<option value="40">40</option>
										<option value="50">50</option>
									</form:select>
								</div>
								<div class="col-sm-4">
									<form:select class="form-control show-tick"
										path="presentAddress.state.id" required="true">
										<option value="">-- Please State --</option>
										<option value="10">10</option>
										<option value="20">20</option>
										<option value="30">30</option>
										<option value="40">40</option>
										<option value="50">50</option>
									</form:select>
								</div>
								<div class="col-sm-4">
									<form:select class="form-control show-tick"
										path="presentAddress.city.id" required="true">
										<option value="">-- Please City --</option>
										<option value="10">10</option>
										<option value="20">20</option>
										<option value="30">30</option>
										<option value="40">40</option>
										<option value="50">50</option>
									</form:select>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<div class="form-line">
											<form:input type="text" class="form-control"
												path="presentAddress.landmark" placeholder="landmark"
												required="true" />
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<div class="form-line">
											<form:input type="text" class="form-control"
												path="presentAddress.street" placeholder="street"
												required="true" />
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<div class="form-line">
											<form:input type="text" class="form-control"
												path="presentAddress.pincode" placeholder="pincode"
												required="true" />
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<div class="form-line">
											<form:input type="text" class="form-control"
												path="presentAddress.buildingNo"
												placeholder="building name / flat no" required="true" />
										</div>
									</div>
								</div>
							</div>
							<!-- present address end -->


							<!-- Permanent address start -->
							<h2 class="card-inside-title">Permanent Address</h2>
							<div class="row clearfix">
								<div class="col-sm-4">
									<form:select class="form-control show-tick"
										path="permanentAddress.country.id" required="true">
										<option value="">-- Please Country --</option>
										<option value="10">10</option>
										<option value="20">20</option>
										<option value="30">30</option>
										<option value="40">40</option>
										<option value="50">50</option>
									</form:select>
								</div>
								<div class="col-sm-4">
									<form:select class="form-control show-tick"
										path="permanentAddress.state.id" required="true">
										<option value="">-- Please State --</option>
										<option value="10">10</option>
										<option value="20">20</option>
										<option value="30">30</option>
										<option value="40">40</option>
										<option value="50">50</option>
									</form:select>
								</div>
								<div class="col-sm-4">
									<form:select class="form-control show-tick"
										path="permanentAddress.city.id" required="true">
										<option value="">-- Please City --</option>
										<option value="10">10</option>
										<option value="20">20</option>
										<option value="30">30</option>
										<option value="40">40</option>
										<option value="50">50</option>
									</form:select>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<div class="form-line">
											<form:input type="text" class="form-control"
												path="permanentAddress.landmark" placeholder="landmark"
												required="true" />
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<div class="form-line">
											<form:input type="text" class="form-control"
												path="permanentAddress.street" placeholder="street"
												required="true" />
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<div class="form-line">
											<form:input type="text" class="form-control"
												path="permanentAddress.pincode" placeholder="pincode"
												required="true" />
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<div class="form-line">
											<form:input type="text" class="form-control"
												path="permanentAddress.buildingNo"
												placeholder="building name / flat no" required="true" />
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