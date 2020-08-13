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
<?php if(session_exist()) { ?>
<div class="home">
  <div class="home-content-container">
    <h3>Welcome <?php echo get_field('user_firstName'); ?> to<h3><h1>Ok, Boomergle</h1>
    <form action="" method="POST" autocomplete="off">
      <input type="text" name="userInput"><br>
      <input type="submit" name="submit" value="Search">
    </form>
    <br>
    <a href="logout.php"><button>Logout</button></a>
  </div>
</div>

<?php
  if(isset($_POST['submit'])) {
    $userInput = $_POST['userInput'];

    $replace = str_replace(" ", "_", $userInput);
    echo $replace;
    header("location: prsSearch.php?clicked=true&userInput=".$replace);
  }
} else {
  header("location: index.php");
}
?>

</html>
