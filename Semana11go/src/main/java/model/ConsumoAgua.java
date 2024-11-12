package model;

public class ConsumoAgua {
    public double calcularMonto(double consumo) {
        double monto = 0;
        if (consumo < 100) {
            monto = consumo * 0.15;
        } else if (consumo < 500) {
            monto = consumo * 0.20;
        } else if (consumo <= 1000) {
            monto = consumo * 0.35;
        } else {
            monto = consumo * 0.80;
        }
        return monto;
    }

    public double aplicarImpuesto(double monto) {
        return monto > 600 ? monto * 1.025 : monto;
    }
}
