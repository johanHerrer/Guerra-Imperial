package imperial;
/* *
 *
 * @author Usuario
 */
public class Herencia {
    
    protected int numPasajeros;
    protected int recorrido;
    protected int cantNaves;
    protected int parsec; 

    public Herencia(int numPasajeros, int recorrido, int cantNaves, int parsec) {
        this.numPasajeros = numPasajeros;
        this.recorrido = recorrido;
        this.cantNaves = cantNaves;
        this.parsec = parsec;
    }

    public int getNumPasajeros() {
        return numPasajeros;
    }

    public void setNumPasajeros(int numPasajeros) {
        this.numPasajeros = numPasajeros;
    }

    public int getRecorrido() {
        return recorrido;
    }

    public void setRecorrido(int recorrido) {
        this.recorrido = recorrido;
    }

    public int getCantNaves() {
        return cantNaves;
    }

    public void setCantNaves(int cantNaves) {
        this.cantNaves = cantNaves;
    }

    public int getParsec() {
        return parsec;
    }

    public void setParsec(int parsec) {
        this.parsec = parsec;
    }
    
    public double calcular(int recorido, int cantNaves, int parsec){
        return (recorido*cantNaves*parsec);
    }
    
    public String imprimirdatos(int cantNaves, int litpar, int cap, int parsec){
        String datos;
        datos ="Cantidad de naves: "+cantNaves+"<br></br>"+ "Litros por Parsec" + litpar+"<br></br>"+"Capacidad de pasajeros por nave: "+cap+"<br></br>"+ "Parsec estimados de guerra: " + parsec;
        return datos;  
    }
    
}
