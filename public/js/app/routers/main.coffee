define [
  'angular'
  'cs!app/modules/module'
  'jade!app/tmpl/home'

  "cs!app/controllers/homeCtrl"
  ],(angular,module,tmpl_home)->
    module.config ($routeProvider)->
      $routeProvider
        .when "/",
          template:tmpl_home()
          controller: 'homeCtrl'
        
        .otherwise "/"
  