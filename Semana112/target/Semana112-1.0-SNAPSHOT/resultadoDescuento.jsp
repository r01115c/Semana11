<%-- 
    Document   : resultadoDescuentos
    Created on : 12 nov. 2024, 9:11:45 a. m.
    Author     : USER 17
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Resultado de Descuento en Camisas</title>
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
        .resultado {
            background: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
            display: inline-block; /* Centrar el resultado */
            margin-top: 20px; /* Espacio arriba del resultado */
        }
        p {
            font-size: 18px;
            color: #555;
        }
        a {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            color: #00796b;
            font-weight: bold;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h2>Resultado del Descuento en Camisas</h2>
    <div class="resultado">
        <p>El total a pagar con descuento es: ${total}</p>
    </div>
    <a href="descuentoCamisas.jsp">Volver</a>
</body>
</html>
