<?php
$host = 'db'; $user = 'root'; $pass = 'rahasia123'; $db = 'belajar_docker';
$conn = new mysqli($host, $user, $pass, $db);

// 1. Setup Table
$conn->query("CREATE TABLE IF NOT EXISTS pelawat (id INT AUTO_INCREMENT PRIMARY KEY, nama VARCHAR(50), masa TIMESTAMP DEFAULT CURRENT_TIMESTAMP)");

// 2. Kalau user tekan butang "Hantar", simpan nama tu
if (isset($_POST['nama_user'])) {
    $nama = $_POST['nama_user'];
    $conn->query("INSERT INTO pelawat (nama) VALUES ('$nama')");
}

// 3. Papar Borang
echo "<h2>Buku Pelawat Docker Wildan</h2>";
echo '<form method="POST">
        Masukkan Nama: <input type="text" name="nama_user" required>
        <button type="submit">Hantar</button>
      </form>';

// 4. Papar Senarai
$result = $conn->query("SELECT * FROM pelawat ORDER BY id DESC");
echo "<h3>Senarai Pelawat Terbaru:</h3>";
while($row = $result->fetch_assoc()) {
    echo "ID: " . $row['id'] . " | <b>" . $row['nama'] . "</b> | " . $row['masa'] . "<br>";
}
?>
