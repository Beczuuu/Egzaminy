<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Wędkowanie</title>
    <link rel="stylesheet" type="text/css" href="styl_1.css" />
</head>
<body>
    <div id="header">
        <h1>Portal dla wędkarzy</h1>
    </div>
    <div id="main">
        <div id="left_side">
            <div id="left_side_1">
                <h3>Ryby zamieszkujące rzeki</h3>
                <ol>
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
                    ?>
                </ol>
            </div>
            <div id="left_side_2">
                <h3>Ryby drapieżne naszych wód</h3>
                <table>
                    <tr>
                        <th>L.p.</th>
                        <th>Gatunek</th>
                        <th>Występowanie</th>
                    </tr>
                    <?php

$connection = mysqli_connect('localhost:3306', 'root', '','wedkowanie');


if(mysqli_connect_errno()){
    echo "Połączenie nie powiodło się!<br>";
    die();
}

$query = "SELECT id , nazwa , wystepowanie from ryby where styl_zycia = 1;";


$results = mysqli_query($connection,$query);


// $counter = mysqli_num_rows($results);


while($row = mysqli_fetch_row($results)){
    echo "<tr>" . "<td>" . $row[0] . "</td>" . "<td>" .  $row[1] . "</td>" . "<td>" . $row[2] . "</td>" . "</tr>";
}

mysqli_close($connection);
?>
                </table>
            </div>
        </div>

        <div id="right_side">
        <img src="ryba1.jpg">
        <li><a href="kwerendy.txt">Pobierz kwerendy</a></li>
        </div>
    </div>
    <div id="footer">
        <p>Stronę wykonał: 050809150</p>
    </div>
</body>
</html>