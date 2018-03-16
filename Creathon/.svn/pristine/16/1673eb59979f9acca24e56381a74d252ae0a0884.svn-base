<%@include file="include/header_producer.jsp"%>
<%@include file="include/sidebar_producer.jsp"%>
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
						<div class="alert bg-pink alert-dismissible" role="alert">
							<button type="button" class="close" data-dismiss="alert"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							${error}
						</div>
					</c:if>
					<c:if test="${not empty success}">
						<!-- <div class="alert bg-green alert-dismissible" role="alert"> -->
							<script>
								window.onload = function() {
									callImageAlert("Success", "Crew member successfully added !!");
								}
							</script>
							<%-- <button type="button" class="close" data-dismiss="alert"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							${success}
						</div> --%>
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
		<!-- Exportable Table -->
		<div class="row clearfix">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="card">
					<div class="header">
						<h2>CREW MEMBERS LIST</h2>

					</div>
					<div class="body">
						<div class="table-responsive">
							<table
								class="table table-bordered table-striped table-hover dataTable js-exportable">
								<thead>
									<tr>
										<th>Name</th>
										<th>Email</th>
										<th>Designation</th>
										<th>Aadhar No</th>
										<th>Film</th>
										<th></th>
										<th></th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th>Name</th>
										<th>Email</th>
										<th>Designation</th>
										<th>Aadhar No</th>
										<th>Film</th>
										<th></th>
										<th></th>
									</tr>
								</tfoot>
								<tbody>

									<c:forEach items="${teamMemberList}" var="tml">
										<tr>
											<td><c:out value="${tml.name}" /></td>
											<td><c:out value="${tml.email}" /></td>
											<td><c:out value="${tml.designation.name}" /></td>
											<td><c:out value="${tml.aadharNo}" /></td>
											<td><c:out value="${tml.film.name}" /></td>
											<td><a href="editTeamMember?Id=${tml.id}">
													<button type="button" class="btn btn-primary waves-effect">EDIT</button>
											</a></td>
											<td><a href="#">
													<button type="button" class="btn btn-danger waves-effect" onclick="return showDeleteMessage(${tml.id});">DELETE</button>
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
