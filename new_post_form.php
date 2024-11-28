<?php
include 'connectdb.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="new_post.css"
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&display=swap" rel="stylesheet">
    <title>Add Post Form</title>
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
    
    <h1><u>Create Post</u></h1>
    <div class="formcss">
    <form action="add_post_validate.php" method="post" >
    <label for="title">Title: </label><br>
        <input type="text" name="title" id="title" placeholder="New Post Title" size="50" required>
        <br>
        <label for="description_txt">Description: </label><br>
        <textarea name="description" id="description_txt" cols="100" rows="10" placeholder="New Post Description" required></textarea><br>
        <label for="post_txt">Content: </label><br>
        <textarea name="post_txt" id="post_txt" cols="180" rows="26" placeholder="Enter Post Content" required></textarea>
        <br>
        <button type="submit" class="btn" onclick="alert('Thanks for submitting!')">Submit</button>
        <input type="file" id="pictureup"name="image">
    </form>
    </div>


</body>
</html>