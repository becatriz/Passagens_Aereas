/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

/**
 *
 * @author Marcelo
 */
@Entity
public class Aeroporto implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String nome;
    @OneToOne
    private Endereco endereco;
    private long idEndereco;
    @OneToMany
    private List<Aeronave> aeronaves;

    public Aeroporto() {
    }

    public Aeroporto(String nome, Endereco endereco, long idEndereco, List<Aeronave> aeronave) {
        this.nome = nome;
        this.endereco = endereco;
        this.idEndereco = idEndereco;
        this.aeronaves = aeronave;
    }
    
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Endereco getEndereco() {
        return endereco;
    }

    public void setEndereco(Endereco endereco) {
        this.endereco = endereco;
    }

    public List<Aeronave> getAeronave() {
        return aeronaves;
    }

    public void setAeronave(List<Aeronave> aeronave) {
        this.aeronaves = aeronave;
    }

    public long getIdEndereco() {
        return endereco.getId();
    }

    public Long getId() {
        return id;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Aeroporto)) {
            return false;
        }
        Aeroporto other = (Aeroporto) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.Aeroporto[ id=" + id + " ]";
    }
    
}
