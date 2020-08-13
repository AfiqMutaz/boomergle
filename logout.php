<?php

include ("db_connect.php");
include ("core.php");

session_destroy();

header("location: index.php");

?>
