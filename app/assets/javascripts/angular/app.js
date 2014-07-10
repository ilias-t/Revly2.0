angular.module('app', [])
  .controller("TileController", ['$scope', function($scope) {
    $scope.tiles = gon.tiles;
  }]);