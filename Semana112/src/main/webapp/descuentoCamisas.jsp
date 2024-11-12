<%-- 
    Document   : descuentoCamisas
    Created on : 12 nov. 2024, 9:11:19 a. m.
    Author     : USER 17
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Descuento en Camisas</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e0f7fa; /* Fondo suave */
            margin: 0;
            padding: 50px;
            text-align: center; /* Centrar texto */
        }
        h2 {
            color: #00796b; /* Color de título */
        }
        form {
            background: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
            display: inline-block; /* Centrar el formulario */
        }
        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
        }
        input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            appearance: none; /* Eliminar flechas */
            -moz-appearance: textfield; /* Para Firefox */
        }
        input[type="number"]::-webkit-inner-spin-button,
        input[type="number"]::-webkit-outer-spin-button {
            -webkit-appearance: none; /* Eliminar flechas */
            margin: 0; /* Eliminar margen */
        }
        button {
            background-color: #00796b;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        button:hover {
            background-color: #004d40;
        }
        .error {
            color: red;
        }
    </style>
</head>
<body>
    <%@ include file="menu.jsp" %>
    <h2>Calculadora de Descuento en Camisas</h2>
    <form action="calcularDescuento" method="post">
        <label>Cantidad de Camisas:</label>
        <input type="number" name="cantidad" required>
        
        <label>Precio por Camisa:</label>
        <input type="number" name="precioPorCamisa" step="0.01" required>
        
        <button type="submit">Calcular Total</button>
    </form>

    <c:if test="${not empty error}">
        <p class="error">${error}</p>
    </c:if>
</body>
</html>
