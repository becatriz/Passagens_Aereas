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
public interface PilotoFacadeLocal {

    void create(Piloto piloto);

    void edit(Piloto piloto);

    void remove(Piloto piloto);

    Piloto find(Object id);

    List<Piloto> findAll();

    List<Piloto> findRange(int[] range);

    int count();
    
}
