<?php
session_start();
include 'connectdb.php';
// how  to set a session var
$_SESSION['user_id'] =1;
$_SESSION['username'] = 'admin';
$_SESSION['logged_in'] = true;
$_SESSION['role'] = 'admin';
// how to recall a session var
$logged_in = $_SESSION['logged_in'];
$role = $_SESSION['role'];
echo "User Role: " .$role;

$SQL = "SELECT id, title, description FROM posts ORDER BY created DESC";

$result = $conn->query(query:$SQL);

?>

<!doctype html>
<html>
<head>
<style>
<section{
    backgroundcolor
}
</head>

<?php
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo '<section class="postCard">';
        echo '<p><a href="retrieve_post.php?id=' . $row['id'] . '">' . $row['title'] . '</a>:<br>';
            if($role == 'admin'){
                echo '<a href="edit_post_form>php?id=' . $row['id'] . '">Edit</a> | <a onclick="return confirm(\'Do You Really Want To Delete This?\')" href="delete_post.php?id=' . $row['id'] . '">Delete</a>';
            }
        echo $row['description'] . "</>";
        echo "</section>";
    }
} else {
    echo "Sorry 0 Results Returned";
}
?>
</body>
</html>
