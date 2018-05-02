var app = angular.module('myFetch', []);
app.controller('fetchCtrl', function($scope, $http) {
  $http.get("getData.php").then(function (response) {
      $scope.myBatsman = response.data.players;
  });
});