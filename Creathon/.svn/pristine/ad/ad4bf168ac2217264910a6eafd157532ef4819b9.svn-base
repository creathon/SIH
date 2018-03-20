<%@include file="include/header_agency.jsp"%>
<%@include file="include/sidebar_agency.jsp"%>
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
					<li class="active">Viewed Applications</li>
				</ol>
			</div>
			<!-- <h2>ADD AGENCY</h2> -->
		</div>
		<!-- Exportable Table -->
		<div class="row clearfix">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="card">
					<div class="header">
						<h2>VIEWED APPLICATIONS LIST</h2>

					</div>
					<div class="body">
						<div class="table-responsive">
							<table
								class="table table-bordered table-striped table-hover dataTable js-exportable">
								<thead>
									<tr>
										<th>Location </th>
										<th>Producer</th>
										<th>Film</th>
										<th>Date of Shooting</th>
										<th>No of Crew Members</th>
										<th></th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th>Location </th>
										<th>Producer</th>
										<th>Film</th>
										<th>Date of Shooting</th>
										<th>No of Crew Members</th>
										<th></th>
									</tr>
								</tfoot>
								<tbody>

									<c:forEach items="${applicationList}" var="tml">
										<tr id="tm${tml.id}">
											<td><c:out value="${tml.location.name}" /></td>
											<td><c:out value="${tml.productionHouse.name}" /></td>
											<td><c:out value="${tml.film.name}" /></td>
											<td><c:out value="${tml.dateOfShooting}" /></td>
											<td><c:out value="${tml.noPeopleInCast}" /></td>
											<td><a href="viewApplicationDetails?Id=${tml.id}">
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
