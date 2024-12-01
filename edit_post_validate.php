<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="validate.css"
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&display=swap" rel="stylesheet">
    <title>Post Validating</title>
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
// Check if file was actually uploaded
if (!isset($_FILES['fileToUpload']) || $_FILES['fileToUpload']['error'] == UPLOAD_ERR_NO_FILE) {
    die("No file was uploaded. Please select a file to upload.");
}

$target_dir = "images/";

// Ensure target directory exists
if (!is_dir($target_dir)) {
    mkdir($target_dir, 0755, true);
}

// Generate a unique filename to prevent conflicts
$original_filename = basename($_FILES["fileToUpload"]["name"]);
$file_extension = strtolower(pathinfo($original_filename, PATHINFO_EXTENSION));
$unique_filename = uniqid() . "." . $file_extension;
$target_file = $target_dir . $unique_filename;

$uploadOk = 1;

// Check if image file is actual image or fake image
$check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
if($check === false) {
    echo "File is not an image.";
    $uploadOk = 0;
}

// Check file size (500KB limit)
if ($_FILES["fileToUpload"]["size"] > 500000) {
    echo "Sorry, your file is too large.";
    $uploadOk = 0;
}

// Allow certain file formats
$allowed_types = ["jpg", "jpeg", "png", "gif"];
if(!in_array($file_extension, $allowed_types)) {
    echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
    $uploadOk = 0;
}



$id = $_POST['id'];
$title = $_POST['title'];
$description = $_POST['description'];
$post_text = $_POST['post_txt'];
if ($uploadOk == 1) {
    if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
        echo "<h1>The file has been uploaded successfully.</h1><br>";
    } else {
        echo "<h1>Sorry, there was an error uploading your file.</h1><br>";
        $uploadOk = 0;
    }
}

$sanitisedTitle= htmlentities(string:$title);
$sanitisedDescription= htmlentities(string: $description);
$sanitisedPost= htmlentities(string: $post_text);

$sql = "UPDATE posts SET title='$sanitisedTitle', description='$sanitisedDescription', post_txt='$sanitisedPost', picture='$target_file' WHERE id = $id";

if ($conn->query($sql) === TRUE) {
    echo "<h3>New record created successfully</h3><br>";
    echo "<h3><a href='list_posts.php'>Back to Posts<h3></a>";
} else{
    echo "Error: " . $sql . "<br>" . $conn->error;
}
?>
