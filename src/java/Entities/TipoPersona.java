package Entities;
// Generated 01-may-2018 23:13:47 by Hibernate Tools 3.6.0


import java.util.HashSet;
import java.util.Set;

/**
 * TipoPersona generated by hbm2java
 */
public class TipoPersona  implements java.io.Serializable {


     private int idTipoPersona;
     private String nombreTipoPersona;
     private Set<Persona> personas = new HashSet<Persona>(0);

    public TipoPersona() {
    }

	
    public TipoPersona(int idTipoPersona, String nombreTipoPersona) {
        this.idTipoPersona = idTipoPersona;
        this.nombreTipoPersona = nombreTipoPersona;
    }
    public TipoPersona(int idTipoPersona, String nombreTipoPersona, Set<Persona> personas) {
       this.idTipoPersona = idTipoPersona;
       this.nombreTipoPersona = nombreTipoPersona;
       this.personas = personas;
    }
   
    public int getIdTipoPersona() {
        return this.idTipoPersona;
    }
    
    public void setIdTipoPersona(int idTipoPersona) {
        this.idTipoPersona = idTipoPersona;
    }
    public String getNombreTipoPersona() {
        return this.nombreTipoPersona;
    }
    
    public void setNombreTipoPersona(String nombreTipoPersona) {
        this.nombreTipoPersona = nombreTipoPersona;
    }
    public Set<Persona> getPersonas() {
        return this.personas;
    }
    
    public void setPersonas(Set<Persona> personas) {
        this.personas = personas;
    }




}


