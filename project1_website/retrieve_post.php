<?php

include 'connectdb.php';

$sql = "SELECT * FROM posts";

$result = $conn->query($sql);

echo '<style>
img{
    hight: 200x;
    width: 400px;
    object-fit:cover;
    display;block;
}
</style>';
if($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()){
        echo'<section class="postcard">';
        echo "<h2>" . $row['title'] . "</h2>";
        echo "<p>" . $row['post_txt'] . "</p>";
        echo'</section>';
    }
}else {
    echo"Sorry 0 Results Returned";
}
