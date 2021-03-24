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
public class Cart {
    
    int cartId;
    int clientId;

    public Cart() {
    }

    public Cart(int cartId, int clientId) {
        this.cartId = cartId;
        this.clientId = clientId;
    }

    public int getCartId() {
        return cartId;
    }

    public void setCartId(int cartId) {
        this.cartId = cartId;
    }

    public int getClientId() {
        return clientId;
    }

    public void setClientId(int clientId) {
        this.clientId = clientId;
    }
    
    
    
}
