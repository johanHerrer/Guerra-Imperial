package imperial;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *IMPLEMENTADORA 3
 * @author Usuario
 */
public class At extends Herencia{

    public At(int numPasajeros, int recorrido, int cantNaves, int parsec) {
        super(numPasajeros, recorrido, cantNaves, parsec);
    }
    
    public double calcular(int recorido, int cantNaves, int parsec){
        return ((recorido*cantNaves*parsec)-(recorido*cantNaves*parsec*0.25));
    }

    
}
