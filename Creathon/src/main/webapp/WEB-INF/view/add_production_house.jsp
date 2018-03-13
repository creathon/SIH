<%@include file="include/header.jsp"%>
<%@include file="include/sidebar.jsp"%>
<section class="content">
	<div class="container-fluid">
		<div class="block-header">
		<div class="body">
				<ol class="breadcrumb">
					<li><a href="/creathon">Home</a></li>
					<li><a href="javascript:void(0);">Masters</a></li>
					<li class="active">Add Production House</li>
				</ol>
			</div>
			<!-- <h2>ADD AGENCY</h2> -->
		</div>
		<!-- Basic Validation -->
		<div class="row clearfix">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="card">
					<div class="header">
						<h2>ADD PRODUCTION HOUSE DETAILS</h2>
					</div>
					<div class="body">
						<form id="form_validation" method="POST">
						
							<div class="col-md-6">
								<div class="form-group form-float">
									<div class="form-line">
										<input type="text" class="form-control" name="production_house_name"
											required> <label class="form-label">Production House
											Name</label>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-float">
									<div class="form-line">
										<input type="email" class="form-control" name="email"
											required> <label class="form-label">Email</label>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-float">
									<div class="form-line">
										<input type="text" class="form-control"
											name="phone_no" required> <label
											class="form-label">Phone No</label>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-float">
									<div class="form-line">
										<input type="text" class="form-control" name="mobile_no"
											required> <label class="form-label">Mobile No</label>
									</div>
								</div>
							</div>
							<div class="col-sm-4">
							<label class="form-label">Select Country</label>
								<select class="form-control show-tick">
									<option value="">-- Please country --</option>
									<option value="10">10</option>
									<option value="20">20</option>
									<option value="30">30</option>
									<option value="40">40</option>
									<option value="50">50</option>
								</select>
							</div>
							<div class="col-sm-4">
							<label class="form-label">Select State</label>
								<select class="form-control show-tick">
									<option value="">-- Please state --</option>
									<option value="10">10</option>
									<option value="20">20</option>
									<option value="30">30</option>
									<option value="40">40</option>
									<option value="50">50</option>
								</select>
							</div>
							<div class="col-sm-4">
							<label class="form-label">Select City</label>
								<select class="form-control show-tick">
									<option value="">-- Please city --</option>
									<option value="10">10</option>
									<option value="20">20</option>
									<option value="30">30</option>
									<option value="40">40</option>
									<option value="50">50</option>
								</select>
							</div>
							<div class="col-md-6">
								<div class="form-group form-float">
									<div class="form-line">
										<input type="text" class="form-control" name="landmark"
											required> <label class="form-label">Landmark</label>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-float">
									<div class="form-line">
										<input type="text" class="form-control" name="street" required>
										<label class="form-label">Street</label>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-float">
									<div class="form-line">
										<input type="text" class="form-control" name="pincode"
											required> <label class="form-label">Pincode</label>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-float">
									<div class="form-line">
										<input type="text" class="form-control" name="building_no"
											required> <label class="form-label">Flat no /
											Building name</label>
									</div>
								</div>
							</div>
							
							<div class="col-md-6">
								<div class="form-group form-float">
									<div class="form-line">
										<input type="text" class="form-control" name="producer_name"
											required> <label class="form-label">Producer Name</label>
									</div>
								</div>
							</div>
							
							<div class="col-md-6">
								<div class="form-group form-float">
									<div class="form-line">
										<input type="text" class="form-control" name="nationality"
											required> <label class="form-label">Nationality</label>
									</div>
								</div>
							</div>
							
							<div class="col-md-6">
								<div class="form-group form-float">
									<div class="form-line">
										<input type="text" class="form-control" name="passport_no"
											required> <label class="form-label">Passport No</label>
									</div>
								</div>
							</div>
							<div class="col-md-6">
							
                                    <div class="form-group">
                                    <!-- <label class="form-label">Passport Validity</label>   -->                                        
                                        <div class="form-line">
                                            <input type="text" class="datepicker form-control" placeholder="Passport Validity...">
                                        </div>
                                    </div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-float">
									<div class="form-line">
										<input type="text" class="form-control" name="visa_type"
											required> <label class="form-label">Visa type</label>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-float">
									<div class="form-line">
										<input type="text" class="form-control" name="visa_no"
											required> <label class="form-label">Visa No</label>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-float">
									<div class="form-line">
										<input type="text" class="form-control" name="visa_validity"
											required> <label class="form-label">Visa Validity</label>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group form-float">
									<div class="form-line">
										<input type="text" class="form-control" name="contact_person"
											required> <label class="form-label">Contact Person Name</label>
									</div>
								</div>
							</div>
							<div class="col-md-12">
							<div class="form-group form-float">
                                    <div class="form-line">
                                        <textarea name="producer_exp_profile" cols="30" rows="3" class="form-control no-resize" required></textarea>
                                        <label class="form-label">Producer Experience Profile</label>
                                    </div>
                                </div>
							</div>
							<!-- 
							<div class="col-md-6">
								<div class="form-group form-float">
									<label class="form-label">Agency profile pic</label>
									<div class="form-line">
										<input type="file" class="form-control" name="agency_profile"
											required>

									</div>
								</div>
							</div> -->
							<button class="btn btn-primary waves-effect" type="submit">SUBMIT</button>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- #END# Basic Validation -->

	</div>
</section>
<%@include file="include/footer.jsp"%>