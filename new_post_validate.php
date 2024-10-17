<?php

include 'connectdb.php';
$title = $_POST['title'];
$description =$_POST['description'];
$post_text = $_POST['post_txt'];

$sanitisedTitle = htmlentities(string: $title);
$sanitisedDescription = htmlentities(string: $description);
$sanitisedPost = htmlentities(string: $post_text);

$sql ="INSERT INTO posts (title, description, post_txt) VALUES ('$sanitisedTitle', '$sanitisedDescription', '$sanitisedPost')";

if ($conn->query(query: $sql) === TRUE) {
    echo "New record created successfully";
    echo "<a href='list_posts.php'>Back to Posts</a>";
} else{
    echo "Error: " . $sql ."<br>" . $conn->error;
}