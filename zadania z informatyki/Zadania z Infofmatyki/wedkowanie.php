<?php

$connection = mysqli_connect('localhost:3306', 'root', '','wedkowanie');


if(mysqli_connect_errno()){
    echo "Połączenie nie powiodło się!<br>";
    die();
}

$query = "SELECT Ryby.nazwa,Lowisko.akwen,Lowisko.wojewodztwo FROM Ryby inner join Lowisko on Ryby.id = Lowisko.id where Lowisko.rodzaj = 3";


$results = mysqli_query($connection,$query);


$counter = mysqli_num_rows($results);


while($row = mysqli_fetch_row($results)){
    echo $row[0] . " pływa w rzece " .  $row[1] . "," . $row[2] . PHP_EOL;
}

mysqli_close($connection);
