<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Validating post</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&display=swap" rel="stylesheet">
    <link href="validate.css" rel="stylesheet">
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
    <?php

include 'connectdb.php';
$firstname = $_POST['firstname'];
$lastname =$_POST['lastname'];
$username = $_POST['username'];
$email = $_POST['email'];
$country = $_POST['country'];
$subject = $_POST['subject'];

$sanitisedfirstname =htmlentities(string: $firstname);
$sanitisedlastname = htmlentities(string: $lastname);
$sanitisedusername = htmlentities(string: $username);
$sanitisedemail =    htmlentities(string: $email);
$sanitisedcountry = htmlentities(string: $country);
$sanitisedsubject = htmlentities(string: $subject);

$sql ="INSERT INTO feedback (firstname, lastname, username, email, country, subject) VALUES (?, ?, ?, ?, ?, ?)";

$stmt = $conn->prepare($sql);

if($stmt){
    $stmt->bind_param("ssssss", $sanitisedfirstname, $sanitisedlastname, $sanitisedusername, $sanitisedemail, $sanitisedcountry, $sanitisedsubject);
}
if($stmt->execute()) {
    echo "<h3> Feedback Submitted! </h3>";
    echo "<a href='index.php'> <br> Back to Home</a>";
} else{
    echo  "Error: " . $sql ."<br>" . $conn->error;
}
?>
</body>
</html>
