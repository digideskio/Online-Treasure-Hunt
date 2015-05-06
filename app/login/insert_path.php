<?php 
error_reporting(E_ERROR);
session_start();
ob_start();
$valid_user_id = trim($_SESSION["VALID_USER_ID"]);
include "database_connection.php";
$path=trim(strip_tags($_POST['path']));
$result = mysqli_query($con,"update login set path='".mysqli_real_escape_string($con,$path)."' where email='".mysqli_real_escape_string($con,$valid_user_id)."'");
if($path==1)
$result2 = mysqli_query($con,"update login set current_q=61 where email='".mysqli_real_escape_string($con,$valid_user_id)."'");
if($path==2)
$result2 = mysqli_query($con,"update login set current_q=62 where email='".mysqli_real_escape_string($con,$valid_user_id)."'");
if($path==3)
$result2 = mysqli_query($con,"update login set current_q=63 where email='".mysqli_real_escape_string($con,$valid_user_id)."'");
if($path==4)
$result2 = mysqli_query($con,"update login set current_q=64 where email='".mysqli_real_escape_string($con,$valid_user_id)."'");
if($path==5)
$result2 = mysqli_query($con,"update login set current_q=65 where email='".mysqli_real_escape_string($con,$valid_user_id)."'");
if($path==6)
$result2 = mysqli_query($con,"update login set current_q=66 where email='".mysqli_real_escape_string($con,$valid_user_id)."'");
if($path==7)
$result2 = mysqli_query($con,"update login set current_q=67 where email='".mysqli_real_escape_string($con,$valid_user_id)."'");
if($path==8)
$result2 = mysqli_query($con,"update login set current_q=68 where email='".mysqli_real_escape_string($con,$valid_user_id)."'");
if($result && $result2)
echo "Successful";
else
echo "Unsuccessful";
?>