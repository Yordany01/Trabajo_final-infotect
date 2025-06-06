<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>Consultar Estado</title>
  <link rel="stylesheet" href="cunsulta.css"> 
</head>
<body>

<h2>Consultar Estado del Servicio</h2>
<form method="GET" action="consultar_estado.php">
  <input type="text" name="codigo" placeholder="Código de seguimiento" required>
  <button type="submit">Consultar</button>
</form>

<?php
if (isset($_GET['codigo'])) {
    include("conexion.php");

    $codigo = $_GET['codigo'];
    $sql = "SELECT * FROM servicios01 WHERE codigo_rastreo = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $codigo);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($row = $result->fetch_assoc()) {
        echo "<h3>Estado del servicio:</h3>";
        echo "Cliente: " . htmlspecialchars($row['nombre_cliente']) . "<br>";
        echo "Equipo: " . htmlspecialchars($row['tipo_equipo']) . " (" . htmlspecialchars($row['marca_equipo']) . ")<br>";
        echo "Servicio: " . htmlspecialchars($row['tipo_servicio']) . "<br>";
        echo "Estado: <strong>" . htmlspecialchars($row['estado']) . "</strong><br>";
        echo "Fecha de ingreso: " . htmlspecialchars($row['fecha_ingreso'])."<br>";
        echo "Descripcion del problema: " . htmlspecialchars($row['descripcion']);

    } else {
        echo "<p style='color:red;'>⚠️ Código no encontrado.</p>";
    }

    $stmt->close();
    $conn->close();
}
?>

</body>
</html>

