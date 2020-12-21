/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Dao;

import Model.Photograph;
import java.util.ArrayList;

/**
 *
 * @author kesh
 */
public interface PhotographDao {
    
    public ArrayList<Photograph> getPhotographByKeyWord(String keyword);
    
}
