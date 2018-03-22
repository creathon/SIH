<%@page import="java.io.File"%>
<%@include file="include/header_agency.jsp"%>
<%@include file="include/sidebar_agency.jsp"%>


<section   class="content">

	<div class="container-fluid">
		<div class="block-header">
		<div class="body">
		<!-- Exportable Table -->
		<div class="row clearfix">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="card">
					<div class="header">
						<h2>MY LOCATIONS LIST</h2>

					</div>
					<div class="body">
						<div class="table-responsive">
							<table
								class="table table-bordered table-striped table-hover dataTable js-exportable">
								<thead>
										<tr>
										<th>Location </th>
										<th>Location Description</th>
										<th>Location Photo</th>
										<th></th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th>Location </th>
										<th>Location Description</th>
										<th>Location Photo</th>
										<th></th>
									</tr>
								</tfoot>
								<tbody>

											<c:forEach items="${locationList}" var="l">
												<tr>
													<td><c:out value="${l.name}" /></td>
													<td><c:out value="${l.description}" /></td>
													<td><img style="max-height: 150px"
														src="downloadFile?file=${l.photo}" /></td>
													<td></td>
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
</div>
</div>
</section>

<%@include file="include/sidebar_agency.jsp" %>
<%@include file="include/footer.jsp"%>