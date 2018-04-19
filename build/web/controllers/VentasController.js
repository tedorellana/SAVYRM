angular.module('angularRoutingApp').controller('ventasController', function ($scope, $http, $rootScope) {

    $scope.message = 'VENTASSSSSSSS';
    $scope.especial = 'VENTAS';
    
    $scope.borrarSlider = function(){
        $scope.especial = 'presionado';
        var iEl = angular.element( document.querySelector( '#slider' ) );
        iEl.remove();
    };
    
    var lista_Persona_Servicio=[] ;
    $scope.getVentas = function(){
        $scope.borrarSlider();
        $http({
            method: 'GET',
            url: 'http://localhost:8084/SAVYRM/webresources/Ventas/getVentas',
            data: {
            }
          }).then(function successCallback(response) {
              lista_Persona_Servicio = response.data;
              $scope.ventas = lista_Persona_Servicio;
            }, function errorCallback(response) {
              alert("no funciona ERROOR");
            });        
    };
    
    $scope.getDetallesPorServicio = function(){
        
    };
});

