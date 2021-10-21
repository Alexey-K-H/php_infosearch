<html lang="ru">
<head>
    <meta charset="utf-8">
    <title> z2-3 </title>
</head>
<body>
<?php
$breakfast = "hamburger";
$breakfast2 = &$breakfast;

print $breakfast2."<br>\n";

$breakfast = "tea";
print $breakfast2;
?>
</body>
</html>
