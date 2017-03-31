define [
  'cs!app/modules/module'
  'cs!app/directives/backColrDirec'
  "cs!app/services/homeServ"],

  (module)->
    module.controller 'homeCtrl',($scope,homeServ)->
      $scope.title = 'home controller'
      $scope.homeData = homeServ.data
      console.log $scope.homeData