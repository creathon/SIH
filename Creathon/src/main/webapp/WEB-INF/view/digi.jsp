<!-- <!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>



</head>
<body>
<div class="share_fm_dl" id="i" ></div>

<script>

function result(result)
{
alert('hi result');
}
</script>

<script type="text/javascript" src="https://services.digitallocker.gov.in/requester/api/2/dl.js"
id="dlshare" 
data-app-id="1"
data-app-hash="K60BgcNTdeuTOqJuCQ1H"
time-stamp="1521546167"
data-callback="result()">
</script>
</body>
</html> -->



<%@include file="include/header_agency.jsp"%>
<body>
<script>

function digi()
{
alert('hi result');
}
</script>

<script type="text/javascript"
src="https://services.digitallocker.gov.in/requester/api/2/dl.js"
id="dlshare" data-app-id="1" data-app-hash="K60BgcNTdeuTOqJuCQ1H"
time-stamp="1521630363" data-callback="digi()">
</script>
<div class="share_fm_dl" id="attachment_poi"></div>
<div class="share_fm_dl_sm" id="attachment_poi"></div>
</body>
</html>
<%@include file="include/footer.jsp"%>