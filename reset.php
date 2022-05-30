<?php
//call the connection to the server
include("functions/init.php");

//hash default password
$dpword = md5("adminlogin");

//update the admin table with the default password
$sql = "UPDATE `admin` SET `password` = '$dpword'";
$res = query($sql);

//redirect to login page with a notification 
redirect("./login?notify=notify");
?>