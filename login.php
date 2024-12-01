<?php
include 'connectdb.php';
session_start();

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="login.css">
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
    <div class="title"> <h1> Login Page</h1>
    </div>
    <form action="login_validation.php" method='POST'>
        <br> <label for="username"><b>Username:</b></label> <br>
        <input type="text" placeholder="Enter Username" name="username" required> <br>
        <br> <label for="password"><b>Password:</b></label> <br>
        <input type="password" placeholder="Enter Password" name="password" required>
        <label>
      <br> <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
        </label>
        <div class="next">
            <button type="submit" name= "submit" value="submit" class="signupbtn" >login</button>
        </div>
        <p> Need to sign up? <a href="signup.php"> Register now</a></p>
    </form>
    <?php
    if(isset($_POST['submit'])){
        $username =mysqli_real_escape_string($conn,$_POST['username']);
        $password =mysqli_real_escape_string($conn,$_POST['password']);

        $result = mysqli_query($conn,"SELECT * FROM users WHERE username='$username' AND password='$password'") or die("Error");
        $row = mysqli_fetch_assoc($result);

        if(is_array($row) && !empty($row)){
            $_SESSION['valid'] = $row['username'];
            $_SESSION['valid'] = $row['password'];
        }else{
            echo "<h1>username or password is incorrect  please go back</h1><br>";
            echo "<a href='javascript:self.history.back()'><button class='btn'>Go Back</button></a>";
        }
        if(isset($_SESSION['valid'])){
            echo "You are logged in! Welcome back {$username}";
            header("Location: welcome.php");
        }
    }else{
        
    }
    ?>
</body>
</html>