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
public class portfolio_photograph {
    int id;
    String path;
    String title;
    String photogrpherId;

    public portfolio_photograph() {
    }

    public portfolio_photograph(int id, String path, String title, String photogrpherId) {
        this.id = id;
        this.path = path;
        this.title = title;
        this.photogrpherId = photogrpherId;
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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getPhotogrpherId() {
        return photogrpherId;
    }

    public void setPhotogrpherId(String photogrpherId) {
        this.photogrpherId = photogrpherId;
    }
     
    
}
