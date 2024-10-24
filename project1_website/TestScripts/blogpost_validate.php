<?php

$title = $_POST['title'];
$post_text = $_POST['post'];

echo $title;
echo "<br>";
echo $post_text;

echo "<p>===================================================================== </p>";
$sanitisedTitle=htmlentities(string: $title);
$sanitisedPost= htmlentities(string: $post_text);

echo $sanitisedTitle;
echo "<br>";
echo $sanitisedPost;