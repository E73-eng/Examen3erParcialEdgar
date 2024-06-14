<%@ page import="Modelo.PrestamoBean" %>
<%
    PrestamoBean loan = (PrestamoBean) request.getAttribute("loan");
    double Cantidad = loan.getCantidad();
    int Meses = loan.getMeses();
    double Mensualidad = loan.getMensualidad();
%>
<!DOCTYPE html>
<html>
<head>
    <title>Respuesta a lo solicitado</title>
</head>
<body>
<center><h1>Respuesta</h1> </center>
<p>Cantidad Colocada:  $<%= String.format("%.2f", Cantidad) %></p>
<p>Meses Colocados: <%= Meses %></p>
<h2>Forma de pago: </h2>
<ul>
    <% for (int i = 1; i <= Meses; i++) { %>
    <li>Mes <%= i %>: <%= String.format("$%.2f", Mensualidad) %></li>
    <% } %>
</ul>
    <center>
        <a href="index.jsp">Pulsa aqui para regresar a la pagina principal</a>
    </center>
</body>
</html>
