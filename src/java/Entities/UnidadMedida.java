package Entities;
// Generated 16-oct-2017 18:50:52 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * UnidadMedida generated by hbm2java
 */
public class UnidadMedida  implements java.io.Serializable {


     private int idUnidadMedida;
     private UnidadMedida unidadMedida;
     private String nombreUnidadMedida;
     private boolean tipo;
     private String abreviacionUnidadMeida;
     private Set<Producto> productos = new HashSet<Producto>(0);
     private Set<UnidadMedida> unidadMedidas = new HashSet<UnidadMedida>(0);

    public UnidadMedida() {
    }

	
    public UnidadMedida(int idUnidadMedida, String nombreUnidadMedida, boolean tipo, String abreviacionUnidadMeida) {
        this.idUnidadMedida = idUnidadMedida;
        this.nombreUnidadMedida = nombreUnidadMedida;
        this.tipo = tipo;
        this.abreviacionUnidadMeida = abreviacionUnidadMeida;
    }
    public UnidadMedida(int idUnidadMedida, UnidadMedida unidadMedida, String nombreUnidadMedida, boolean tipo, String abreviacionUnidadMeida, Set<Producto> productos, Set<UnidadMedida> unidadMedidas) {
       this.idUnidadMedida = idUnidadMedida;
       this.unidadMedida = unidadMedida;
       this.nombreUnidadMedida = nombreUnidadMedida;
       this.tipo = tipo;
       this.abreviacionUnidadMeida = abreviacionUnidadMeida;
       this.productos = productos;
       this.unidadMedidas = unidadMedidas;
    }
   
    public int getIdUnidadMedida() {
        return this.idUnidadMedida;
    }
    
    public void setIdUnidadMedida(int idUnidadMedida) {
        this.idUnidadMedida = idUnidadMedida;
    }
    public UnidadMedida getUnidadMedida() {
        return this.unidadMedida;
    }
    
    public void setUnidadMedida(UnidadMedida unidadMedida) {
        this.unidadMedida = unidadMedida;
    }
    public String getNombreUnidadMedida() {
        return this.nombreUnidadMedida;
    }
    
    public void setNombreUnidadMedida(String nombreUnidadMedida) {
        this.nombreUnidadMedida = nombreUnidadMedida;
    }
    public boolean isTipo() {
        return this.tipo;
    }
    
    public void setTipo(boolean tipo) {
        this.tipo = tipo;
    }
    public String getAbreviacionUnidadMeida() {
        return this.abreviacionUnidadMeida;
    }
    
    public void setAbreviacionUnidadMeida(String abreviacionUnidadMeida) {
        this.abreviacionUnidadMeida = abreviacionUnidadMeida;
    }
    public Set<Producto> getProductos() {
        return this.productos;
    }
    
    public void setProductos(Set<Producto> productos) {
        this.productos = productos;
    }
    public Set<UnidadMedida> getUnidadMedidas() {
        return this.unidadMedidas;
    }
    
    public void setUnidadMedidas(Set<UnidadMedida> unidadMedidas) {
        this.unidadMedidas = unidadMedidas;
    }




}


