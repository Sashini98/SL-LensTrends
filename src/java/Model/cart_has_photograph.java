/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author kesh
 */
public class cart_has_photograph {
    
    int cartId;
    Photograph photograph;

    public cart_has_photograph() {
    }

    public cart_has_photograph(int cartId, Photograph photograph) {
        this.cartId = cartId;
        this.photograph = photograph;
    }

    public int getCartId() {
        return cartId;
    }

    public void setCartId(int cartId) {
        this.cartId = cartId;
    }

    public Photograph getPhotograph() {
        return photograph;
    }

    public void setPhotograph(Photograph photograph) {
        this.photograph = photograph;
    }
    
    
    
}
