<!DOCTYPE html>
<html lang="en">
<?php
    function homerseklet() {
        $homerseklet = rand(-20,40);
        $farhát = $homerseklet * (9 / 5) + 32;
        echo "<table border=1>";
        for ($i=1; $i < 7; $i++) { 
            echo "<tr>";
            for ($j=1; $j < 7; $j++) { 
                echo "<td> $i.Nap  </td>";
                echo "<td> $homerseklet </td>";
                echo "<td> $farhát </td>";
                $j++;
            }
            echo "</tr>";
            $i++;
        }
        echo "</table>";
    }
?>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    
</body>
</html>