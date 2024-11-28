<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <link rel="stylesheet" href="header.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&display=swap" rel="stylesheet">
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
    include 'login_validation.php';
    echo" <h1> Hello {$username} Nice To see you login <br> Welcome Back to the blogsite , look at the header for places to go to! <br> Enjoy!";
    ?>
</body>
</html>