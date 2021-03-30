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
public class ModalRelease {

    int id;
    String path;
    int photographId;

    public ModalRelease() {
    }

    public ModalRelease(int id, String path, int photographId) {
        this.id = id;
        this.path = path;
        this.photographId = photographId;
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

    public int getPhotographId() {
        return photographId;
    }

    public void setPhotographId(int photographId) {
        this.photographId = photographId;
    }



}
