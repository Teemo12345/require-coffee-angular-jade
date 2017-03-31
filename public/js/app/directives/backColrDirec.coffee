define ['cs!app/modules/module'],(module)->
  module.directive "ngdBackColor",()->
    restrict:'A'
    link:(scope,elem,attrs)->
      scope.test = "this is directive"
      # console.log elem
      elem[0].style.background = "#ccc"