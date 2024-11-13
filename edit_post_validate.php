<?php

include 'connectdb.php';

$id = $_POST['id'];
$title = $_POST['title'];
$description = $_POST['description'];
$post_text = $_POST['post_txt'];

$sanitisedTitle= htmlentities(string:$title);
$sanitisedDescription= htmlentities(string: $description);
$sanitisedPost= htmlentities(string: $post_text);

$sql = "UPDATE posts SET title='$sanitisedTitle', description='$sanitisedDescription', post_txt='$sanitisedPost' WHERE id = $id";

if ($conn->query(query: $sql) === TRUE) {
    echo "New record created successfully<br>";
    echo "<a href='list_posts.php'>Back to Posts</a>";
} else{
    echo "Error: " . $sql . "<br>" . $conn->error;
}