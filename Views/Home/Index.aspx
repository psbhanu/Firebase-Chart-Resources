﻿<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html>

<html ng-app="iApp">

<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <meta charset="UTF-8">
	<title>Real Time - Firebase updated Chart</title>
	<link rel="stylesheet" href="~/node_modules/font-awesome/css/font-awesome.min.css">
	<link href="../../node_modules/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <link href="../../Content/Style.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <div class="container">
		<div class="text-center aspect-ratio" id="container" ng-controller="ChartCtrl" style="xxborder:1px solid #cdcdcd;">
			<h1>Real Time - Firebase updated Chart (POC)</h1>
			<canvas 
				width="1200" 
				height="320" 
				id="hero-bar" 
				class="chart chart-line" 
				chart-data="data"
				chart-options="options" 
				chart-labels="labels"
				chart-colors="colors"
			>
			</canvas>
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
	<script src="../../node_modules/angular/angular.min.js"></script>	
	<script src="../../node_modules/chart.js/dist/Chart.min.js"></script>
	<script src="../../node_modules/angular-ui-bootstrap/dist/ui-bootstrap-tpls.js"></script>
	<!--<script src="../../node_modules/angular-bootstrap/ui-bootstrap-tpls.min.js"></script>-->
	<script src="../../node_modules/angular-prompt/dist/angular-prompt.min.js"></script>
	<script src="../../node_modules/angular-chart.js/dist/angular-chart.min.js"></script>
	<script src="../../Scripts/app.js"></script>
</body>
</html>
