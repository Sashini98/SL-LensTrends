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
    String path;
    String uncompresedpath;
    double width;
    double height;
    String quality;
    String keywords;
    Date uploadedDate;
    double Price;
    boolean undiscovered;
    String photogrpherId;
    String title;
    int categoryId;
    boolean people;
    int orientationId;
    int stateId;
    int genderId;

    public Photograph() {
    }

    public Photograph(int id, String path, String uncompresedpath, double width, double height, String quality, String keywords, Date uploadedDate, double Price, boolean undiscovered, String photogrpherId, String title, int categoryId, boolean people, int orientationId, int stateId, int genderId) {
        this.id = id;
        this.path = path;
        this.uncompresedpath = uncompresedpath;
        this.width = width;
        this.height = height;
        this.quality = quality;
        this.keywords = keywords;
        this.uploadedDate = uploadedDate;
        this.Price = Price;
        this.undiscovered = undiscovered;
        this.photogrpherId = photogrpherId;
        this.title = title;
        this.categoryId = categoryId;
        this.people = people;
        this.orientationId = orientationId;
        this.stateId = stateId;
        this.genderId = genderId;
    }

    public String getUncompresedpath() {
        return uncompresedpath;
    }

    public void setUncompresedpath(String uncompresedpath) {
        this.uncompresedpath = uncompresedpath;
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

    public double getWidth() {
        return width;
    }

    public void setWidth(double width) {
        this.width = width;
    }

    public double getHeight() {
        return height;
    }

    public void setHeight(double height) {
        this.height = height;
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

    public double Price() {
        return Price;
    }

    public void setPrice(double Price) {
        this.Price = Price;
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

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
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
