<%@include file="include/header_producer.jsp"%>
<%@include file="include/sidebar_producer.jsp"%>


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
					<!--  <li><a href="javascript:void(0);">Masters</a></li> -->
					<li class="active">Manage Applications</li>
				</ol>
			</div>
			<!-- <h2>ADD AGENCY</h2> -->
		</div>
		<!-- Exportable Table -->
		<div class="row clearfix">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="card">
					<div class="header">
						<h2>REGISTERED APPLICATIONS LIST</h2>

					</div>
					<div class="body">
						<div class="table-responsive">
							<table
								class="table table-bordered table-striped table-hover dataTable js-exportable">
								<thead>
									<tr>
										<th>Location </th>
										<th>Film</th>
										<th>Date of Shooting</th>
										<th>Status</th>
										<th></th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th>Location </th>
										<th>Film</th>
										<th>Date of Shooting</th>
										<th>Status</th>
										<th></th>
									</tr>
								</tfoot>
								<tbody>

									<c:forEach items="${applicationList}" var="tml">
										<tr id="tm${tml.id}"><%-- ${tml.location.name} --%>
											<td><c:out value="${fn:toUpperCase(tml.location.name)}"/></td>
											<td><c:out value="${tml.film.name}" /></td>
											<td><c:out value="${tml.dateOfShooting}" /></td>
											<td><c:out value="${tml.status.name}" /></td>
											<td><a href="view_complete_application?Id=${tml.id}">
													<button type="button" class="btn btn-primary waves-effect">VIEW DETAILS</button>
											</a></td>
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
	</div>
</section>






<form:form>


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