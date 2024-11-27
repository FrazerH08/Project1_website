<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="header.css"
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&display=swap" rel="stylesheet">
    <title>Post Validating</title>
</head>
<body>
<nav class="Header">
            <a class="icon" href="new_post_form.php">
            <img src="create_post.svg">
            </a>
        <a class="icon" href="bookmarked_posts.php">
        <img src="Bookmark.svg">
        </a>
        <a class="icon" href="delete_profile.php">
        <img src="delete_profile.svg">
        </a>
            <a class="icon" href="view_profile.php">
            <img src="Account.svg">
            </a>
            <a class="icon" href="list_posts.php">
            <img src="Search.svg">
            </a>
            <a class="icon" href="login.php">
            <img src="login.svg">
            </a>
            <a class="icon" href="signup.php">
            <img src="signup.svg">
            </a>
            <a class="icon" class="icon" href="index.php">
            <img src="Home.svg">
            </a>
    </nav>
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
?>
