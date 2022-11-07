<?php


$connection = mysqli_connect('localhost:3306', 'root', '','restauracja');

if($connection){

    echo "Połączenie nie powiodło się!<br>";
    die();
}


$query = "SELECT ryby.nazwa,lowisko.akwen,lowisko.wojewodztwo FROM ryby inner join `lowisko` on `ryby`.`id` = `lowisko`.`id` where `lowisko`.`rodzaj` = 3";


$results = mysqli_query($connection,$query);


$counter = mysqli_num_rows($results);


echo "Results number: " . $counter . "<br>";


while($row = mysqli_fetch_row($results)){
    echo $row[0] . "-" .  $row[1] . "-" . $row[2] . "<br>";
    
}

// SELECT `ryby`.`nazwa`,`lowisko`.`akwen`,`lowisko`.`wojewodztwo` FROM `ryby` inner join `lowisko` on `ryby`.`id` = `lowisko`.`id` where `lowisko`.`rodzaj` = 3

mysqli_close($connection);