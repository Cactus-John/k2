<?php
$conn = mysqli_connect("localhost", "root", "", "registracija");

if (!$conn) {
    echo "Connection failed" . mysqli_connect_error();
    exit;
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $ime = $_POST['ime'];
    $kime = $_POST['korisnicko_ime'];
    $lozinka = $_POST['lozinka'];

    $check = mysqli_prepare($conn, "SELECT id FROM korisnik WHERE kime = ?");
    mysqli_stmt_bind_param($check, "s", $kime);
    mysqli_stmt_execute($check);
    mysqli_stmt_store_result($check);

    if (mysqli_stmt_num_rows($check) > 0) {
        echo "Korisnik s tim korisničkim imenom već postoji.";
    } else {
        $hash = password_hash($lozinka, PASSWORD_DEFAULT);
        $datum = date('Y-m-d');

        $stmt = mysqli_prepare($conn, "INSERT INTO korisnik (ime, kime, pass, datum) VALUES (?, ?, ?, ?)");
        mysqli_stmt_bind_param($stmt, "ssss", $ime, $kime, $hash, $datum);
        mysqli_stmt_execute($stmt);
        echo "Korisnik uspješno dodan.";
        mysqli_stmt_close($stmt);
    }

    mysqli_stmt_close($check);
}

mysqli_close($conn);
?>

<form method="POST">
    <label>Ime</label><br />
    <input type="text" name="ime"/> <br />
    <label>korisničko ime</label><br />
    <input type="text" name="korisnicko_ime"/> <br />
    <label>Lozinka</label><br />
    <input type="password" name="lozinka"/> <br />
    <button type="submit" value="Submit">Submit</button>
</form>