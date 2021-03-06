package Entities;
// Generated 01-may-2018 23:13:47 by Hibernate Tools 3.6.0


import java.util.HashSet;
import java.util.Set;

/**
 * Formula generated by hbm2java
 */
public class Formula  implements java.io.Serializable {


     private int idFormula;
     private String nombreFormula;
     private String detalleFormula;
     private Set<ProductoFormula> productoFormulas = new HashSet<ProductoFormula>(0);

    public Formula() {
    }

	
    public Formula(int idFormula) {
        this.idFormula = idFormula;
    }
    public Formula(int idFormula, String nombreFormula, String detalleFormula, Set<ProductoFormula> productoFormulas) {
       this.idFormula = idFormula;
       this.nombreFormula = nombreFormula;
       this.detalleFormula = detalleFormula;
       this.productoFormulas = productoFormulas;
    }
   
    public int getIdFormula() {
        return this.idFormula;
    }
    
    public void setIdFormula(int idFormula) {
        this.idFormula = idFormula;
    }
    public String getNombreFormula() {
        return this.nombreFormula;
    }
    
    public void setNombreFormula(String nombreFormula) {
        this.nombreFormula = nombreFormula;
    }
    public String getDetalleFormula() {
        return this.detalleFormula;
    }
    
    public void setDetalleFormula(String detalleFormula) {
        this.detalleFormula = detalleFormula;
    }
    public Set<ProductoFormula> getProductoFormulas() {
        return this.productoFormulas;
    }
    
    public void setProductoFormulas(Set<ProductoFormula> productoFormulas) {
        this.productoFormulas = productoFormulas;
    }




}


