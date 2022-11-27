<?php

//nawiązanie połączenia z bazą danych
$connection = mysqli_connect('localhost:3306', 'root', '','baza');

//sprawdzenie poprawności połączenia z bazą danych i w przypadku błędu przerwanie programu
if(mysqli_connect_errno()){
    echo "Połączenie nie powiodło się!<br>";
    die();
}


     $data_rez = $_POST['data'];
     $liczba_osob = $_POST['ilosc_osob'];
     $telefon = $_POST['telefon'];
    $zgoda = $_POST['zgoda'];
     $sql = "INSERT INTO rezerwacje (data_rez,liczba_osob,telefon)
     VALUES ('$data_rez',$liczba_osob,'$telefon')";
     if (mysqli_query($connection, $sql)) {
        echo "Dodano rezerwację do bazy";
     } else {
        echo "Bład: " . $sql . ":-" . mysqli_error($connection);
     }

//zamknięcie połaczenia z bazą danych
mysqli_close($connection);
