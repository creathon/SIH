<%@page import="java.io.File"%>
<%@include file="include/header.jsp"%>


<section   class="content">

	<div class="container-fluid">
		<div class="block-header">
		<div class="body">
		
							<div class="table-responsive">
							<table
								class="table table-bordered table-striped table-hover dataTable js-exportable">

 <c:forEach items="${locationList}" var="l">
 <tr >
  <td><c:out value="${l.name}" /></td>
 <td><c:out value="${l.description}" /></td>
 <td><img style="max-height:150px"  src="downloadFile?file=${l.photo}"/>	</td> 
 <td></td>
 </tr>
 </c:forEach>
</table>
</div>


</div>
</div>
</div>
</section>

<%@include file="include/sidebar_agency.jsp" %>
<%@include file="include/footer.jsp"%>