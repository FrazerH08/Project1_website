<?php

    include 'connectdb.php';
    $id = $_GET['id'];

    $SQL = "SELECT title, description, post_txt FROM posts WHERE id = $id";

    $result= $conn->query($SQL);

    $row = $result->fetch_assoc();

    if($result->num_rows == 0) {
        echo "No Post Found!";
    }else{
        $title = $row['title'];
        $description = $row['description'];
        $post_txt = htmlentities($row['post_txt']);
    }

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Post</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&display=swap" rel="stylesheet">
    <link href="new_post.css" rel="stylesheet">
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

    </nav>
    <form action="edit_post_validate.php" method="post" enctype="multipart/form-data">
        <input type="hidden" name="id" value="<?php echo $id;?>">
        <label for="title">Title: </label><br>
        <input type="text" name="title" id="title" value="<?php echo $title;?>" size="34">
        <br>
        <label for="description_txt">Description: </label><br>
        <textarea name="description" id="description_txt" cols="100" rows="10"><?php echo $description; ?></textarea><br>
        <label for="post_txt">Content: </label><br>
        <textarea name="post_txt" id="post_txt" cols="180" rows="26"><?php echo $post_txt; ?></textarea>
        <br>
        <button type="submit" class="btn" onclick="alert('Thanks for submitting!')">Submit</button>
        <input type="file" id="pictureup"name="fileToUpload">
    </form>
</body>
</html>