package Modelos;
// Generated 23-jun-2017 21:03:08 by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * Reserva generated by hbm2java
 */
public class Reserva  implements java.io.Serializable {


     private Integer idReserva;
     private Cliente cliente;
     private Puesto puesto;
     private Date fechaEntrada;
     private Date fechaSalida;
     private Float total;
     private String estado;

    public Reserva() {
    }

	
    public Reserva(Cliente cliente, Puesto puesto, Date fechaEntrada, Date fechaSalida, String estado) {
        this.cliente = cliente;
        this.puesto = puesto;
        this.fechaEntrada = fechaEntrada;
        this.fechaSalida = fechaSalida;
        this.estado = estado;
    }
    public Reserva(Cliente cliente, Puesto puesto, Date fechaEntrada, Date fechaSalida, Float total, String estado) {
       this.cliente = cliente;
       this.puesto = puesto;
       this.fechaEntrada = fechaEntrada;
       this.fechaSalida = fechaSalida;
       this.total = total;
       this.estado = estado;
    }
   
    public Integer getIdReserva() {
        return this.idReserva;
    }
    
    public void setIdReserva(Integer idReserva) {
        this.idReserva = idReserva;
    }
    public Cliente getCliente() {
        return this.cliente;
    }
    
    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }
    public Puesto getPuesto() {
        return this.puesto;
    }
    
    public void setPuesto(Puesto puesto) {
        this.puesto = puesto;
    }
    public Date getFechaEntrada() {
        return this.fechaEntrada;
    }
    
    public void setFechaEntrada(Date fechaEntrada) {
        this.fechaEntrada = fechaEntrada;
    }
    public Date getFechaSalida() {
        return this.fechaSalida;
    }
    
    public void setFechaSalida(Date fechaSalida) {
        this.fechaSalida = fechaSalida;
    }
    public Float getTotal() {
        return this.total;
    }
    
    public void setTotal(Float total) {
        this.total = total;
    }
    public String getEstado() {
        return this.estado;
    }
    
    public void setEstado(String estado) {
        this.estado = estado;
    }




}

