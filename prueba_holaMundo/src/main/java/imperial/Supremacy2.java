/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package imperial;

/**
 *
 * @author Johan Herrera
 */
public class Supremacy2 extends Herencia{
    
    protected int ships;

    public Supremacy2(int ships, int numPasajeros, int recorrido, int cantNaves, int parsec) {
        super(numPasajeros, recorrido, cantNaves, parsec);
        this.ships = ships;
    }

    public int getShips() {
        return ships;
    }

    public void setShips(int ships) {
        this.ships = ships;
    }

    public double calcular(int recorido, int cantNaves, int parsec){
        return ((recorido*cantNaves*parsec)+(ships*0.1*recorido*cantNaves*parsec));
    }
    
    
}
