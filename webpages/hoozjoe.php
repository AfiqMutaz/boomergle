<?php
include("../core.php");
include("../db_connect.php");
?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../css/hoozjoe.css">
    <title>HoozJoe</title>
</head>
<body>
    <div class="topheader">
        <h2><a href="../home.php">HoozJoe</a></h2>
        <h1>"ASK ME WHO JOE IS, RIGHT NOW!" - Michael 'Shamone' Jackson</h1>
        <ul class = "links">
            <li><a href="">Home Page</a></li>
            <li><a href="">Forum</a></li>
            <li><a href="">Michael Jackson Biography</a></li>
            <li><a href="">About</a></li>
            <li><a href="">Login</a></li>

        </ul>
    </div>
    <div class = "paragraph1">

    </div>

    <div class = "paragraph2">
      <?php
        @$views = $_GET['views'];
        $result = $views + 1;
        $update_query = "UPDATE post SET pst_likes='$result' WHERE pst_id = 4";

        if(mysql_query($update_query)) {
          //echo "Views updated";
        } else {
          //echo "Failed to update views";
        }

        $query = "SELECT * FROM post WHERE pst_id = 3";

          if($query_run = mysql_query($query))
          {
            while($fetch = mysql_fetch_array($query_run))
            {

              $title = $fetch['pst_title'];
              $caption = $fetch['pst_caption'];
              $content = $fetch['pst_content'];
              $likes = $fetch['pst_likes'];
              $category = $fetch['pst_category'];
              $date = $fetch['pst_date'];
              $user_id = $fetch['pst_user_id'];

              //echo "<h1>".$title."</h1>";
              //echo $caption."<br>";
              //echo $likes." likes<br>";
              //echo $category."<br>";
              //echo "Posted on: ".$date."<br>";
              //echo "Posted by: ".$user_id."<br>";
              echo $content;
            }
          }
        ?>
    </div>


</body>
</html>
