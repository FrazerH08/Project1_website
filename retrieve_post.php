<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Retrieving Posts</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&display=swap" rel="stylesheet">
    <link href="header.css" rel="stylesheet">
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
</body>
</html>
<?php

include 'connectdb.php';

$post_id = $_GET['id'];
//echo $post_id 

$sql = "SELECT title, description, post_txt  FROM posts WHERE id = '$post_id'";

$result = $conn->query(query:$sql);



if($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()){
        echo'<section class="postCard">';
        echo "<h2>" . $row['title'] . "</h2>";
        echo "<h3>" . $row['description'] . "</h3>";
        echo "<p>" . $row['post_txt'] . "</p>";
        echo'</section>';
    }
}else {
    echo"Sorry 0 Results Returned";
}
