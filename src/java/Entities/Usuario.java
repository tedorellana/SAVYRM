package Entities;
// Generated 01-may-2018 23:13:47 by Hibernate Tools 3.6.0



/**
 * Usuario generated by hbm2java
 */
public class Usuario  implements java.io.Serializable {


     private int idUsuario;
     private TipoUsuario tipoUsuario;
     private Persona persona;
     private String nombreUsuario;
     private String contrasenhaUsuario;

    public Usuario() {
    }

    public Usuario(int idUsuario, TipoUsuario tipoUsuario, Persona persona, String nombreUsuario, String contrasenhaUsuario) {
       this.idUsuario = idUsuario;
       this.tipoUsuario = tipoUsuario;
       this.persona = persona;
       this.nombreUsuario = nombreUsuario;
       this.contrasenhaUsuario = contrasenhaUsuario;
    }
   
    public int getIdUsuario() {
        return this.idUsuario;
    }
    
    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }
    public TipoUsuario getTipoUsuario() {
        return this.tipoUsuario;
    }
    
    public void setTipoUsuario(TipoUsuario tipoUsuario) {
        this.tipoUsuario = tipoUsuario;
    }
    public Persona getPersona() {
        return this.persona;
    }
    
    public void setPersona(Persona persona) {
        this.persona = persona;
    }
    public String getNombreUsuario() {
        return this.nombreUsuario;
    }
    
    public void setNombreUsuario(String nombreUsuario) {
        this.nombreUsuario = nombreUsuario;
    }
    public String getContrasenhaUsuario() {
        return this.contrasenhaUsuario;
    }
    
    public void setContrasenhaUsuario(String contrasenhaUsuario) {
        this.contrasenhaUsuario = contrasenhaUsuario;
    }




}


