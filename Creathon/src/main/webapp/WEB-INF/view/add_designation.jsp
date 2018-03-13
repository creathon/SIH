<%@include file="include/header.jsp"%>
<%@include file="include/sidebar.jsp"%>
<section class="content">
	<div class="container-fluid">
		<div class="block-header">
			<div class="body">
				<ol class="breadcrumb">
					<li><a href="/creathon">Home</a></li>
					<li><a href="javascript:void(0);">Masters</a></li>
					<li class="active">Add Designation</li>
				</ol>
			</div>
			<!-- <h2>
				MASTERS
			</h2> -->
		</div>
		<!-- Basic Validation -->
		<div class="row clearfix">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="card">
					<div class="header">
						<h2>ADD DESIGNATION DETAILS</h2>
					</div>
					<div class="body">
						<form id="form_validation" method="POST">
							<div class="col-md-12">
								<div class="form-group form-float">
									<div class="form-line">
										<input type="text" class="form-control"
											name="designation_name" required> <label
											class="form-label">Designation Name</label>
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