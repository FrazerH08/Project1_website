<?php
session_start();
include 'connectdb.php';

$logged_in = $_SESSION['logged_in'] ?? false;
$role = $_SESSION['role'] ?? '';

// Search functionality
$posts = [];
if(isset($_POST['submit'])){
    $search = $_POST['search'];
    
    // Prepared statement for safer search
    $stmt = $conn->prepare("SELECT * FROM posts WHERE title LIKE ? ORDER BY created DESC");
    $searchTerm = "%$search%"; // Use LIKE for partial matches
    $stmt->bind_param("s", $searchTerm);
    $stmt->execute();
    $result = $stmt->get_result();
    
    while ($row = $result->fetch_assoc()) {
        $posts[] = $row;
    }
}

// If no search performed, fetch all posts
if (empty($posts)) {
    $stmt = $conn->prepare("SELECT * FROM posts ORDER BY created DESC");
    $stmt->execute();
    $result = $stmt->get_result();
    
    while ($row = $result->fetch_assoc()) {
        $posts[] = $row;
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Posts</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&display=swap" rel="stylesheet">
    <link href="list_posts.css" rel="stylesheet">

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
    <h1 class="title"><b><u>All Posts</u></b></h1>
    <div class="refresh">
        <button> <a href="list_posts.php"> Click here to refresh posts</a></button>
    </div> 
    <div class="search-button">
        <form method='POST'>
            <input type="text" placeholder="Search for a post or author" name="search">
            <button name="submit">Search</button>
        </form>
    </div>

    <div class="posts-container">
        <?php
        // Display posts
        if (!empty($posts)) {
            foreach ($posts as $row) {
                echo '<section class="postCard">';
                echo '<p><a href="retrieve_post.php?id=' . htmlspecialchars($row['id']) . '">' . '<br>', htmlspecialchars($row['title']) . '</a></p>';
                
                if($role === 'admin'){
                    echo '<p>
                        <a href="edit_post_form.php?id=' . htmlspecialchars($row['id']) . '">Edit</a> | 
                        <a onclick="return confirm(\'Do You Really Want To Delete This?\')" href="delete_post.php?id=' . htmlspecialchars($row['id']) . '">Delete</a>
                    </p>';
                }
                
                echo '<p>Description: ' . htmlspecialchars($row['description']) . '</p>';
                echo '<p>Post written: ' . htmlspecialchars($row['created']) . '</p>';
                echo '</section>';
            }
        } else {
            echo "<p>No posts found.</p>";
        }
        ?>
    </div>
</body>
</html>
