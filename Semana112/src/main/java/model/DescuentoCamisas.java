package model;

public class DescuentoCamisas {
    public double calcularTotal(int cantidad, double precioPorCamisa) {
        double subtotal = cantidad * precioPorCamisa;
        double descuento = 0;

        // Aplicamos el descuento dependiendo de la cantidad de camisas
        if (cantidad >= 3 && cantidad <= 5) {
            descuento = subtotal * 0.10; // 10% de descuento
        } else if (cantidad > 5) {
            descuento = subtotal * 0.20; // 20% de descuento
        }

        return subtotal - descuento; // Total con descuento aplicado
    }
}
