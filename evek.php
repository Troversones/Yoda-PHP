<!DOCTYPE html>
<html lang="en">
<center>
<?php 
    $eletkor = 100;
    if ($eletkor >= 18 && $eletkor < 30) {
        echo "Az illető fiatalkorú.";
    }
    else if ($eletkor > 0 && $eletkor < 13) {
        echo "Az illető gyere.";
    }
    elseif ($eletkor >= 13 && $eletkor < 18) {
        echo "Az illető tini.";
    }
    elseif ($eletkor >= 60 && $eletkor < 100) {
        echo "Az illető középkorú";
    }
    elseif ($eletkor == 100) {
        echo "Az illető idős";
    }
    else
    {
        echo "Rossz adatot adott meg";
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
</center>
</html>