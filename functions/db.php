<?php
//creating the database to use
//$con = mysqli_connect("localhost","root","","bursary");
$con = mysqli_connect("localhost","fountai3_user","securemelikekilode","fountai3_fgsbus");

function row_count($result) {

global $con;

	return mysqli_num_rows($result); 
}


function escape($string) {
	global $con;


	return mysqli_real_escape_string($con, $string);
}


function query($query) {
		global $con;

		return mysqli_query($con, $query);
}


function confirm($result) {
		global $con;
	
}

function last_id($last_id) {

	global $con;

	return mysqli_insert_id($con);
}

function fetch_array($result) {

global $con;

return mysqli_fetch_array($result);

}

?>