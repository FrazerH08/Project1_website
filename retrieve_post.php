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
        <div class="post">
        <?php
        include 'connectdb.php';

$post_id = $_GET['id'];

$sql = "SELECT title, description, post_txt, picture FROM posts WHERE id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $post_id);
$stmt->execute();
$result = $stmt->get_result();

if($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()){
        if (!empty($row['picture'])) {
            // If it's a file path
            if (file_exists($row['picture'])) {
                echo "<img src='" . htmlspecialchars($row['picture']) . "' alt='Post Image'>";
            } 
            // If it's base64 encoded
            else if (strpos($row['picture'], 'base64') !== false) {
                echo "<img src='" . $row['picture'] . "' alt='Post Image'>";
            }
            // If it's binary data
            else {
                echo "<img src='data:image/jpeg;base64," . base64_encode($row['picture']) . "' alt='Post Image'>";
            }
        }
        echo '<section class="postCard">';
        echo "<h2>" . htmlspecialchars($row['title']) . "</h2>";
        echo "<h3>" . htmlspecialchars($row['description']) . "</h3>";
        echo "<p>" . htmlspecialchars($row['post_txt']) . "</p>";
        
        // Check if picture exists and is not null
        
        
        echo '</section>';
    }
} else {
    echo "Sorry, 0 Results Returned";
}

$stmt->close();
$conn->close();
?>
</div>
</body>
</html>
<?php
