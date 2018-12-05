/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Marcelo
 */
@Local
public interface EnderecoFacadeLocal {

    void create(Endereco endereco);

    void edit(Endereco endereco);

    void remove(Endereco endereco);

    Endereco find(Object id);

    List<Endereco> findAll();

    List<Endereco> findRange(int[] range);

    int count();
    
}
