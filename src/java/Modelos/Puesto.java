package Modelos;
// Generated 23-jun-2017 21:03:08 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Puesto generated by hbm2java
 */
public class Puesto  implements java.io.Serializable {


     private Integer idPuesto;
     private Parqueadero parqueadero;
     private int numero;
     private int piso;
     private String descripcion;
     private String estado;
     private Set mensualidads = new HashSet(0);
     private Set reservas = new HashSet(0);

    public Puesto() {
    }

	
    public Puesto(Parqueadero parqueadero, int numero, int piso, String descripcion, String estado) {
        this.parqueadero = parqueadero;
        this.numero = numero;
        this.piso = piso;
        this.descripcion = descripcion;
        this.estado = estado;
    }
    public Puesto(Parqueadero parqueadero, int numero, int piso, String descripcion, String estado, Set mensualidads, Set reservas) {
       this.parqueadero = parqueadero;
       this.numero = numero;
       this.piso = piso;
       this.descripcion = descripcion;
       this.estado = estado;
       this.mensualidads = mensualidads;
       this.reservas = reservas;
    }
   
    public Integer getIdPuesto() {
        return this.idPuesto;
    }
    
    public void setIdPuesto(Integer idPuesto) {
        this.idPuesto = idPuesto;
    }
    public Parqueadero getParqueadero() {
        return this.parqueadero;
    }
    
    public void setParqueadero(Parqueadero parqueadero) {
        this.parqueadero = parqueadero;
    }
    public int getNumero() {
        return this.numero;
    }
    
    public void setNumero(int numero) {
        this.numero = numero;
    }
    public int getPiso() {
        return this.piso;
    }
    
    public void setPiso(int piso) {
        this.piso = piso;
    }
    public String getDescripcion() {
        return this.descripcion;
    }
    
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    public String getEstado() {
        return this.estado;
    }
    
    public void setEstado(String estado) {
        this.estado = estado;
    }
    public Set getMensualidads() {
        return this.mensualidads;
    }
    
    public void setMensualidads(Set mensualidads) {
        this.mensualidads = mensualidads;
    }
    public Set getReservas() {
        return this.reservas;
    }
    
    public void setReservas(Set reservas) {
        this.reservas = reservas;
    }




}


