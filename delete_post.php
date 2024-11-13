<?php

include 'connectdb.php';
session_start();

$logged_in = $_SESSION['logged_in'];
$role = $_SESSION['role'];

if($role != 'admin' || $logged_in == false) {
    header(header:"Location: list_posts.php");
}

$SQL = "DELETE FROM posts WHERE id =" . $_GET['id'];

$result = $conn->query(query:$SQL);

echo '<style>
section{
background-color:pink;
display:block;
}
</style>';

if ($result === TRUE) {
    echo "<h1>Post Deleted Successfully</h1>";
    echo "<p>" . mysqli_affected_rows($conn) ."Rows Affected </p>";
    echo "<p><a href='list_posts.php'>Back To Posts</a></p>";
} else {
    echo "Sorry 0 Results Returned";
}