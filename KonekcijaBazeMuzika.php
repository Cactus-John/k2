<?php
$conn = mysqli_connect("localhost", "root", "", "muzika");

if (!$conn) {
    echo "Connection failed" . mysqli_connect_error();
    exit;
}

$sql = "SELECT naziv, izvodac, spol, trajanje FROM pjesma WHERE jezik = 'engleski' AND LOWER(izvodac) LIKE 'j%' AND trajanje < 120";
$result = mysqli_query($conn, $sql);

while ($row = mysqli_fetch_assoc($result)) {
    $boja = ($row['spol'] == 'muško') ? 'blue' : 'red';
    echo "<p style='color: $boja;'>{$row['naziv']} - {$row['izvodac']} - {$row['trajanje']}</p>";
}

mysqli_close($conn);
?>