package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.ConsumoAgua;

import java.io.IOException;

@WebServlet("/cobroAgua")
public class CobroAguaServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double consumo = Double.parseDouble(request.getParameter("consumo"));
        
        ConsumoAgua consumoAgua = new ConsumoAgua();
        double monto = consumoAgua.calcularMonto(consumo);
        double montoConImpuesto = consumoAgua.aplicarImpuesto(monto);
        
        request.setAttribute("montoTotal", montoConImpuesto);
        request.getRequestDispatcher("resultado.jsp").forward(request, response);
    }
}
