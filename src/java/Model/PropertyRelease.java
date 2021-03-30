/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author ASUS
 */
public class PropertyRelease {

    int id;
    String path;
    int photographeId;

    public PropertyRelease() {
    }

    public PropertyRelease(int id, String path, int photographeId) {
        this.id = id;
        this.path = path;
        this.photographeId = photographeId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public int getPhotographeId() {
        return photographeId;
    }

    public void setPhotographeId(int photographeId) {
        this.photographeId = photographeId;
    }

 


}
