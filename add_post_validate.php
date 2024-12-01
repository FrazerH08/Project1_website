<?php
include 'connectdb.php';
include 'header.html';




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

// Validate other form inputs
$title = $_POST['title'] ?? '';
$description = $_POST['description'] ?? '';
$post_text = $_POST['post_txt'] ?? '';

if(empty($title) || empty($description) || empty($post_text)) {
    die("Please fill in all required fields.");
}

// Upload file if all checks pass
if ($uploadOk == 1) {
    if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
        echo "<h1>The file has been uploaded successfully.</h1><br>";
    } else {
        echo "<h1>Sorry, there was an error uploading your file.</h1><br>";
        $uploadOk = 0;
    }
}

// Sanitize inputs
$sanitisedTitle = htmlentities($title, ENT_QUOTES, 'UTF-8');
$sanitisedDescription = htmlentities($description, ENT_QUOTES, 'UTF-8');
$sanitisedPost = htmlentities($post_text, ENT_QUOTES, 'UTF-8');

// Prepare SQL statement
$sql = "INSERT INTO posts (title, description, post_txt, picture) VALUES (?, ?, ?, ?)";
$stmt = $conn->prepare($sql);

if($stmt) {
    // Bind parameters
    $stmt->bind_param("ssss", $sanitisedTitle, $sanitisedDescription, $sanitisedPost, $target_file);
    
    // Execute and handle result
    if($stmt->execute()) {
        echo "<h2>New Record created successfully</h2>";
        echo "<br><h4><a href='list_posts.php'>Back to Posts</a></h4>";
    } else {
        echo "Error: " . $stmt->error;
    }
    
    $stmt->close();
} else {
    echo "Prepare failed: (" . $conn->errno . ") " . $conn->error;
}

$conn->close();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

</head>
<body>
    
</body>
</html>