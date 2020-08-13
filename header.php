<div class="header">
  <div class="header-logo">
    <h3>Welcome <?php echo get_field('user_firstName'); ?></h3><a href="home.php"><h1>Boomergle</h1></a>
  </div>
  <div class="header-search">
    <form action="" method="POST" autocomplete="off">
      <input type="text" name="userInput">
      <input type="submit" name="submit" value="Search">
    </form>
  </div>
</div>

<?php
  if(isset($_POST['submit'])) {
    $userInput = $_POST['userInput'];

    $replace = str_replace(" ", "_", $userInput);
    echo $replace;
    header("location: prsSearch.php?clicked=true&userInput=".$replace);
  }
?>
