<%@include file="include/header_admin.jsp"%>
<%@include file="include/sidebar_admin.jsp"%>
<script>
function callDelete(){
	
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
					<!--  <li><a href="javascript:void(0);">Masters</a></li> -->
					<li class="active">Not Answered Applications</li>
				</ol>
			</div>
			<!-- <h2>ADD AGENCY</h2> -->
		</div>
		<!-- Exportable Table -->
		<div class="row clearfix">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="card">
					<div class="header">
						<h2>NOT ANSWERED APPLICATIONS LIST</h2>

					</div>
					<div class="body">
						<div class="table-responsive">
							<table
								class="table table-bordered table-striped table-hover dataTable js-exportable">
								<thead>
									<tr>
										<th>Agency Name </th>
										<th>Producer</th>
										<th>Film</th>
										<th>Date of Shooting</th>
										<th>No of Crew Members</th>
										<th>Submitted On</th>
										<th></th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th>Agency Name </th>
										<th>Producer</th>
										<th>Film</th>
										<th>Date of Shooting</th>
										<th>No of Crew Members</th>
										<th>Submitted On</th>
										<th></th>
									</tr>
								</tfoot>
								<tbody>

									<c:forEach items="${notAnsweredApplicationList}" var="naal">
										<tr >
											<td><c:out value="${naal.location.agencyId.name}" /></td>
											<td><c:out value="${naal.productionHouse.name}" /></td>
											<td><c:out value="${naal.film.name}" /></td>
											<td><c:out value="${naal.dateOfShooting}" /></td>
											<td><c:out value="${naal.noPeopleInCast}" /></td>
											<td><c:out value="${naal.dateOfSubmission}" /></td>
											<td><a href="viewApplicationDetails?Id=${naal.id}">
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
<%@include file="include/footer.jsp"%>
