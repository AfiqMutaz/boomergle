<?php
include("../core.php");
include("../db_connect.php");
?>
<html>
<body>
<body style = background-color:powderblue;>
<img src="../images/o-logo.png" style="width:80px;height:80px;float:left;">
<header style="font-size:30px;"><a href="../home.php" style="text-decoration:none;color:black">Obamapedia</a></header><hr>

<h2>Barack Obamacare</h2>

<img src="../images/obamapic.jpg" style="width:130px;height:130px;float:left;">
<?php
  @$views = $_GET['views'];
  $result = $views + 1;
  $update_query = "UPDATE post SET pst_likes='$result' WHERE pst_id = 2";

  if(mysql_query($update_query)) {
    //echo "Views updated";
  } else {
    //echo "Failed to update views";
  }

  $query = "SELECT * FROM post WHERE pst_id = 2";

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

</body>
</html>
