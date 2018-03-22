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
<div class="row clearfix">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="card">
					<div class="header">
						<h2><b>Film</b> : <b>${fn:toUpperCase(shootApplication.film.name)}</b></h2><br>
						<h2><b>Location</b> : <b>${fn:toUpperCase(shootApplication.location.name)}</b></h2>

					</div>
					<div class="body">
						<div class="table-responsive">
							<table
								class="table table-bordered table-striped table-hover dataTable js-exportable">
								<thead>
									<tr>
										<th>Agency </th>
										<th>Comments</th>
										<th>Status</th>
										<th></th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th>Agency </th>
										<th>Comments</th>
										<th>Status</th>
										<th></th>
									</tr>
								</tfoot>
								<tbody>

									 <c:forEach items="${shootApplication.locationPermissions}" var="locationPermission">
										<tr id="tm${locationPermission.id}">
											<td><c:out value="${fn:toUpperCase(locationPermission.agency.name)}" /></td>
											<td><c:out value="${locationPermission.comments}" /></td>
											<td><c:out value="${locationPermission.status.name}" /></td>
										</tr>
									</c:forEach>
									
									
									
									
			

								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- #END# Exportable Table -->




<%-- <form:form  action="#" method="POST" modelAttribute="shootApplication">


	<c:forEach items="${shootApplication.locationPermissions}"  var="locationPermission">
			<!-- Basic Validation -->
		<div class="row clearfix">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="card">
					<div class="header">
						<h2>${fn:toUpperCase(locationPermission.agency.name)} PERMISSION DETAILS</h2>
					</div>
					<div class="body">

						<div class="row clearfix">
							<div class="col-md-4">
								<b>Agency Name</b>
								<div class="form-group">
									<div class="form-line">
										<form:input type="text" class="form-control"
											path="" value="${fn:toUpperCase(locationPermission.agency.name)}"
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
		</form:form> --%>

</section>

<%@include file="include/footer.jsp"%>