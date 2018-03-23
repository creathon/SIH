<%@include file="include/header_producer.jsp"%>
<head>


</head>
<%@include file="include/sidebar_producer.jsp"%>
<!-- <script src="http://code.jquery.com/jquery-1.9.1.js"></script> -->
<script src="https://screenfeedcontent.blob.core.windows.net/html/airports.js"></script>
<script src="https://unpkg.com/fuse.js@2.5.0/src/fuse.min.js"></script>



<section class="content">
	<div class="container-fluid">
								<!-- <div class="form-group">
  <label class="control-label">Enter Source</label>
  <input id="autocomplete" type="text" />
</div>

								<div class="form-group">
  <label class="control-label">Enter Destination</label>
  <input id="autocomplete1" type="text" />
</div> -->
	<div class="row clearfix">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="card">
					<div class="header">
						<h2>Flight Details</h2>

					</div>
					<div class="body">
						<div class="table-responsive">
							<table id="tab"
								class="table table-bordered table-striped table-hover dataTable ">
								<thead>
									<tr>
										<th>Airline Name </th>
										<th>Origin</th>
									 <th>Departure time</th>
										<th>Arrival Time</th>
										<th> Stops</th>
										<th>Duration</th>
										<th>Price</th>
									</tr>
								</thead>
							<!-- 	<tfoot>
									<tr>
										<th>Airline Name </th>
										<th>Origin</th>
									 	<th>Departure time</th>
										<th>Arrival Time</th>
										<th> Stops</th>
										<th>Duration</th>
										<th>Price</th>
									</tr>
								</tfoot> -->
								<tbody id="results">

									
										
								

								</tbody>
							</table>

\
						</div>
					</div>
				</div>
			</div>
		</div>
	
 </div> 
 </section>
 <script>
$.ajax({
    type: "POST", //rest Type
    dataType: 'jsonp', //mispelled
    url: "https://developer.goibibo.com/api/search/?app_id=390fbd4c&app_key=9299e9cced9bd7c7d22ee2e0fdedc120&format=json&source=IDR&destination=DEL&dateofdeparture=20180324&seatingclass=E&adults=1&children=0&infants=0&counter=100",
    async: false,
    contentType: "application/json; charset=utf-8",
    success: function (msg) {
    	
    	var data=[];
    	for(var i=0;i<msg.data.onwardflights.length;i++) {
       
	       var obj = {};
	       var dataString=msg.data.onwardflights;
	       	obj.destination=dataString[i].airline;
	       obj.airline = dataString[i].airline;
	       obj.origin = dataString[i].origin;
	       obj.deptime = dataString[i].deptime;
	       obj.arrtime = dataString[i].arrtime;
	       obj.stops = dataString[i].stops;
	       obj.duration = dataString[i].duration;
	       obj.fare = dataString[i].fare.totalfare;
       
       	   data.push(obj);
    	}    	
    	
    	$('#tab').dataTable({
    	    data: data,
    	        columns: [
    	        { data: 'airline' },
    	        { data: 'origin' },
    	        { data: 'deptime' },
    	        { data: 'arrtime' },
    	        { data: 'stops' },
    	        { data: 'duration' },
    	        { data: 'fare' }
    	       
    	    ]
    	});
    	   
     //	$('#tab').dataTable().fnClearTable();
     //	$('#tab').dataTable().fnAddData(data);
    }
});
</script>
<%@include file="include/footer.jsp"%>
<script>
var options = {
		  shouldSort: true,
		  threshold: 0.4,
		  maxPatternLength: 32,
		  keys: [{
		    name: 'iata',
		    weight: 0.5
		  }, {
		    name: 'name',
		    weight: 0.3
		  }, {
		    name: 'city',
		    weight: 0.2
		  }]
		};

		var fuse = new Fuse(airports, options)


		var ac = $('#autocomplete')
		  .on('click', function(e) {
		    e.stopPropagation();
		  })
		  .on('focus keyup', search)
		  .on('keydown', onKeyDown);
		

		var wrap = $('<div>')
		  .addClass('autocomplete-wrapper')
		  .insertBefore(ac)
		  .append(ac);

		var list = $('<div>')
		  .addClass('autocomplete-results')
		  .on('click', '.autocomplete-result', function(e) {
		    e.preventDefault();
		    e.stopPropagation();
		    selectIndex($(this).data('index'));
		  })
		  .appendTo(wrap);

		$(document)
		  .on('mouseover', '.autocomplete-result', function(e) {
		    var index = parseInt($(this).data('index'), 10);
		    if (!isNaN(index)) {
		      list.attr('data-highlight', index);
		    }
		  })
		  .on('click', clearResults);

		function clearResults() {
		  results = [];
		  numResults = 0;
		  list.empty();
		}

		function selectIndex(index) {
		  if (results.length >= index + 1) {
		    ac.val(results[index].iata);
		    clearResults();
		  }  
		}

		var results = [];
		var numResults = 0;
		var selectedIndex = -1;

		function search(e) {
		  if (e.which === 38 || e.which === 13 || e.which === 40) {
		    return;
		  }
		  
		  if (ac.val().length > 0) {
		    results = _.take(fuse.search(ac.val()), 7);
		    numResults = results.length;
		   // alert('ukigjg');
		    
		    var divs = results.map(function(r, i) {
		        return '<div class="autocomplete-result" data-index="'+ i +'">'
		             + '<div><b>'+ r.iata +'</b> - '+ r.name +'</div>'
		             + '<div class="autocomplete-location">'+ r.city +', '+ r.country +'</div>'
		             + '</div>';
		     });
		    
		    selectedIndex = -1;
		    list.html(divs.join(''))
		      .attr('data-highlight', selectedIndex);

		  } else {
		    numResults = 0;
		    list.empty();
		  }
		}

		function onKeyDown(e) {
		  switch(e.which) {
		    case 38: // up
		      selectedIndex--;
		      if (selectedIndex <= -1) {
		        selectedIndex = -1;
		      }
		      list.attr('data-highlight', selectedIndex);
		      break;
		    case 13: // enter
		      selectIndex(selectedIndex);
		      break;
		    case 9: // enter
		      selectIndex(selectedIndex);
		      e.stopPropagation();
		      return;
		    case 40: // down
		      selectedIndex++;
		      if (selectedIndex >= numResults) {
		        selectedIndex = numResults-1;
		      }
		      list.attr('data-highlight', selectedIndex);
		      break;

		    default: return; // exit this handler for other keys
		  }
		  e.stopPropagation();
		  e.preventDefault(); // prevent the default action (scroll / move caret)
		};
</script>