/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Sashini Shihara
 */
public class QuestionCategory {
    
    int category_id;
    String category;
    
    public QuestionCategory()
    {}
    
    public QuestionCategory(int category_id,String category)
    {
        this.category_id=category_id;
        this.category=category;
    }
    
     public int getcategoryId()
    {
        return category_id;
    }
    
    public void setcategoryId(int category_id) {
        this.category_id = category_id;
    }
    
    public String getCategory()
    {
        return category;
    }
    
    public void setCategory(String category)
    {
        this.category=category;
    }
}
