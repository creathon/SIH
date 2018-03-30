<%@include file="include/header_agency.jsp"%>
<%@include file="include/sidebar_agency.jsp"%>
<section class="content">
	<div class="container-fluid">
		<div class="block-header">
			<h2>AGENCY DASHBOARD</h2>
		</div>

		<!-- Widgets -->
		<div class="row clearfix">
			<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
				<div class="info-box bg-pink hover-expand-effect">
					<div class="icon">
						<i class="material-icons">local_library</i>
					</div>
					<div class="content">
						<div class="text">REGISTERED PRODUCTION HOUSE</div>
						<div class="number count-to" data-from="0" data-to="${productionHouseCount}"
							data-speed="15" data-fresh-interval="20"></div>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
				<div class="info-box bg-cyan hover-expand-effect">
					<div class="icon">
						<i class="material-icons">person </i>
					</div>
					<div class="content">
						<div class="text">TOTAL LOCATION</div>
						<div class="number count-to" data-from="0" data-to="${locationCount}"
							data-speed="1000" data-fresh-interval="20"></div>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
				<div class="info-box bg-light-green hover-expand-effect">
					<div class="icon">
						<i class="material-icons">school</i>
					</div>
					<div class="content">
						<div class="text">TOTAL FILMS SHOOTED</div>
						<div class="number count-to" data-from="0" data-to="${filmCount}"
							data-speed="1000" data-fresh-interval="20"></div>
					</div>
				</div>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
				<div class="info-box bg-orange hover-expand-effect">
					<div class="icon">
						<i class="material-icons">person_add</i>
					</div>
					<div class="content">
						<div class="text">TOTAL APPLICATION SUBMITTED</div>
						<div class="number count-to" data-from="0" data-to="${applicationCount}"
							data-speed="1000" data-fresh-interval="20"></div>
					</div>
				</div>
			</div>
		</div>
		<!-- #END# Widgets -->



		
	</div>
</section>

<!-- Jquery Core Js -->
<script src="assets/plugins/jquery/jquery.min.js"></script>

<!-- Bootstrap Core Js -->
<script src="assets/plugins/bootstrap/js/bootstrap.js"></script>

<!-- Select Plugin Js -->
<script src="assets/plugins/bootstrap-select/js/bootstrap-select.js"></script>

<!-- Slimscroll Plugin Js -->
<script src="assets/plugins/jquery-slimscroll/jquery.slimscroll.js"></script>

<!-- <!-- Waves Effect Plugin Js -->
<script src="assets/plugins/node-waves/waves.js"></script>

<!-- Jquery CountTo Plugin Js -->
<script src="assets/plugins/jquery-countto/jquery.countTo.js"></script>


<!-- Morris Plugin Js -->
<!-- <script src="assets/plugins/raphael/raphael.min.js"></script>
<script src="assets/plugins/morrisjs/morris.js"></script>
	<script src="assets/js/pages/charts/morris.js"></script> -->

<!-- ChartJs -->
<!-- <script src="assets/plugins/chartjs/Chart.bundle.js"></script> -->

<!-- Flot Charts Plugin Js -->
<!-- <script src="assets/plugins/flot-charts/jquery.flot.js"></script>
<script src="assets/plugins/flot-charts/jquery.flot.resize.js"></script>
<script src="assets/plugins/flot-charts/jquery.flot.pie.js"></script>
<script src="assets/plugins/flot-charts/jquery.flot.categories.js"></script>
<script src="assets/plugins/flot-charts/jquery.flot.time.js"></script>
 -->
<!-- Sparkline Chart Plugin Js -->
<!-- <script src="assets/plugins/jquery-sparkline/jquery.sparkline.js"></script> -->

<!-- Custom Js -->
<script src="assets/js/admin.js"></script>
<script src="assets/js/pages/index.js"></script>

<!-- Demo Js -->
<script src="assets/js/demo.js"></script>
<script src="assets/js/pages/ui/dialogs.js"></script>
<script src="assets/plugins/sweetalert/sweetalert.min.js"></script>
</body>
<c:if test="${not empty login}">
<script>
callSuccessAlert("Success","Welcome");
</script>
</c:if>

</html>