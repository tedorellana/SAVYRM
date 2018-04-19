package Entities;
// Generated 16-oct-2017 18:50:52 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Producto generated by hbm2java
 */
public class Producto  implements java.io.Serializable {


     private int idProducto;
     private TipoProducto tipoProducto;
     private UnidadMedida unidadMedida;
     private String nombreProducto;
     private String codigoProducto;
     private Boolean estadoProducto;
     private Set<ProductoFormula> productoFormulasForFkIdProductoInsumo = new HashSet<ProductoFormula>(0);
     private Set<Preparacion> preparacions = new HashSet<Preparacion>(0);
     private Set<ProductoSeccion> productoSeccions = new HashSet<ProductoSeccion>(0);
     private Set<Precio> precios = new HashSet<Precio>(0);
     private Set<ProductoFormula> productoFormulasForFkIdProductoElaborado = new HashSet<ProductoFormula>(0);

    public Producto() {
    }

	
    public Producto(int idProducto, TipoProducto tipoProducto, String nombreProducto, String codigoProducto) {
        this.idProducto = idProducto;
        this.tipoProducto = tipoProducto;
        this.nombreProducto = nombreProducto;
        this.codigoProducto = codigoProducto;
    }
    public Producto(int idProducto, TipoProducto tipoProducto, UnidadMedida unidadMedida, String nombreProducto, String codigoProducto, Boolean estadoProducto, Set<ProductoFormula> productoFormulasForFkIdProductoInsumo, Set<Preparacion> preparacions, Set<ProductoSeccion> productoSeccions, Set<Precio> precios, Set<ProductoFormula> productoFormulasForFkIdProductoElaborado) {
       this.idProducto = idProducto;
       this.tipoProducto = tipoProducto;
       this.unidadMedida = unidadMedida;
       this.nombreProducto = nombreProducto;
       this.codigoProducto = codigoProducto;
       this.estadoProducto = estadoProducto;
       this.productoFormulasForFkIdProductoInsumo = productoFormulasForFkIdProductoInsumo;
       this.preparacions = preparacions;
       this.productoSeccions = productoSeccions;
       this.precios = precios;
       this.productoFormulasForFkIdProductoElaborado = productoFormulasForFkIdProductoElaborado;
    }
   
    public int getIdProducto() {
        return this.idProducto;
    }
    
    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }
    public TipoProducto getTipoProducto() {
        return this.tipoProducto;
    }
    
    public void setTipoProducto(TipoProducto tipoProducto) {
        this.tipoProducto = tipoProducto;
    }
    public UnidadMedida getUnidadMedida() {
        return this.unidadMedida;
    }
    
    public void setUnidadMedida(UnidadMedida unidadMedida) {
        this.unidadMedida = unidadMedida;
    }
    public String getNombreProducto() {
        return this.nombreProducto;
    }
    
    public void setNombreProducto(String nombreProducto) {
        this.nombreProducto = nombreProducto;
    }
    public String getCodigoProducto() {
        return this.codigoProducto;
    }
    
    public void setCodigoProducto(String codigoProducto) {
        this.codigoProducto = codigoProducto;
    }
    public Boolean getEstadoProducto() {
        return this.estadoProducto;
    }
    
    public void setEstadoProducto(Boolean estadoProducto) {
        this.estadoProducto = estadoProducto;
    }
    public Set<ProductoFormula> getProductoFormulasForFkIdProductoInsumo() {
        return this.productoFormulasForFkIdProductoInsumo;
    }
    
    public void setProductoFormulasForFkIdProductoInsumo(Set<ProductoFormula> productoFormulasForFkIdProductoInsumo) {
        this.productoFormulasForFkIdProductoInsumo = productoFormulasForFkIdProductoInsumo;
    }
    public Set<Preparacion> getPreparacions() {
        return this.preparacions;
    }
    
    public void setPreparacions(Set<Preparacion> preparacions) {
        this.preparacions = preparacions;
    }
    public Set<ProductoSeccion> getProductoSeccions() {
        return this.productoSeccions;
    }
    
    public void setProductoSeccions(Set<ProductoSeccion> productoSeccions) {
        this.productoSeccions = productoSeccions;
    }
    public Set<Precio> getPrecios() {
        return this.precios;
    }
    
    public void setPrecios(Set<Precio> precios) {
        this.precios = precios;
    }
    public Set<ProductoFormula> getProductoFormulasForFkIdProductoElaborado() {
        return this.productoFormulasForFkIdProductoElaborado;
    }
    
    public void setProductoFormulasForFkIdProductoElaborado(Set<ProductoFormula> productoFormulasForFkIdProductoElaborado) {
        this.productoFormulasForFkIdProductoElaborado = productoFormulasForFkIdProductoElaborado;
    }




}


