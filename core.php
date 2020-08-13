<?php

session_start();

$utc = gmdate('Y-m-d');

function session_exist()
{
	if(isset($_SESSION['id']) && !empty($_SESSION['id']))
	{
		return true;
	}
	else
	{
		return false;
	}
}

//Get data of user
function get_field($field)
{
	$query = "SELECT $field FROM account WHERE user_id = '".$_SESSION['id']."'";

	if($query_run = mysql_query($query))
		$result = mysql_result($query_run,0,$field);
		return $result;
}

function my_comp($left, $right) {
	return $left[0] < $right[0];
}

?>
