<?php

ob_start();
echo '
  <h1>Bonjour tout le monde ! 😁</h1>
  <i><p>&copy; Un blog d\'Anthony Houlala</i></p>
';
$content = ob_get_clean();
$title = 'Bienvenue sur mon blog | Anthony Houlala';
require './view/layout.php';

?>