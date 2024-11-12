<%-- 
    Document   : cobroAgua
    Created on : 12 nov. 2024, 9:04:05 a. m.
    Author     : USER 17
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Cobro de Agua</title>
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
    </style>
</head>
<body>
    <h2>Calculadora de Cobro de Agua</h2>
    <form action="cobroAgua" method="post">
        <label>Consumo en m³:</label>
        <input type="number" name="consumo" step="0.01" required>
        <button type="submit">Calcular</button>
    </form>
</body>
</html>
