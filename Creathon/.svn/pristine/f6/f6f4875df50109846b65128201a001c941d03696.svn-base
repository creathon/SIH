<%@include file="include/header.jsp"%>
<%@include file="include/sidebar.jsp"%>






<form:form  action="#" method="POST"
		modelAttribute="shootApplication">


	<c:forEach items="${shootApplication.locationPermission}" var="locationPermission">
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
						</div>
						

					</div>
				</div>
			</div>
		</div>
		<!-- #END# Basic Validation -->
		</c:forEach>
		</form:form>



<%@include file="include/footer.jsp"%>