<?php
include("core.php");
include("db_connect.php");

if(!(session_exist())) {
?>
<html>
<title>Search Engine</title>
<head>
<link rel="stylesheet" type="text/css" href="css/styles.css">
<link href="https://fonts.googleapis.com/css?family=Lato|Public+Sans|Roboto&display=swap" rel="stylesheet">
</head>

<body>
  <div class="login">
    <div class="login-content-container">
      <form action="" method="POST">
        <h3>Already have an account?</h3>
        <h3>Log back in!</h3>
        <p>Username</p>
        <p><input type="text" name="username" required></p>
        <p>Password</p>
        <p><input type="password" name="password"></p>
        <p><input type="submit" name="submit-login" value="Login"></p>
      </form>
    </div>
  </div>

  <div class="register">
    <div class="register-content-container">
      <form action="" method="POST">
        <h3>New user?</h3>
        <h3>Create a new account!</h3>
        <div class="register-content-container-1">
          <P>Username</p>
          <p><input type="text" name="username" required></p>
          <p>Password</p>
          <p><input type="password" name="password" required></p>
          <p>Confirm Password</p>
          <p><input type="password" name="confirmPassword" required></p>
        </div>
        <div class="register-content-container-2">
          <p>First Name</p>
          <p><input type="text" name="firstName" required></p>
          <p>Last Name</p>
          <p><input type="text" name="lastName" required></p>
          <p>Email</p>
          <p><input type="text" name="email" required></p>
          <p>Gender</p>
          <select name="gender" required>
            <option value="Male">Male</option>
            <option value="Female">Female</option>
          </select>
        </div>
        <p><input type="submit" name="submit-register" value="Submit"></td>
      </form>
    </div>
  </div>
</body>
</html>

<?php

if(isset($_POST['submit-register']))
{

  $username = $_POST['username'];
  $password = md5($_POST['password']);
  $confirmPassword = md5($_POST['confirmPassword']);
  $firstName = $_POST['firstName'];
  $lastName = $_POST['lastName'];
  $email = $_POST['email'];
  $gender = $_POST['gender'];

  $register_query = "INSERT INTO account VALUES ('','$username','$password','$firstName', '$lastName', '$email', '$gender', '$utc', 'default')";

  if($password == $confirmPassword) {
    if(mysql_query($register_query)) {
      echo '<script language="javascript">';
      echo 'alert("Account created successfully")';
      echo '</script>';
    } else {
      echo '<script language="javascript">';
      echo 'alert("Query failed")';
      echo '</script>';
    }
  }
  else
  {
    echo '<script language="javascript">';
    echo 'alert("Your passwords dont match")';
    echo '</script>';
  }

}

if(isset($_POST['submit-login']))
{
  $username = $_POST ['username'];
  $password = md5($_POST['password']);

  $sql = "SELECT * FROM account WHERE user_username = '$username' AND user_password = '$password'";

  if ($query_run = mysql_query($sql))
  {
    $check_user = mysql_num_rows($query_run);
		if($check_user == 1)
		{

			$session_id = mysql_result($query_run,0,'user_id');
      $_SESSION['id']=$session_id;

      echo '<script language="javascript">';
      echo 'alert("Successfully logged in")';
      echo '</script>';
  		header("location:home.php");
    }
  	elseif($check_user == 0)
  	{
      echo '<script language="javascript">';
      echo 'alert("User not found")';
      echo '</script>';
  	}
	}
	else
	{
		echo '<script language="javascript">';
    echo 'alert("Error invalid query")';
    echo '</script>';
	}
}

} else {
  header("location: home.php");
}
?>
