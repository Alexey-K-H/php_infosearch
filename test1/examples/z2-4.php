<html lang="ru">
<head>
    <meta charset="utf-8">
    <title> z2-4 </title>
</head>
<body>
<?php
const NUM_E = 2.71828;
print "Число e равно " . NUM_E . "; ";

$num_e1 = NUM_E;
print "тип: " . gettype($num_e1) . "<br>\n";

settype($num_e1, "string");
print "тип: " . gettype($num_e1) . "; значение: " . $num_e1 . "<br>\n";

settype($num_e1, "integer");
print "тип: " . gettype($num_e1) . "; значение: " . $num_e1 . "<br>\n";

settype($num_e1, "boolean");
print "тип: " . gettype($num_e1) . "; значение: " . $num_e1 . "<br>\n";
?>
</body>
</html>
