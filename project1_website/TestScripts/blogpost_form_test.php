<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>
        <?php echo "Test Blog Post Entry Form"; ?>
    </title>
</head>
<body>

<form action="blogpost_validate.php" method="post">
    Title:
    <input type="text" name="title" id="TitleField" size="30"><br>
    Post Text:
    <textarea name="post" rows="20" cols="30"></textarea><br>
    <input type="submit">
</form>
</body>
</html>
