var app = angular.module('myFetch', []);
app.controller('fetchCtrl', function($scope, $http) {
  $http.get("save.php").then(function (response) {
      $scope.myBatsman = response.data.players;
  });
});