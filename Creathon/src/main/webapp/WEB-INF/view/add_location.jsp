<%@include file="include/header.jsp"%>
<%@include file="include/sidebar.jsp"%>
<section class="content">
	<div class="container-fluid">
		<div class="block-header">
		<div class="body">
				<ol class="breadcrumb">
					<li><a href="/creathon">Home</a></li>
					<li><a href="javascript:void(0);">Masters</a></li>
					<li class="active">Add Location</li>
				</ol>
			</div><!-- 
			<h2>
				ADD LOCATION
			</h2> -->
		</div>
		<!-- Basic Validation -->
		<div class="row clearfix">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="card">
					<div class="header">
						<h2>ADD LOCATION DETAILS</h2>
					</div>
					<div class="body">
						<form id="form_validation" method="POST">
							<div class="col-md-12">
								<div class="form-group form-float">
									<div class="form-line">
										<input type="text" class="form-control" name="location_name" required>
										<label class="form-label">Location Name</label>
									</div>
								</div>
							</div>
							<div class="col-md-12">
							<div class="form-group form-float">
                                    <div class="form-line">
                                        <textarea name="description" cols="30" rows="3" class="form-control no-resize" required></textarea>
                                        <label class="form-label">Location Description</label>
                                    </div>
                                </div>
							</div>
							
							 <div class="col-sm-6">
							 <label class="form-label">Select Location Type</label>
                                    <select class="form-control show-tick">
                                        <option value="">-- Select location Type --</option>
                                        <option value="10">10</option>
                                        <option value="20">20</option>
                                        <option value="30">30</option>
                                        <option value="40">40</option>
                                        <option value="50">50</option>
                                    </select>
                                </div>
                                 <div class="col-sm-6">
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
							<div class="col-sm-6">
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
							<div class="col-sm-6">
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
									<input type="text" class="form-control" name="landmark" required>
									<label class="form-label">Landmark</label>
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
									<input type="text" class="form-control" name="pincode" required>
									<label class="form-label">Pincode</label>
								</div>
							</div>
							</div>
							<div class="col-md-6">
							<div class="form-group form-float">
								<div class="form-line">
									<input type="text" class="form-control" name="building_no" required>
									<label class="form-label">Flat no / Building name</label>
								</div>
							</div>
							</div>
							<div class="col-md-12">
							<div class="form-group form-float">
								<div class="form-line">
									<input type="text" class="form-control" name="quote" required>
									<label class="form-label">Quote</label>
								</div>
							</div>
							</div>
							<div class="col-md-12">
							<div class="form-group form-float">
								<div class="form-line">
									<input type="text" class="form-control" name="img_des" required>
									<label class="form-label">Image Description</label>
								</div>
							</div>
							</div>
							<div class="col-md-12">
							<div class="form-group form-float">
							<label class="form-label">Location Images <small>( To choose more than one image press Ctrl and select. ) </small></label>
								<div class="form-line">
									<input type="file" class="form-control" name="location_img" multiple required>
									
								</div>
							</div>
							</div>
							
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