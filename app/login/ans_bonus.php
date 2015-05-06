<?php 
error_reporting(E_ERROR);
session_start();
ob_start();
$valid_user_id = trim($_SESSION["VALID_USER_ID"]);
include "database_connection.php";
$ans=trim(strip_tags($_POST['ans']));
$bonus_q=trim(strip_tags($_POST['bonus_q']));
$answer = mysqli_query($con,"select answer from questions where question_id='".mysqli_real_escape_string($con,$bonus_q)."'");
while($row2=mysqli_fetch_array($answer))
$answer=$row2['answer'];
$bonuscountResult = mysqli_query($con,"select bonuscount from login where email='".mysqli_real_escape_string($con,$valid_user_id)."'");
while($row_b=mysqli_fetch_array($bonuscountResult))
$bonuscount=$row_b['bonuscount'];
if($answer==$ans)
{
if($bonus_q==201 || $bonus_q==203 || $bonus_q==205)
{
echo "ended";
$bonuscount++;
$bonus_q = 900;
}


mysqli_query($con,"update login set bonus_q='$bonus_q',bonuscount='$bonuscount' where email='".mysqli_real_escape_string($con,$valid_user_id)."'");

}
else
echo "Wrong Answer";
?>