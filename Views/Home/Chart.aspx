<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html>

<html ng-app="iApp">

<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <meta charset="UTF-8">
	<title>Real Time - Firebase updated Chart - JavaScript Only</title>
	<link rel="stylesheet" href="../../Content/css/font-awesome.min.css">
	<link href="../../Content/css/bootstrap.min.css" rel="stylesheet">

    <link href="../../Content/css/Style.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <div class="container">
		<div class="text-center aspect-ratio" id="container">
			<div id="chartContainer" style="height: 300px; width: 100%;"></div>
		</div>

		<div class="btn btn-danger text-center btn-block">No updates on Chart?</div>
		<a class="btn btn-danger text-center btn-block" href="//demo.psbhanu.com/firebase-realtime/" target="_blank">Make Sure Server is Running?</a>
		<div class="btn btn-success text-center btn-block" onClick="window.location.reload()">Try User Id 1, 2, 3, 4 or 5</div>
	</div>

	<script src="//www.gstatic.com/firebasejs/3.6.9/firebase.js"></script>
	<script src="//www.gstatic.com/firebasejs/3.6.9/firebase-app.js"></script>
	<script src="//www.gstatic.com/firebasejs/3.6.9/firebase-auth.js"></script>
	<script src="//www.gstatic.com/firebasejs/3.6.9/firebase-database.js"></script>
	<script src="//www.gstatic.com/firebasejs/3.6.9/firebase-messaging.js"></script>	
	
    <script src="../../Content/js/canvasjs.min.js"></script>
    <script src="../../Scripts/jApp.js"></script>
</body>
</html>
