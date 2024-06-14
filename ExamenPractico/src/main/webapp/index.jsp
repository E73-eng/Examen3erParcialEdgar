<!DOCTYPE html>
<html>
<head>
    <title>Loan Calculator</title>
</head>
<body>
<center>
    <h1>BIENVENIDO</h1>
    <h2>* Ingresa los valores requeridos *</h2>
    <br>
    <form action="calculateLoan" method="post">
        <label for="Cantidad">Monto a pagar :</label>
        <input type="number" id="Cantidad" name="Cantidad" required>
        <br>
        <br>
        <label for="Meses">A cuantos meses? :</label>
        <input type="number" id="Meses" name="Meses" max="12" required>
        <br><br><br>
        <input type="submit" value="Pulsa aqui para generar una respuesta">
    </form>
</center>
</body>
</html>
