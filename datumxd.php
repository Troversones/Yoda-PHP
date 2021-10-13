<!DOCTYPE html>
<html lang="en">
<?php
    
    date_default_timezone_set('Europe/Budapest');
    $date = date('j');
    $year = date('Y');
    $megadott = 4;
    $adotthonap = "";
    switch ($megadott) {
        case 1:
            $adotthonap = "Január";
            break;
        case 2:
            $adotthonap = "Február";
            break;
        case 3:
            $adotthonap = "Március";
            break;
        case 4:
            $adotthonap = "Április";
            break;
        case 5:
            $adotthonap = "Május";
            break;
        case 6:
            $adotthonap = "Június";
            break;
        case 7:
            $adotthonap = "Július";
            break;
        case 8:
            $adotthonap = "Augusztus";
            break;
        case 9:
            $adotthonap = "Szeptember";
            break;
        case 10:
            $adotthonap = "Október";
            break;
        case 11:
            $adotthonap = "November";
            break;
        case 12:
            $adotthonap = "December";
            break;
        default:
            # code...
            break;
    }
    print "$adotthonap $date. $year <br>";
    
    echo "<table border=1>";
            for ($i=1; $i <= 10; $i++) { 
                echo "<tr>";
                for ($j=1; $j <= 10; $j++) { 
                    $szam = $i * $j;
                    echo "<td> $i * $j = $szam </td>";
                }
                echo "</tr>";
            }
    echo "</table>";
    
    echo "<table border=1><tr>";
            $i = 1;
            
            do {
                $j = 1;
                do {
                    $osszeg = $i * $j;
                    echo "<td> $i * $j = $osszeg</td>";
                    $j++;
                } while ($j <= 10);
                if ($i != 11) {
                    echo "</tr><tr>";
                    $i++;
                }
                if ($i == 11) {
                    break;
                }
            } while ($i <= 11);
    echo "</tr></table>";
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