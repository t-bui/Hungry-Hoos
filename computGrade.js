 angular.module("myApp", [])     /* create a module, which defines an application */ 
        /* use dependency injection to access a value provided named start */
   .controller("counterController", ["$scope", /* create a controller named counterController and pass an array of dependencies */ 
                                     function($scope) { 
      /* initialize values */

      $scope.total = 0;
      $scope.avge;
      
      /* implement business logic using inc(), dec(), and calcDiff() functions */
      
      $scope.computeWithDrop = function() {     /* attach a function to $scope */
         /*$scope.score1 = 'prj1';
         $scope.score2 = 'prj2';
         $scope.score3 = 'prj3';
         $scope.score4 = 'prj4';
         $scope.score5 = 'prj5';
         $scope.score6 = 'prj6';
         */
         var min =  Math.min($scope.prj1/30, $scope.prj2/100, $scope.prj3/100, $scope.prj4/100, $scope.prj5/50, $scope.prj6/100);
         $scope.total = $scope.prj1/30 + $scope.prj2/100 + $scope.prj3/100 + $scope.prj4/100 + $scope.prj5/50 + $scope.prj6/100;
         $scope.total -= min;
         $scope.avge = $scope.total/5;
         
        	 
      };
      
      $scope.computeNoDrop = function() {     /* attach a function to $scope */
    	  /*$scope.score1 = 'pj1';
          $scope.score2 = 'pj2';
          $scope.score3 = 'pj3';
          $scope.score4 = 'pj4';
          $scope.score5 = 'pj5';
          $scope.score6 = 'pj6';
          */
    	  $scope.total = $scope.prj1/30 + $scope.prj2/100 + $scope.prj3/100 + $scope.prj4/100 + $scope.prj5/50 + $scope.prj6/100;
          $scope.avge = $scope.total/6;
      };
      
    
      
   }]);
       
 