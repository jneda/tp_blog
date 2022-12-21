<?php

ob_start();
require './view/template/hero.php';
$content = ob_get_clean();
$title = 'Bienvenue sur mon blog | Anthony Houlala';
require './view/layout.php';

?>