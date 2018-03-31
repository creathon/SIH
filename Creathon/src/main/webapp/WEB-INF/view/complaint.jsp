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
				<ol class="breadcrumb">
					<li><a href="/creathon">Home</a></li>
					<li><a href="javascript:void(0);">Masters</a></li>
					<li class="active">Complaint Box</li>
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
						<h2>Fill Complaint Form</h2>
					</div>
					<div class="body">
						<form:form id="form_validation" action="complaint" method="POST" modelAttribute="complaint">
							<div class="col-md-12">
								<div class="form-group form-float">
									<div class="form-line">
										<form:input type="text" path="description" class="form-control"
											name="designation_name" required="true"/> <label
											class="form-label">Description</label>
									</div>
								</div>
							</div>
							<button class="btn btn-primary waves-effect" type="submit">SUBMIT</button>
						</form:form >
					</div>
				</div>
			</div>
		</div>
		<!-- #END# Basic Validation -->

	</div>
</section>
<%@include file="include/footer.jsp"%>