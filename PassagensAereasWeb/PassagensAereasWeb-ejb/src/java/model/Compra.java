/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;

/**
 *
 * @author Marcelo
 */
@Entity
public class Compra implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date data;
    @OneToOne
    private Usuario usuario;
    @OneToMany
    private List<Passagem> passagem;

    public Compra() {
    }

    public Compra(Date data, Usuario usuario, List<Passagem> passagem) {
        this.data = data;
        this.usuario = usuario;
        this.passagem = passagem;
    }

    public Date getData() {
        return data;
    }

    public void setData(Date data) {
        this.data = data;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public List<Passagem> getPassagem() {
        return passagem;
    }

    public void setPassagem(List<Passagem> passagem) {
        this.passagem = passagem;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) id;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Compra)) {
            return false;
        }
        Compra other = (Compra) object;
        if (this.id != other.id) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.Compra[ id=" + id + " ]";
    }
    
}
