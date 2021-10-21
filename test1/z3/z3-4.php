<html lang="ru">
<head>
    <meta charset="utf-8">
    <title> z3-4 </title>
</head>
<body>

<?php
$size = 7;
function WeekDay($day, $color){
    global $size;
    print "<div style='color^ $color;'><font size='$size'>$day</font></div>\n";
    --$size;
}

WeekDay("понедельник", "black");
WeekDay("вторник", "gray");
WeekDay("среда", "navy");
WeekDay("четверг", "blue");
WeekDay("пятница", "purple");
WeekDay("суббота", "fuchsia");
WeekDay("воскресенье", "red");
?>

</body>
</html>
