/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.Date;

/**
 *
 * @author kesh
 */
public class Photograph {

    int id;
    int categoryId;
    String path;
    String size;
    String quality;
    String keywords;
    Date uploadedDate;
    boolean forSale;
    boolean undiscovered;
    String photogrpherId;
    String title;
    String discription;
    boolean people;
    int orientationId;
    int stateId;
    int genderId;

    public Photograph() {
    }

    public Photograph(int id, int categoryId, String path, String size, String quality, String keywords, Date uploadedDate, boolean forSale, boolean undiscovered, String photogrpherId, String title, String discription, boolean people, int orientationId, int stateId, int genderId) {
        this.id = id;
        this.categoryId = categoryId;
        this.path = path;
        this.size = size;
        this.quality = quality;
        this.keywords = keywords;
        this.uploadedDate = uploadedDate;
        this.forSale = forSale;
        this.undiscovered = undiscovered;
        this.photogrpherId = photogrpherId;
        this.title = title;
        this.discription = discription;
        this.people = people;
        this.orientationId = orientationId;
        this.stateId = stateId;
        this.genderId = genderId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getQuality() {
        return quality;
    }

    public void setQuality(String quality) {
        this.quality = quality;
    }

    public String getKeywords() {
        return keywords;
    }

    public void setKeywords(String keywords) {
        this.keywords = keywords;
    }

    public Date getUploadedDate() {
        return uploadedDate;
    }

    public void setUploadedDate(Date uploadedDate) {
        this.uploadedDate = uploadedDate;
    }

    public boolean isForSale() {
        return forSale;
    }

    public void setForSale(boolean forSale) {
        this.forSale = forSale;
    }

    public boolean isUndiscovered() {
        return undiscovered;
    }

    public void setUndiscovered(boolean undiscovered) {
        this.undiscovered = undiscovered;
    }

    public String getPhotogrpherId() {
        return photogrpherId;
    }

    public void setPhotogrpherId(String photogrpherId) {
        this.photogrpherId = photogrpherId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDiscription() {
        return discription;
    }

    public void setDiscription(String discription) {
        this.discription = discription;
    }

    public boolean isPeople() {
        return people;
    }

    public void setPeople(boolean people) {
        this.people = people;
    }

    public int getOrientationId() {
        return orientationId;
    }

    public void setOrientationId(int orientationId) {
        this.orientationId = orientationId;
    }

    public int getStateId() {
        return stateId;
    }

    public void setStateId(int stateId) {
        this.stateId = stateId;
    }

    public int getGenderId() {
        return genderId;
    }

    public void setGenderId(int genderId) {
        this.genderId = genderId;
    }

    
    
    
}
