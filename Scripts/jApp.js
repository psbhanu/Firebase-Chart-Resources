(function () {
	'use strict';
	
	var user_id = 100; // Can be dynamically change to 100, 200, 300, 400, 500 etc.,
	var dataPoints = [];
	var limit = 10000;    //increase number of dataPoints by increasing the limit	
	var maximum = 100;
	var count = 1;
	
	//Better to construct options first and then pass it as a parameter
	var options = {
		type: "splineArea", //change it to line, area, column, pie, etc
		zoomEnabled: true,
		exportEnabled: true,
		animationEnabled: false,
		title: {
			text: "Chat updated by Firebase Realtime (JavaScript Only)"
		},
		axisX: {
			labelAngle: 30
		},
		axisY: {
			includeZero: true
		},
		data: [{
			type: "splineArea", //change it to line, area, bar, pie, etc
			dataPoints: dataPoints
		}]
	};

	window.onload = function() {
		//var chart = new CanvasJS.Chart("chartContainer", options);
		//chart.render();

	    var chart = new CanvasJS.Chart("chartContainer", options);
		var updateLiveChartData = function (point) {
			if (dataPoints.length) {
				//dataPoints = dataPoints.slice(1);
				dataPoints.shift();	
			}
			
			while (dataPoints.length < maximum) {
				dataPoints.push({
					x: count++,
					y: parseInt(point)
				});
			}
			
			chart.render();
		}
		
		var firebaseClient = function(onValue, user_id){
			// Initialize Firebase
			var config = {
				apiKey: "AIzaSyA42Yct7VLWgnnEEusWuY5tPlFTqFj2F5A",
				authDomain: "fir-realtime-e9a30.firebaseapp.com",
				databaseURL: "https://fir-realtime-e9a30.firebaseio.com",
				storageBucket: "fir-realtime-e9a30.appspot.com",
				messagingSenderId: "516180830611"
			};
			
			const DEFAULT_PATH = '/points';
			
			var mainFirebaseApp = firebase.initializeApp(config);
			console.log(mainFirebaseApp);
			var ref = mainFirebaseApp.database().ref(DEFAULT_PATH + '/' + user_id); 
			
			this.onValue = onValue || function(snapshot) {
				console.log(snapshot.val());
			};
			
			this.onError = function (errorObject) {
				console.log("The read failed: " + errorObject.code);
			};
			
			ref.on("value", this.onValue, this.onError);
		};

		var iFirebaseClient = new firebaseClient(function(snapshot){
			console.log(snapshot.val());
			if(snapshot.val() && snapshot.val().hasOwnProperty('point')){
				updateLiveChartData (snapshot.val().point);
			}
		}, user_id);
	};
})();