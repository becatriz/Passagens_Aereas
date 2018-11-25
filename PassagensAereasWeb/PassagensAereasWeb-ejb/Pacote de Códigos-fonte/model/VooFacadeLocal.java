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
public interface VooFacadeLocal {

    void create(Voo voo);

    void edit(Voo voo);

    void remove(Voo voo);

    Voo find(Object id);

    List<Voo> findAll();

    List<Voo> findRange(int[] range);

    int count();
    
}
