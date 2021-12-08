<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
			<script src="/datacentre/js/jquery.min.js"></script>
	        <script src="/datacentre/js/jquery.js"></script>
	      	<script src="/datacentre/js/bootstrap/bootstrap.min.js"></script>
      	    <link rel="stylesheet" href="/datacentre/css/bootstrap/bootstrap.min.css">
      	    <link rel="stylesheet" href="/datacentre/css/bootstrap/bootstrap.css">
      	    <script src="/datacentre/js/raphael.js"></script>
      	    <script src="/datacentre/js/jquery/india/jsmaps/jsmaps.min.js" type="text/javascript"></script>
      	    <link href="/datacentre/js/jquery/india/jsmaps/jsmaps.css" rel="stylesheet" type="text/css" />
			<script src="/datacentre/js/jquery/india/jsmaps/jsmaps-libs.js" type="text/javascript"></script>
			<script src="/datacentre/js/jquery/india/jsmaps/jsmaps-panzoom.js" type="text/javascript"></script>
			<script src="/datacentre/js/jquery/india/maps/india.js" type="text/javascript"></script>
      	    <script>
      	 
      	    </script>
      	 
</head>
<body>
<div class="container">
  <h2>Modal Example</h2>
  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">India Map</h4>
        </div>
        <div class="modal-body">
          <p>Some text in the modal.</p>
          
          
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
            <div class="jsmaps-wrapper" id="india-map"></div>
</div>
<script type="text/javascript">

	
	
    $(function() {

      $('#india-map').JSMaps({
        map: 'india'
      });

    });
    
  </script>
</body>
</html>
    
</body>
</html>