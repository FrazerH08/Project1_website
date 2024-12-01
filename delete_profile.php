<?php
include 'connectdb.php';
include 'account_display.php';
include 'header.html';
// Get username from session, with additional safety
$username = $_SESSION['username'] ?? 'Guest';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete profile</title>
    <link rel="stylesheet" href="header.css"
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&display=swap" rel="stylesheet">
</head>
<body>

        <?php echo "<h1> Hello! {$username} How are you today? This page is coming soon sadly </h1> ";
  include 'footer.html';
?>      
</body>
</html>

