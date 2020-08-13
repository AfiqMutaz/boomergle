<?php
$server_name = "localhost";
$database_name = "boomergle";
$database_username = "root";
$database_password = "A525";

/*connection to database
You can use mysql_connect funcvtion to connect to the server and mysql_select_db to
select which database you wish to connect to
*/
//$conn  = new mysqli($server_name, $database_username, $database_password, $database_name);

//if($conn->connect_error) {
  //die("Connetion failed: ". $conn->connect_error);
//}

if(mysql_connect($server_name, $database_username, $database_password) && mysql_select_db($database_name))
{
//echo "Database has been successfully connected";
}
else
{
echo "Database is not connected";
}
?>
