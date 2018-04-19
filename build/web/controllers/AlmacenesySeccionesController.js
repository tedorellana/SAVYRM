angular.module('angularRoutingApp').controller('almacenesSeccionesController', function ($scope, $http, $sessionStorage, $window, config) {
    //Removing slider
    var idCurrentUser = $sessionStorage.currentUser;
    var sessionLoggedIn = angular.isDefined(idCurrentUser);
   
    $scope.onLoadAlmacenesySeccionesController = function(){
        if(!sessionLoggedIn){
            $window.location.href = config.baseUrl;
        }
        else{
            $scope.getTodosLosAlmacenes();
        }
    };
    
    var lista_almacenes=[];
    $scope.getTodosLosAlmacenes = function(){
        $http({
            method: 'GET',
            url: 'http://localhost:8084/SAVYRM/webresources/AlmacenResource/getAllAlmacenes',
            data: {
            }
          }).then(function successCallback(response) {
              lista_almacenes = response.data;
              $scope.almacenes = lista_almacenes;
            }, function errorCallback(response) {
              alert("no funciona ERROR");
            });        
    };
    
    
    var almacenSeleccionado, almacenSeleccionadoAS;
    $scope.mostrarAlmacenesAS = true;
    $scope.mostrarSeccionesAS = false;
    $scope.getSeccionesPorAlmacenAS = function(event){
        if(typeof(event) === "string"){
            almacenSeleccionado = event;
        }
        else{
            almacenSeleccionado = event.target.value;
        }
            
        $http({
            method: 'POST',
            url: 'http://localhost:8084/SAVYRM/webresources/AlmacenResource/getSeccionesPorAlmacenID',
            data: { idAlmacen : almacenSeleccionado
            }
          }).then(function successCallback(response) {
              $scope.listaSeccionesAS = response.data;
              $scope.mostrarAlmacenesAS = false;
              $scope.mostrarSeccionesAS = true;
              almacenSeleccionadoAS = almacenSeleccionado;
            }, function errorCallback(response) {
              alert("no funciona ERROOR");
            });
    };
    
    $scope.volverASeleccionarAlmacenesAS = function(){
        $scope.mostrarAlmacenesAS = true;
        $scope.mostrarSeccionesAS = false;
        $scope.getTodosLosAlmacenes();
        almacenSeleccionadoAS = undefined;
    };
    
    //Modal Nuevo Almacen
    $scope.AgregarAlmacenNAM = function(){
        var nombreAlmacenNAM = $scope.nombreAlmacenNAM;
        var direccionNAM = $scope.direccionNAM;
        var capacidadNAM = $scope.capacidadNAM;
        
        $http({
            method: 'POST',
            url: 'http://localhost:8084/SAVYRM/webresources/AlmacenResource/agregarNuevoAlmacen',
            data: { nombreAlmacen : nombreAlmacenNAM,
                    direccion : direccionNAM,
                    capacidad : capacidadNAM
            }
          }).then(function successCallback(response) {
                alert(response.data);
                $scope.getTodosLosAlmacenes();
            }, function errorCallback(response) {
              alert("no funciona ERROOR");
            });
    };
    //Modal Nueva Seccion
     $scope.AgregarNuevaSeccionNSM = function(){
        $http({
            method: 'POST',
            url: 'http://localhost:8084/SAVYRM/webresources/AlmacenResource/agregarNuevaSeccion',
            data: { codigoSeccion : $scope.codigoSeccionNSM,
                    capacidadSeccion : $scope.capacidadSeccionNSM,
                    detalle : $scope.detalleNSM,
                    fk_idAlmacen : almacenSeleccionadoAS
            }
          }).then(function successCallback(response) {
                alert(response.data);
                $scope.getSeccionesPorAlmacenAS(almacenSeleccionadoAS);
            }, function errorCallback(response) {
              alert("no funciona ERROOR");
            });
    };
    
});