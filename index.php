<?php
include 'connectdb.php';
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

    <link href="index.css" rel="stylesheet">
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
    <div class="Homepagetxt"> <h1> <u><b>Homepage</b></u> </h1>
    </div>
    <div class="hello-username">
        <p> Hello <?php echo $username ?>, <br>  Welcome Back!</p>
    </div>
    <a href='#' class="cookiesbutton">
        <b>Accept Cookies?</b>
    </a>
    <div class="post-homescreen">
        <a class="titles"><h3><u>Title</u></h3> </a>
        <a> <img src="example-image.svg"></a>
        <a class="description-txt"><p> Lorem ipsum dolor sit amet consectetur adipisicing elit. <br> Commodi iure officia non accusantium ullam, <br> in sequi velit quibusdam labore totam nemo <br> asperiores voluptate minus veritatis nam? <br> Nobis earum voluptatum tenetur?</p></a>
    </div>
    <div class="post-homescreen2">
        <a class="titles2"><h3><u>Title</u></h3> </a>
        <a> <img src="example-image.svg"></a>
        <a class="description-txt2"><p> Lorem ipsum dolor sit amet consectetur adipisicing elit. <br> Commodi iure officia non accusantium ullam, <br> in sequi velit quibusdam labore totam nemo <br> asperiores voluptate minus veritatis nam? <br> Nobis earum voluptatum tenetur?</p></a>
    </div>
    <div class="post-homescreen3">
        <a class="titles3"><h3><u>Title</u></h3> </a>
        <a> <img src="example-image.svg"></a>
        <a class="description-txt3"><p> Lorem ipsum dolor sit amet consectetur adipisicing elit. <br> Commodi iure officia non accusantium ullam, <br> in sequi velit quibusdam labore totam nemo <br> asperiores voluptate minus veritatis nam? <br> Nobis earum voluptatum tenetur?</p></a>
    </div>
</body>
</html>