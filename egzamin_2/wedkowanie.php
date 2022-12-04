<?php

$connection = mysqli_connect('localhost:3306', 'root', '','wedkowanie');


if(mysqli_connect_errno()){
    echo "Połączenie nie powiodło się!<br>";
    die();
}

$query = "SELECT nazwa, akwen, wojewodztwo FROM Ryby inner join Lowisko on Ryby.id = Lowisko.Ryby_id;";


$results = mysqli_query($connection,$query);


// $counter = mysqli_num_rows($results);


while($row = mysqli_fetch_row($results)){
    echo $row[0] . " pływa w rzece " .  $row[1] . "," . $row[2] . "<br>";
}

mysqli_close($connection);