<?php
// 1. Ambil maklumat Environment
$host = 'db';
$user = 'root';
$pass = getenv('DB_PASSWORD') ?: 'rahasia123';
$db   = getenv('DB_NAME') ?: 'belajar_docker';

$conn = new mysqli($host, $user, $pass, $db);

// 2. CSS Styling (Tambah di sini!)
echo "
<style>
    body { 
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; 
        background-color: #eef2f7; 
        display: flex; 
        justify-content: center; 
        padding-top: 50px;
    }
    .container { 
        background: white; 
        padding: 30px; 
        border-radius: 15px; 
        box-shadow: 0 10px 25px rgba(0,0,0,0.1); 
        width: 100%; 
        max-width: 450px; 
    }
    h2 { color: #333; text-align: center; }
    input[type='text'] { 
        width: 100%; 
        padding: 12px; 
        margin: 10px 0; 
        border: 1px solid #ddd; 
        border-radius: 8px; 
        box-sizing: border-box; 
    }
    button { 
        width: 100%; 
        padding: 12px; 
        background-color: #ff5733; 
        color: white; 
        border: none; 
        border-radius: 8px; 
        cursor: pointer; 
        font-weight: bold;
    }
    button:hover { background-color: #0056b3; }
    .pelawat-list { margin-top: 20px; border-top: 2px solid #eee; padding-top: 10px; }
    .item { background: #f9f9f9; padding: 10px; margin-bottom: 5px; border-radius: 5px; font-size: 14px; }
</style>
";

// Kira Jumlah Pelawat
$total_result = $conn->query("SELECT COUNT(*) as total FROM pelawat");
$total_data = $total_result->fetch_assoc();

// Kira Pelawat Hari Ini
$today_result = $conn->query("SELECT COUNT(*) as today FROM pelawat WHERE DATE(masa) = CURDATE()");
$today_data = $today_result->fetch_assoc();


// 3. Logic Aplikasi
$conn->query("CREATE TABLE IF NOT EXISTS pelawat (id INT AUTO_INCREMENT PRIMARY KEY, nama VARCHAR(50), masa TIMESTAMP DEFAULT CURRENT_TIMESTAMP)");

if (isset($_POST['nama_user'])) {
    $nama = $conn->real_escape_string($_POST['nama_user']);
    $conn->query("INSERT INTO pelawat (nama) VALUES ('$nama')");
}

// 4. Paparan HTML
echo "<div class='container'>";
echo "
    <div style='display: flex; gap: 10px; margin-bottom: 20px;'>
    <div style='flex: 1; background: #e3f2fd; padding: 15px; border-radius: 10px; text-align: center;'>
        <small style='color: #1976d2; font-weight: bold; text-transform: uppercase; font-size: 10px;'>Total Pelawat</small><br>
        <span style='font-size: 24px; color: #1565c0; font-weight: bold;'>" . $total_data['total'] . "</span>
    </div>
    <div style='flex: 1; background: #fff3e0; padding: 15px; border-radius: 10px; text-align: center;'>
        <small style='color: #f57c00; font-weight: bold; text-transform: uppercase; font-size: 10px;'>Hari Ini</small><br>
        <span style='font-size: 24px; color: #ef6c00; font-weight: bold;'>" . $today_data['today'] . "</span>
    </div>
</div>
";
echo "<h2>Buku Pelawat Docker</h2>";
echo '<form method="POST">
        <input type="text" name="nama_user" placeholder="Masukkan nama anda..." required>
        <button type="submit">Hantar Nama</button>
      </form>';

$result = $conn->query("SELECT * FROM pelawat ORDER BY id DESC");
echo "<div class='pelawat-list'><h3>Pelawat Terbaru:</h3>";
while($row = $result->fetch_assoc()) {
    echo "<div class='item'><b>" . htmlspecialchars($row['nama']) . "</b> <br><small style='color:gray'>" . $row['masa'] . "</small></div>";
}
echo "</div></div>";
?>
