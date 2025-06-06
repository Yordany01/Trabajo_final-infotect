<?php
$host = "127.0.0.1";      
$usuario = "root";        
$contrasena = "";         
$baseDeDatos = "servicios"; 

$conn = new mysqli($host, $usuario, $contrasena, $baseDeDatos);

if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}


?>
