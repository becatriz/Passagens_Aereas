/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author Marcelo
 */
@Entity
public class Aeronave implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private String codigo;
    private String tipo;
    private int aeroportoId;

    public Aeronave() {
    }

    public Aeronave(String codigo, String tipo) {
        this.codigo = codigo;
        this.tipo = tipo;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setId(String codigo) {
        this.codigo = codigo;
    }
    
    public int getAeroportoId() {
        return aeroportoId;
    }

    public void setAeroportoId(int aeroportoId) {
        this.aeroportoId = aeroportoId;
    }
    

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (codigo != null ? codigo.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Aeronave)) {
            return false;
        }
        Aeronave other = (Aeronave) object;
        if ((this.codigo == null && other.codigo != null) || (this.codigo != null && !this.codigo.equals(other.codigo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.Aeronave[ codigo=" + codigo + " ]";
    }
    
}
