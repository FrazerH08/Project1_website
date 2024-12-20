
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup</title>
    <link rel="stylesheet" href="signup.css">
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
    <div class="title"> <h1> Signup Page</h1>
    </div>
    <form action="accountvalidation.php" method='POST'>
        <p> Please fill out this form to sign up </p>

        <label for="firstname"><b>First name:</b></label>
        <input type="text" placeholder="Enter First Name"name="firstname"required> <br>
        <br>

        <label for="lastname"><b>Lastname:</b></label>
        <input type="text" placeholder="Enter last Name"name="lastname"required> <br>
        <br>
        <label for="dob"><b>Date of birth:</b></label>
        <input type="date" id="birthdate"name="birthdate"> <br>
        <br>
        <label for="region"><b>Region:</b></label> 
        <select id="region" name="region"> 
        <option value="Australia">Australia</option>
        <option value="Canada">Canada</option>
        <option value="USA">USA</option>
        <option value="United Kingdom">United Kingdom</option>
        </select>
        <br>
        <br>
        <label for="email"><b>Email:</b></label> <br>
        <input type="text" placeholder="Enter Email" name="email" required> <br>
        <br> <label for="username"><b>Username:</b></label> <br>
        <input type="text" placeholder="Enter Username" name="username" required> <br>
        <br> <label for="password"><b>Password:</b></label> <br>
        <input type="password" placeholder="Enter Password" name="password" required>

        <label>
      <br> <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
        </label>

        <div class="next">
            <button type="submit" name= "submit" value="submit" class="signupbtn" >Next</button>
        </div>
        <p> Already have an account? <a href="login.php"> Sign in now</a></p>
    </form>
</body>
</html>
