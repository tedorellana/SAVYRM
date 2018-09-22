angular.module('angularRoutingApp').controller('productosController', function ($scope, $http, $sessionStorage, $window, config) {
    //Removing slider
    var idCurrentUser = $sessionStorage.currentUser;
    var sessionLoggedIn = angular.isDefined(idCurrentUser);
    $scope.mostrarProductosPC = true;
    $scope.mostrarPreparacionPC = false;
      
    $scope.onLoadProductosController = function(){
        if(!sessionLoggedIn){
            $window.location.href = config.baseUrl;
        }
        else{
            $scope.getAllProductos();
            $scope.getUnidadMedidaNP();
            $scope.getTipoProductoNP();
        }
    };
    
    var lista_productosPC=[];
    $scope.getAllProductos = function(){
        $http({
            method: 'GET',
            url: 'http://localhost:8084/SAVYRM/webresources/ProductosResource/getAllProductos',
            data: {
            }
          }).then(function successCallback(response) {
              lista_productosPC = response.data;
              $scope.productosNP = lista_productosPC;
            }, function errorCallback(response) {
              alert("Sucedio un error no esperado. Por favor, intenta más tarde.");
            });        
    };
    
    $scope.agregarNuevoProductoNP = function(){
        $http({
            method: 'POST',
            url: 'http://localhost:8084/SAVYRM/webresources/ProductosResource/agregarNuevoProducto',
            data: { nombreProducto : $scope.nombreProductoNPM,
                    fk_idTIpoProducto : $scope.tipoProductoSelectedNPM,
                    fk_idUnidadMedida : $scope.unidadMedidaSelectedNPM
            }
        }).then(function successCallback(response){
        }, function errorCallback(){
           alert("Sucedio un error no esperado. Por favor, intenta más tarde.");
        });
    };
    
    $scope.getUnidadMedidaNP = function(){
        $http({
            method: 'GET',
            url: 'http://localhost:8084/SAVYRM/webresources/UnidadMedida/getUnidadMedida'
        }).then(function successCallback(response){
            $scope.unidadesMedida = response.data;
        }, function errorCallback(){
           alert("Sucedio un error no esperado. Por favor, intenta más tarde.");
        });
    };
    
    $scope.getTipoProductoNP = function(){
        $http({
            method: 'GET',
            url: 'http://localhost:8084/SAVYRM/webresources/TipoProducto/getTipoProducto'
        }).then(function successCallback(response){
            $scope.tiposProducto = response.data;
        }, function errorCallback(){
           alert("Sucedio un error no esperado. Por favor, intenta más tarde.");
        });
    };
    
    $scope.getDetallePorProductoNP = function(event){
        var productos = $scope.productosNP;
        angular.forEach(productos, function(producto){
            if(producto.idProducto == event.target.value ){
                $scope.productoAEditar = producto;
            }
        });
    };

    $scope.administrarPreparacionNP = function(event){
        $scope.mostrarProductosPC = false;
        $scope.mostrarPreparacionPC = true;
        
        var productos = $scope.productosNP;
        angular.forEach(productos, function(producto){
            if(producto.idProducto == event.target.value ){
                $scope.productoSeleccionadoElaboracionEPM = producto;
                $scope.getProductoFormulaNP();
                $scope.getProductoPreparacionNP();
            }
        });
    };
    
    $scope.getProductoFormulaNP = function(){
        $http({
            method: 'POST',
            url: 'http://localhost:8084/SAVYRM/webresources/ProductosResource/getProductoFormula',
            data: {
                idProducto : $scope.productoSeleccionadoElaboracionEPM.idProducto
            }
        }).then(function successCallback(response){
            $scope.productosSeleccionadosFormulaEPM = response.data;
            $scope.calcularPorcentajeContenedorFormula();
        }, function errorCallback(){
           alert("Sucedio un error no esperado. Por favor, intenta más tarde.");
        });
    };
    
    $scope.getProductoPreparacionNP = function(){
        $http({
            method: 'POST',
            url: 'http://localhost:8084/SAVYRM/webresources/ProductosResource/getProductoPreparacion',
            data: {
                idProducto : $scope.productoSeleccionadoElaboracionEPM.idProducto
            }
        }).then(function successCallback(response){
            $scope.productosSeleccionadosPreparacionEPM = response.data;
        }, function errorCallback(){
           alert("Sucedio un error no esperado. Por favor, intenta más tarde.");
        });
    };
    
    $scope.calcularPorcentajeContenedorFormula = function(){
        var porcentajeContenedor = 0;
        $scope.porcentajeContenedor = porcentajeContenedor;
      
        angular.forEach($scope.productosSeleccionadosFormulaEPM, function(productosSeleccionadoFormulaEPM){
            porcentajeContenedor += productosSeleccionadoFormulaEPM.porcentaje;
        });
        $scope.porcentajeContenedor = porcentajeContenedor;
    };
    
    $scope.ocultarPreparacionProductosPC = function(){
        $scope.mostrarProductosPC = true;
        $scope.mostrarPreparacionPC = false;
    };
    
    $scope.getProductosNoFinales = function(){
        $http({
            method: 'POST',
            url: 'http://localhost:8084/SAVYRM/webresources/ProductosResource/getListaProducto_TipoProductoNoFinales',
            data: {
                
            }
        }).then(function successCallback(response){
            $scope.productosNoFinalesParaFormulaNP = response.data;
        }, function errorCallback(){
           alert("Sucedio un error no esperado. Por favor, intenta más tarde.");
        });
    };
    
}); 