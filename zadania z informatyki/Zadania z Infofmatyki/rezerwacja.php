<?php

$connection = mysqli_connect('localhost:3306', 'root', '','restauracja');

if($connection){

    echo "Połączenie nie powiodło się!<br>";
    die();
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $data = $_POST["data"];
    $ilosc_osob =$_POST["ilosc_osob"];
    $telefon = $_POST["telefon"];

    $sql = "INSERT INTO rezerwacje (data_rez, libcza_osob, telefon) VALUES ('$data', $ilosc_osob, '$telefon')";
    $connection->query($sql);

    if($connection->connect_error){
        echo "Bład rezerwacji";
    }else{
        echo "Zarezerwowano";
    }
}

mysqli_close($connection);
