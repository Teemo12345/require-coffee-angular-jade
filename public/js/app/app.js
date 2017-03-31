require.config({
  baseUrl:'./js/',
  paths:{
    angular:"vendor/angular/angular.min",
    ngRoute:"vendor/angular-route/angular-route.min",
    cs:"vendor/require-cs/cs",
    jade:"vendor/require-jade/jade",
    "coffee-script":"vendor/coffeescript/extras/coffee-script"
  },
  shim:{
    angular:{
      exports:"angular"
    },
    ngRoute:{
      deps:["angular"],
      exports:"ngRoute"
    }
  }

});

require(["angular","cs!app/routers/main"],function(angular,main){
  angular.element().ready(function(){
    angular.bootstrap(document.documentElement,["myApp"])
  })
})