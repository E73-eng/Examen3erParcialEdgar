package Modelo;

public class PrestamoBean{
    private double Cantidad;
    private int Meses;

    public PrestamoBean(double cantidad, int meses) {
        this.Cantidad = cantidad;
        this.Meses = meses;
    }

    public double getCantidad() {
        return Cantidad;
    }

    public void setCantidad(double cantidad) {
        this.Cantidad = cantidad;
    }

    public int getMeses() {
        return Meses;
    }

    public void setMeses(int meses) {
        this.Meses = meses;
    }

    public double getMensualidad() {
        return Cantidad / Meses;
    }
}

