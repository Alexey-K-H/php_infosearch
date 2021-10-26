<html lang="ru">
<head>
    <meta charset="utf-8">
    <title> z2-7 </title>
</head>
<body>

<?php
$lang = $_GET['lang'];

if($lang == "ru" || $lang == "en"){
    print ($lang == "en" ? "Hello" : "Привет");
} else{
    print "Язык неизвестен";
}
?>
</body>
</html>
