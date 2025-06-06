
<?php
include("conexion.php");

function generarCodigo($longitud = 8) {
    return substr(str_shuffle("0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"), 0, $longitud);
}

$codigo = generarCodigo();
$estado = "pendiente";
$fecha = date("Y-m-d");

$stmt = $conn->prepare("INSERT INTO servicios01 
(nombre_cliente, celular, tipo_servicio, tipo_equipo, marca_equipo, descripcion, codigo_rastreo, estado, fecha_ingreso) 
VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");

$stmt->bind_param("sssssssss", 
    $_POST['nombre_cliente'], 
    $_POST['celular'], 
    $_POST['tipo_servicio'], 
    $_POST['tipo_equipo'], 
    $_POST['marca_equipo'], 
    $_POST['descripcion'], 
    $codigo, 
    $estado, 
    $fecha
);

if ($stmt->execute()) {
    echo "<h3>✅ Servicio registrado con éxito</h3>";
    echo "<p>Tu código de rastreo es: <strong>$codigo</strong></p>";
    echo '<a href="pagina2.html"><button>Volver al inicio</button></a>';
} else {
    echo "<p>❌ Error al registrar servicio: " . $stmt->error . "</p>";
    echo '<a href="index.html"><button>Volver al inicio</button></a>';
}
?>

</body>
</html>
