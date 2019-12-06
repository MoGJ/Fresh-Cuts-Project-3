angular.module('appointmentApp', [])
  .controller('BarbershopController', function($scope) {


    $scope.barbershops = [
        {
            pic: "uploads/barber_team_01.jpg",
            name: "John's Parlor",
            location: "East Houston, TX",
            price: "$12",
            rating: "5 stars"
        },
        {
            pic: "uploads/barber_team_02.jpg",
            name: "Don's Cuts 4 Less",
            location: "West Houston, TX",
            price: "$9",
            rating: "4 stars"
        },
        {
            pic: "uploads/barber_team_03.jpg",
            name: "Juicy J Styles",
            location: "Midtown Houston, TX",
            price: "$20",
            rating: "4.5 stars"
        }
    ]


    
	
  });