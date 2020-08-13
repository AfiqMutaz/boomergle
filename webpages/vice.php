<?php
include("../core.php");
include("../db_connect.php");
?>
<html>
<title>Vice</title>
<head>
  <link rel="stylesheet" type="text/css" href="../css/styles.css">
</head>
<body>
  <div class="vice-header">
    <h1><a href="../index.php">VICE</a></h1>
    <h3>Magazine</h3>
  </div>
  <div class="vice-nav">
    <ul>
      <li><a href="#">HOME</a></li>
      <li><a href="#">CONTACT</a></li>
      <li><a href="#">ABOUT</a></li>
    </ul>
  </div>
  <div class="clear">
  </div>
  <div class="vice-content-container">
    <?php
      @$views = $_GET['views'];
      $result = $views + 1;
      $update_query = "UPDATE post SET pst_likes='$result' WHERE pst_id = 4";

      if(mysql_query($update_query)) {
        //echo "Views updated";
      } else {
        //echo "Failed to update views";
      }

      $query = "SELECT * FROM post WHERE pst_id = 4";

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

            $query = "SELECT user_firstName FROM account WHERE user_id = '".$user_id."'";
          	if($query_run = mysql_query($query)) {
              $result = mysql_result($query_run,0, "user_firstName");
              $firstName = $result;
            }

            echo "<h1>".$title."</h1>";
            echo $caption."<br>";
            echo $likes." likes<br>";
            echo $category."<br>";
            echo "Posted on: ".$date."<br>";
            echo "Posted by: ".$firstName."<br>";
            echo $content;
          }
        }
      ?>
  </div>
</body>
</html>
