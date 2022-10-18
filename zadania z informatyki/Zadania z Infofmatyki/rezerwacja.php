
<?php
//-> połączysz się do bazy danych
$connection = mysqli_connect('localhost:3306', 'root', '','restauracja');
//-> sprawdzisz czy udało się połączyć
if($connection){
    // echo "Połączenie powiodło się!<br>";
}else{
    echo "Połączenie nie powiodło się!<br>";
    die();
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $data = $_POST["data"];
    $ilosc_osob =$_POST["ilosc_osob"];
    $telefon = $_POST["telefon"];
    //$zgoda = $_POST["zgoda"];

    $sql = "INSERT INTO rezerwacje (data_rez, libcza_osob, telefon) VALUES ('$data', $ilosc_osob, '$telefon')";
    $connection->query($sql);

    if($connection->connect_error){
        echo "Bład rezerwacji";
    }else{
        echo "Zarezerwowano";
    }
}

mysqli_close($connection);