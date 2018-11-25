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
public interface AeronaveFacadeLocal {

    void create(Aeronave aeronave);

    void edit(Aeronave aeronave);

    void remove(Aeronave aeronave);

    Aeronave find(Object id);

    List<Aeronave> findAll();

    List<Aeronave> findRange(int[] range);

    int count();
    
}
