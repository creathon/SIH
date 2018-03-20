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
					<!-- <li><a href="javascript:void(0);">Masters</a></li> -->
					<li class="active">Manage Films</li>
				</ol>
			</div>
			<!-- <h2>ADD AGENCY</h2> -->
		</div>
		<!-- Exportable Table -->
		<div class="row clearfix">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="card">
					<div class="header">
						<h2>FILMS/DOCUMENTARIES/EVENTS LIST</h2>

					</div>
					<div class="body">
						<div class="table-responsive">
							<table
								class="table table-bordered table-striped table-hover dataTable js-exportable">
								<thead>
									<tr>
										<th>Film Name</th>
										<th>Producer</th>
										<th>Director</th>
										<th>Film Certificate</th>
										<th>Lead Actor</th>
										<th>Lead Actress</th>
										<th></th>
										<th></th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th>Film Name</th>
										<th>Producer</th>
										<th>Director</th>
										<th>Film Certificate</th>
										<th>Lead Actor</th>
										<th>Lead Actress</th>
										<th></th>
										<th></th>
									</tr>
								</tfoot>
								<tbody>

									<c:forEach items="${filmList}" var="tml">
										<tr id="tm${tml.id}">
											<td><c:out value="${tml.name}" /></td>
											<td><c:out value="${tml.productionHouse.name}" /></td>
											<td><c:out value="${tml.director.name}" /></td>
											<td><c:out value="${tml.typeOfFilm}" /></td>
											<td><c:out value="${tml.mainActor}" /></td>
											<td><c:out value="${tml.mainActress}" /></td>
											<td><a href="editTeamMember?Id=${tml.id}">
													<button type="button" class="btn btn-primary waves-effect">EDIT</button>
											</a></td>
											<td><a href="#">
													<button type="button" class="btn btn-danger waves-effect"
														onclick="return showDeleteMessage(${tml.id},'ajax/deleteFilm','Your film is suucessfully deleted','You saved your film','filmList');">DELETE</button>
											</a></td>
											<%-- ${tml.id},'ajax/deleteFilm','Your film is suucessfully deleted','You saved your film' --%>
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
