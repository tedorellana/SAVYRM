package Entities;
// Generated 16-oct-2017 18:50:52 by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * ProductoSeccion generated by hbm2java
 */
public class ProductoSeccion  implements java.io.Serializable {


     private int idProductoSeccion;
     private Lote lote;
     private Producto producto;
     private Seccion seccion;
     private double cantidadProductoSeccion;
     private Date fechaIngreso;
     private Set<ServicioProducto> servicioProductos = new HashSet<ServicioProducto>(0);

    public ProductoSeccion() {
    }

	
    public ProductoSeccion(int idProductoSeccion, Lote lote, Producto producto, Seccion seccion, double cantidadProductoSeccion, Date fechaIngreso) {
        this.idProductoSeccion = idProductoSeccion;
        this.lote = lote;
        this.producto = producto;
        this.seccion = seccion;
        this.cantidadProductoSeccion = cantidadProductoSeccion;
        this.fechaIngreso = fechaIngreso;
    }
    public ProductoSeccion(int idProductoSeccion, Lote lote, Producto producto, Seccion seccion, double cantidadProductoSeccion, Date fechaIngreso, Set<ServicioProducto> servicioProductos) {
       this.idProductoSeccion = idProductoSeccion;
       this.lote = lote;
       this.producto = producto;
       this.seccion = seccion;
       this.cantidadProductoSeccion = cantidadProductoSeccion;
       this.fechaIngreso = fechaIngreso;
       this.servicioProductos = servicioProductos;
    }
   
    public int getIdProductoSeccion() {
        return this.idProductoSeccion;
    }
    
    public void setIdProductoSeccion(int idProductoSeccion) {
        this.idProductoSeccion = idProductoSeccion;
    }
    public Lote getLote() {
        return this.lote;
    }
    
    public void setLote(Lote lote) {
        this.lote = lote;
    }
    public Producto getProducto() {
        return this.producto;
    }
    
    public void setProducto(Producto producto) {
        this.producto = producto;
    }
    public Seccion getSeccion() {
        return this.seccion;
    }
    
    public void setSeccion(Seccion seccion) {
        this.seccion = seccion;
    }
    public double getCantidadProductoSeccion() {
        return this.cantidadProductoSeccion;
    }
    
    public void setCantidadProductoSeccion(double cantidadProductoSeccion) {
        this.cantidadProductoSeccion = cantidadProductoSeccion;
    }
    public Date getFechaIngreso() {
        return this.fechaIngreso;
    }
    
    public void setFechaIngreso(Date fechaIngreso) {
        this.fechaIngreso = fechaIngreso;
    }
    public Set<ServicioProducto> getServicioProductos() {
        return this.servicioProductos;
    }
    
    public void setServicioProductos(Set<ServicioProducto> servicioProductos) {
        this.servicioProductos = servicioProductos;
    }




}

