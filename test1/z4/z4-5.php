<?php
@$site = $_GET['site'];
if (isset($site)) {
    header("Location: https://$site");
    exit;
} else { ?>
    <html lang="ru">
    <head>
        <meta charset="utf-8">
        <title> z4-5 </title>
    </head>
    <body>

    <form method="GET">
        <p>
            Поисковые системы:
            <label>
                <select name="site" required>
                    <?php
                    $list_sites = array('www.yandex.ru', 'www.rambler.ru', 'www.google.com', 'www.yahoo.com', 'www.altavista.com');
                    $i = 0;
                    $size = count($list_sites);

                    while ($i < $size) {
                        print "\t<option> $list_sites[$i]</option>\n";
                        ++$i;
                    }
                    ?>
                </select name="answers[]" required>
            </label>
        </p>
        <p>
            <input type="submit" value="Перейти">
        </p>
    </form>

    </body>
    </html>
    <?php
}
?>
