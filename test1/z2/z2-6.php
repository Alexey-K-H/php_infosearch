<html lang="ru">
<head>
    <meta charset="utf-8">
    <title> z2-6 </title>
</head>

<body>
<?php
$lang = $_GET['lang'];

switch ($lang){
    case "ru":
        print "Русский язык";
        break;
    case "en":
        print "Английский язык";
        break;
    case "fr":
        print "Французский язык";
        break;
    case "de":
        print "Немецкий язык";
        break;
    default:
        print "Язык неизвестен";
}
?>
</body>

</html>
