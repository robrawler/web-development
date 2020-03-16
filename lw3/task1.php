<?php
$text = $_GET['text'];
$text = preg_replace('/\s+/', ' ', $text);
echo $text;
?>
