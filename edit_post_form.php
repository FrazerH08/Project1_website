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
    <title>Example Form</title>
</head>
<body>
    <form action="edit_post_validate.php" method="post">
        <input type="hidden" name="id" value="<?php echo $id;?>">
        <label for="title">Title: </label><br>
        <input type="text" name="title" id="title" value="<?php echo $title;?>" size="34">
        <br>
        <label for="description_txt">Description: </label><br>
        <textarea name="description" id="description_txt" cols="60" rows="5"><?php echo $description; ?></textarea><br>
        <label for="post_txt">Content: </label><br>
        <textarea name="post_txt" id="post_txt" cols="60" rows="10"><?php echo $post_txt; ?></textarea>
        <br>
        <button type="submit">Submit</button>
    </form>
</body>
</html>