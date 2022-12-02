package com.proyecto.proyectods4.Models;

public class Descripcion {
    String nombre;
    String descripcion;
    String foto;
    String detalles;
    String consumo;

    public Descripcion() {
    }

    public Descripcion(String nombre, String descripcion, String foto, String detalles, String consumo) {
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.foto = foto;
        this.detalles = detalles;
        this.consumo = consumo;
    }

    public String getDetalles() {
        return detalles;
    }

    public void setDetalles(String detalles) {
        this.detalles = detalles;
    }

    public String getConsumo() {
        return consumo;
    }

    public void setConsumo(String consumo) {
        this.consumo = consumo;
    }

    public String getNombre() {
        return nombre;
    }
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getDescripcion() {
        return descripcion;
    }
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    public String getFoto() {
        return foto;
    }
    public void setFoto(String foto) {
        this.foto = foto;
    }


}
