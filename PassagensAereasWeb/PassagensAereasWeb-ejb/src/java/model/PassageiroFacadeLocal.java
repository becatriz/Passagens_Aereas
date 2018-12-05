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
public interface PassageiroFacadeLocal {

    void create(Passageiro passageiro);

    void edit(Passageiro passageiro);

    void remove(Passageiro passageiro);

    Passageiro find(Object id);

    List<Passageiro> findAll();

    List<Passageiro> findRange(int[] range);

    int count();
    
}
