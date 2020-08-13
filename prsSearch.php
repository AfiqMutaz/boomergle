<?php
include("core.php");
include("db_connect.php");
?>

<html>
<title>Boomergle</title>
<head>
  <link rel="stylesheet" type="text/css" href="css/styles.css">
  <link href="https://fonts.googleapis.com/css?family=Lato|Public+Sans|Roboto&display=swap" rel="stylesheet">
</head>
<?php
if(session_exist()) {

  include("header.php");
?>
<body class="body-search">
<div class="search-content-container">
<?php
  $query = "SELECT * FROM post ORDER BY pst_likes DESC";

    if($query_run = mysql_query($query))
    {

      $resultData = array();
      while($fetch = mysql_fetch_array($query_run))
      {

        $id = $fetch['pst_id'];
        $title = $fetch['pst_title'];
        $caption = $fetch['pst_caption'];
        $content = $fetch['pst_content'];
        $likes = $fetch['pst_likes'];
        $category = $fetch['pst_category'];
        $date = $fetch['pst_date'];
        $userid = $fetch['pst_user_id'];
        $filename = $fetch['pst_filename'];

        $numberRecords = mysql_num_rows($query_run);

        if(isset($_GET['clicked']))
        {
          $input = $_GET['userInput'];
          $inputLower = strtolower($input);
          $userInput_array = explode("_", $inputLower);

          $string_array = explode(" ", $content); //Fetch contents of article in place inside an array
          $strip_array = array_map('strip_tags', $string_array); //Strip of any html tags
          $lowcase_array = array_map('strtolower', $strip_array); //Convert strings to lower case
          $final_array = str_replace(array('.', ','),'', $lowcase_array); // Remove periods or commas

          $counter = 0;
          $result_array = array();

          for($x=0; $x<count($userInput_array); $x++) {
            for($y=0; $y<count($final_array); $y++) {
              if(array_key_exists($y, $final_array)) {
                if($final_array[$y] == $userInput_array[$x]) {
                  $result_array[$counter] = $userInput_array[$x];
                  $counter++;
                }
              }
            }
          }

          //print_r($final_array);

          if($counter > 0) {
            $resultData[] = array($counter, $title, $caption, $likes, $category, $date, $filename,$result_array, $content);
          }
        }
      }

      if(array_key_exists(0, $resultData)) {
      //START SORTING RESULTS BASED ON COUNTER
        uasort($resultData, "my_comp");
        foreach($resultData as $resultData) {
          echo "<div class='search-result-container'>";
          echo "<a href='webpages/".$resultData[6]."?views=".$resultData[3]."'><h2>".$resultData[1]."</h2></a><br>";
          echo "<h3>".$resultData[2]."</h3><br>";
          echo $resultData[3]." views<br>";
          echo $resultData[4]."<br>";
          echo $resultData[5]."<br>";
          echo $resultData[0]." total hits<br>";

          $remDupli = array_count_values($resultData[7]);
          foreach($remDupli as $remDupli => $numDupli) {
            echo "<strong>".$remDupli."</strong> = ".$numDupli." hits &nbsp;&nbsp;";
          }
          echo "</div>";
          echo "<br>";
        }
      } else {
        echo "<h3>We found nothing based on your search</h3>";
        echo "<p id='search-error-p'>Please do not hesitate to try again!<p>";
      }
    }
  } else {
    header("location: index.php");
  }
?>
</div>
</body>

</html>
