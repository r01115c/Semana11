package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.DescuentoCamisas;

import java.io.IOException;

@WebServlet("/calcularDescuento")
public class DescuentoCamisasServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int cantidad = Integer.parseInt(request.getParameter("cantidad"));
            double precioPorCamisa = Double.parseDouble(request.getParameter("precioPorCamisa"));

            DescuentoCamisas descuentoCamisas = new DescuentoCamisas();
            double totalConDescuento = descuentoCamisas.calcularTotal(cantidad, precioPorCamisa);

            request.setAttribute("total", totalConDescuento);
            request.getRequestDispatcher("resultadoDescuento.jsp").forward(request, response);
        } catch (NumberFormatException e) {
            request.setAttribute("error", "Ingrese valores numéricos válidos para la cantidad y el precio.");
            request.getRequestDispatcher("descuentoCamisas.jsp").forward(request, response);
        }
    }
}

