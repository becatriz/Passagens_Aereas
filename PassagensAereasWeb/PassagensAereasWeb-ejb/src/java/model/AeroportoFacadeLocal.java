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
public interface AeroportoFacadeLocal {

    void create(Aeroporto aeroporto);

    void edit(Aeroporto aeroporto);

    void remove(Aeroporto aeroporto);

    Aeroporto find(Object id);

    List<Aeroporto> findAll();

    List<Aeroporto> findRange(int[] range);

    int count();
    
}
