<?php
include "database_connection.php";
error_reporting(E_ERROR);
session_start();
ob_start();
$valid_user_id = trim($_SESSION["VALID_USER_ID"]);

if(isset($_SESSION["VALID_USER_ID"]) && !empty($valid_user_id))
// USER_FULLNAME
{
		 //Include the database connection script
//Check the logged in user information from the database
$check_user_details = mysqli_query($con,"select * from `login` where `email` = '".mysqli_real_escape_string($con,$_SESSION["VALID_USER_ID"])."'");
//Get the logged in user info from the database
$get_user_details = mysqli_fetch_array($check_user_details);
//Pass all the logged in user info to variables to easily display them when needed
$user_id = strip_tags($get_user_details['id']);
$firstname = strip_tags($get_user_details['firstname']);
$lastname = strip_tags($get_user_details['lastname']);
$email = strip_tags($get_user_details['email']);
$passwd = strip_tags($get_user_details['password']);
if((date('H') == 21  && date('i') > 30) && (date('H') == 21 && date('i') <  46 ))
	header("location: bonus.php");
else
{
	mysqli_query($con,"update login set bonusplaying='0',bonus_q='0' where email='".mysqli_real_escape_string($con,$valid_user_id)."'");
	header("location: index.php");
}
}
else
{
	header("location: login.php");
}
?>