<%-- <%@include file="include/header.jsp"%>

<section class="content">
	<div class="container-fluid">
		<div class="block-header">
			<div class="body">

				<form:form action="saveshoot" modelAttribute="shootApplication" method="post" enctype="multipart/form-data">
					<form:select path="film.id">
						<option>---Select Film</option>
						<c:forEach items="${filmList}" var="fl">
							<option value="${fl.id}">${fl.name}</option>
						</c:forEach>
					</form:select>

					<select onchange="return findLocation(this.value)">
						<option>---Select Agency---</option>
						<c:forEach items="${agencyList}" var="fl">
							<option value="${fl.id}">${fl.name}</option>
						</c:forEach>
					</select>
					
					<form:select path="location.id" id="location">
						<option>---Select Location---</option>
					</form:select>
					
					
					<form:input type="number" placeholder="NO of people in Cast" path="noPeopleInCast"/>
					
					<form:input type="text" class="datepicker form-control" placeholder="dateOfShooting" path="dateOfShooting"/>
					
					<form:input type="text" class="timepicker form-control" placeholder="timeOfShooting" path="timeOfShooting"/>
					
					<form:input type="file" path="script.scriptFile" />
					
				<form:input type="text"  placeholder="Place Of Stay" path="placeOfStay"/>
				<form:input  type="text" placeholder="Period Of Stay" path="periodOfStay"/>
				
				<form:textarea path="equipmentToBeUsed" placeholder="Equipment to be userd"/>
				<form:input  class="datepicker form-control" path="dateOfRelease" type="text"/>
				

				yes:<form:radiobutton style="opacity:1!important; position: inherit !important;" class="form-check-input"  value="1" path="filmingInAnyForestArea" onclick="showhide(this.value,'forest')"/>
				No:<form:radiobutton style="opacity:1!important; position: inherit !important;" class="form-check-input"  value="0" path="filmingInAnyForestArea" onclick="showhide(this.value,'forest')"/>
					<form:textarea  placeholder="Details Of Forest Area" path="detailOfForestArea" id="forest" style="display:none;"/>
					
					yes:<form:radiobutton style="opacity:1!important; position: inherit !important;" class="form-check-input"  value="1" path="filmingInAnyDefenseArea" onclick="showhide(this.value,'defence')"/>
				No:<form:radiobutton style="opacity:1!important; position: inherit !important;" class="form-check-input"  value="0" path="filmingInAnyDefenseArea" onclick="showhide(this.value,'defence')"/>
					<form:textarea placeholder="Details Of Defence Area" path="detailOfDefenseArea" id="defence" style="display:none;"/>
					
					
					
					arial shoot :
yes:<input type="radio" name="a" value="1" style="opacity:1!important; position: inherit !important;" onclick="return showhide(this.value,'areial')">
no:<input type="radio" name="a" value="0" style="opacity:1!important; position: inherit !important;" onclick="return showhide(this.value,'areial')">

	<div id="areial" style="display:none;">
<form:select path="aerialPhotography.cameramanId.id">
	<option>---Select CameraMan---</option>
	<c:forEach items="${cameramanList}" var="cl">
	<option value="${cl.id}">${cl.name}</option>
	</c:forEach>
</form:select>
	<form:input
				yes:<form:radiobutton style="opacity:1!important; position: inherit !important;" class="form-check-input"  value="1" path="filmingInAnyForestArea" onclick="showhide(this.value,'forest')"/>
				No:<form:radiobutton style="opacity:1!important; position: inherit !important;" class="form-check-input"  value="0" path="filmingInAnyForestArea" onclick="showhide(this.value,'forest')"/>
					<form:textarea  placeholder="Details Of Forest Area" path="detailOfForestArea" id="forest" style="display:none;"/>
					
					yes:<form:radiobutton style="opacity:1!important; position: inherit !important;" class="form-check-input"  value="1" path="filmingInAnyDefenseArea" onclick="showhide(this.value,'defence')"/>
				No:<form:radiobutton style="opacity:1!important; position: inherit !important;" class="form-check-input"  value="0" path="filmingInAnyDefenseArea" onclick="showhide(this.value,'defence')"/>
					<form:textarea placeholder="Details Of Defence Area" path="detailOfDefenseArea" id="defence" style="display:none;"/>
					
					
 				
					arial shoot :
yes:<input type="radio" name="a" value="1" style="opacity:1!important; position: inherit !important;" onclick="return showhide(this.value,'areial')">
no:<input type="radio" name="a" value="0" style="opacity:1!important; position: inherit !important;" onclick="return showhide(this.value,'areial')">

	<div id="areial" style="display:none;">
<form:select path="aerialPhotography.cameramanId.id">
	<option>---Select CameraMan---</option>
	<c:forEach items="${cameramanList}" var="cl">
	<option value="${cl.id}">${cl.name}</option>
	</c:forEach>
</form:select>
	<form:input path="purposeOfPhotography"/>
	<form:input
				yes:<form:radiobutton style="opacity:1!important; position: inherit !important;" class="form-check-input"  value="1" path="filmingInAnyForestArea" onclick="showhide(this.value,'forest')"/>
				No:<form:radiobutton style="opacity:1!important; position: inherit !important;" class="form-check-input"  value="0" path="filmingInAnyForestArea" onclick="showhide(this.value,'forest')"/>
					<form:textarea  placeholder="Details Of Forest Area" path="detailOfForestArea" id="forest" style="display:none;"/>
					
					yes:<form:radiobutton style="opacity:1!important; position: inherit !important;" class="form-check-input"  value="1" path="filmingInAnyDefenseArea" onclick="showhide(this.value,'defence')"/>
				No:<form:radiobutton style="opacity:1!important; position: inherit !important;" class="form-check-input"  value="0" path="filmingInAnyDefenseArea" onclick="showhide(this.value,'defence')"/>
					<form:textarea placeholder="Details Of Defence Area" path="detailOfDefenseArea" id="defence" style="display:none;"/>
					
					
	 --%>				
					arial shoot :
yes:<input type="radio" name="a" value="1" style="opacity:1!important; position: inherit !important;" onclick="return showhide(this.value,'areial')">
no:<input type="radio" name="a" value="0" style="opacity:1!important; position: inherit !important;" onclick="return showhide(this.value,'areial')">

	<div id="areial" style="display:none;">
<form:select path="aerialPhotography.cameramanId.id">
	<option>---Select CameraMan---</option>
	<c:forEach items="${cameramanList}" var="cl">
	<option value="${cl.id}">${cl.name}</option>
	</c:forEach>
</form:select>
	<%-- <form:input
				yes:<form:radiobutton style="opacity:1!important; position: inherit !important;" class="form-check-input"  value="1" path="filmingInAnyForestArea" onclick="showhide(this.value,'forest')"/>
				No:<form:radiobutton style="opacity:1!important; position: inherit !important;" class="form-check-input"  value="0" path="filmingInAnyForestArea" onclick="showhide(this.value,'forest')"/>
					<form:textarea  placeholder="Details Of Forest Area" path="detailOfForestArea" id="forest" style="display:none;"/>
					
					yes:<form:radiobutton style="opacity:1!important; position: inherit !important;" class="form-check-input"  value="1" path="filmingInAnyDefenseArea" onclick="showhide(this.value,'defence')"/>
				No:<form:radiobutton style="opacity:1!important; position: inherit !important;" class="form-check-input"  value="0" path="filmingInAnyDefenseArea" onclick="showhide(this.value,'defence')"/>
					<form:textarea placeholder="Details Of Defence Area" path="detailOfDefenseArea" id="defence" style="display:none;"/>
					
					
					
					arial shoot :
yes:<input type="radio" name="a" value="1" style="opacity:1!important; position: inherit !important;" onclick="return showhide(this.value,'areial')">
no:<input type="radio" name="a" value="0" style="opacity:1!important; position: inherit !important;" onclick="return showhide(this.value,'areial')">

	<div id="areial" style="display:none;">
<form:select path="aerialPhotography.cameramanId.id">
	<option>---Select CameraMan---</option>
	<c:forEach items="${cameramanList}" var="cl">
	<option value="${cl.id}">${cl.name}</option>
	</c:forEach>
</form:select>
	<form:input path="purposeOfPhotography"/>
	<form:input path="focalLengthOfCamera"/>
	<form:input placeholder="" path="purposeOfPhotography"/>
	<form:input path="focalLengthOfCamera"/>
	<form:input placeholder="" path="focalLengthOfCamera"/>
	<form:input placeholder="" path="purposeOfPhotography"/>
	<form:input path="focalLengthOfCamera"/>
	<form:input placeholder="" path="heightOfFlight"/>
	<form:input placeholder="" path="formalSize"/>
	<form:input placeholder="" path="typeOfCamera"/>
	<form:input placeholder="" path="typeOfSensor"/>
	<form:input placeholder="" lass="datepicker form-control" path="dateOfPhotography"/>
	<form:input placeholder="" path="descriptionOfAircraft"/>
	<form:input placeholder="" path="nameOfPilot"/>
	<form:input placeholder="" path="addressOfPilot"/>
	<form:input placeholder="" path="ownerOfAircraft"/>
	<form:input placeholder="" path="nameOfAircraft"/>
	
</div>
					<input type="submit" />
				</form:form>
			</div>
		</div>
	</div>
</section>

<%@include file="include/sidebar.jsp"%>
<%@include file="include/footer.jsp"%>

<script>
	function findLocation(agencyId) {
alert(agencyId);
		$('#location').html('');
		$('#location').html('<option value="">Select Location</option>');
		
		$.ajax({
			url : "ajax/getLocation?id=" + agencyId,
			success : function(result) {
				console.log(result);
				for( i in result){
					console.log(result[i])
				$('#location').append('<option value='+result[i].id+'>'+result[i].name+'</option>');
					$('#location').selectpicker("refresh");
				}
			}
		});
	}
	
 	function showhide(value,id)
 	{
 		if(value == '0')
 			{
 			$('#'+id).hide();
 			}
 		else 		
 			{
 			$('#'+id).show();
 			}
 		
 	}
</script>
 --%> --%>