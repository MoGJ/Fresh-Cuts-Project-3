angular.module('appointmentApp', [])
  .controller('AppointmentController', function($scope) {

	var appointment = [
	];

	$scope.times = ["Weekday", "Weekend"];
	
	$scope.addAppointment = function() {
		$scope.appointment.push({first_name:$scope.first_name, last_name:$scope.last_name, email:$scope.email, phone:$scope.phone, time:$scope.apptime});
		$scope.first_name = "";
		$scope.last_name = "";
		$scope.email = "";
		$scope.phone = "";
		//$scope.time = default value?
	};

	$scope.editAppointment = function(index) {
		$scope.first_name = appointment[0].first_name;
		$scope.last_name = appointment[0].last_name;
		$scope.email = appointment[0].email;
		$scope.phone = appointment[0].phone;
		$scope.appointment.splice(index, 1);
	};

	$scope.appointment = appointment;
	$scope.first_name = appointment.first_name;
	$scope.last_name = appointment.last_name;
	$scope.email = appointment.email;
	$scope.phone = appointment.phone;
	$scope.apptime = appointment.time;
	
  });