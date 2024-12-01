<?php
include 'connectdb.php';
include 'account_display.php';
$username = $_SESSION['username'] ?? 'Guest';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Homepage</title>
    <link rel="stylesheet" href="index.css"
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&display=swap" rel="stylesheet">
</head>
<body>
<nav class="Header">
        <a class="icon" class="icon" href="index.php">
            <img src="Home.svg">
            </a>
            <a class="icon" href="new_post_form.php">
            <img src="create_post.svg">
            </a>
            <a class="icon" href="list_posts.php">
            <img src="Search.svg">
        <a class="icon" href="bookmarked_posts.php">
        <img src="Bookmark.svg">
        </a>
            <a class="icon" href="view_profile.php">
            <img src="Account.svg">
            </a>
            </a>
            <a class="icon" href="login.php">
            <img src="login.svg">
            </a>
            <a class="icon" href="signup.php">
            <img src="signup.svg">
            </a>
            <a class="icon" href="delete_profile.php">
        <img src="delete_profile.svg">
        </a>
        <a class="icon" href="feedback.php">
        <img src="feedback.svg">
        </a>
        </nav>
    <div class="Homepagetxt"> <h1> <u><b>Homepage</b></u> </h1>
    </div>
    <div class="hello-username">
        Hello <?php  echo $username ?>, <br>  Welcome Back!
    </div>
    <a href='#' onclick="Thanks For accepting cookies" class="cookiesbutton">
        <b>Accept Cookies?</b>
    </a>
    <div class="post-homescreen">
        <a class="titles"><h3><u>Films: A Journey Through Cinema</u></h3> </a>
        <a href="retrieve_post.php?id=9"> <img src="films.jpg"></a>
        <a class="description-txt"><p> A post about the evolution and impact of films.</p></a>
    </div>
    <div class="post-homescreen2">
        <a class="titles2"><h3><u>Grimsby Town FC: A Rollercoaster Season in 2024/25</u></h3> </a>
        <a href="retrieve_post.php?id=19"> <img src="grimsby.jpg"></a>
        <a class="description-txt2"><p> Here is  a look at  what has been happening <br> at Blundell Park this season:</p></a>
    </div>
    <div class="post-homescreen3">
        <a class="titles3"><h3><u>Music: The Universal Language</u></h3> </a>
        <a href="retrieve_post.php?id=10"> <img src="music.jpg"></a>
        <a class="description-txt3"><p> A post about the power and diversity of music.</p></a>
    </div>
    <div class="Button-help"> 
        <a href="icons.html">
            <button class="btn-help"> Understanding headers icon , for info like <br> feedback, creating posts , view profile e.t.c </button>
        </a>
    </div>
    <div class="thanks">
        <a><p> We are very thankful for you using <br>this website, enjoy! </p></a>
    </div>
    <a class="git" href="https://github.com/FrazerH08/Project1_website"><img name="git" src="git.png"> 
    </a>
    <?php include 'footer.html';
    ?>
</body>
</html>