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
public interface PassagemFacadeLocal {

    void create(Passagem passagem);

    void edit(Passagem passagem);

    void remove(Passagem passagem);

    Passagem find(Object id);

    List<Passagem> findAll();

    List<Passagem> findRange(int[] range);

    int count();
    
}
