<?php

require_once './model/Post.php';
$posts = Post::fetchAll();
var_dump($posts);

ob_start();
require './view/template/hero.php';
require './view/template/blogPosts.php';
$content = ob_get_clean();
$title = 'Bienvenue sur mon blog | Anthony Houlala';
require './view/layout.php';

?>