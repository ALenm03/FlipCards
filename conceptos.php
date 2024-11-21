<?php
// Configuración de la base de datos
$servername = "localhost";
$username = "root"; // Usuario por defecto en XAMPP
$password = ""; // Contraseña por defecto vacía
$database = "base_conceptos";

// Conexión a la base de datos
$conn = new mysqli($servername, $username, $password, $database);

// Verificar la conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Obtener el subtema desde la solicitud
$subtema = isset($_GET['subtema']) ? $conn->real_escape_string($_GET['subtema']) : '';

// Consulta SQL
$sql = "SELECT concepto, definicion, ejemplo FROM conceptos WHERE subtema = '$subtema'";
$result = $conn->query($sql);

// Formatear el resultado como JSON
if ($result->num_rows > 0) {
    $conceptos = array();
    while ($row = $result->fetch_assoc()) {
        $conceptos[] = $row;
    }
    echo json_encode($conceptos);
} else {
    echo json_encode([]);
}

// Cerrar la conexión
$conn->close();
?>
