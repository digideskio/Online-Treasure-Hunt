<?php 
error_reporting(E_ERROR);
session_start();
ob_start();
$valid_user_id = trim($_SESSION["VALID_USER_ID"]);
include "database_connection.php";
$ans=trim(strip_tags($_POST['ans']));
$current_q=trim(strip_tags($_POST['current_q']));
$answer = mysqli_query($con,"select answer from questions where question_id='".mysqli_real_escape_string($con,$current_q)."'");
$result= mysqli_query($con, "select path from login where email='".mysqli_real_escape_string($con,$valid_user_id)."'");
$skip= mysqli_query($con, "select skipcount from login where email='".mysqli_real_escape_string($con,$valid_user_id)."'");

while($row=mysqli_fetch_array($result))
$path = $row['path'];
while($row2=mysqli_fetch_array($answer))
$answer=$row2['answer'];
while($row5=mysqli_fetch_array($skip))
$skipcount = $row5['skipcount'];
if($answer==$ans)
{
$skipcount = $skipcount - 1;
if($current_q==5 && $path==0)
	$current_q=101;
else if($current_q==61 && $path==1)
	$current_q=102;
else if($current_q==64 && $path==4)
	$current_q=103;
else if($current_q==62 && $path==2)
	$current_q=104;
else if($current_q==65 && $path==5)
	$current_q=105;	
else if($current_q==67 && $path=7)
	$current_q=106;
else if($current_q==68 && $path==8)
	$current_q=107;
	
else {
if(($current_q>=1 && $current_q<5) || ($current_q>=6 && $current_q<8))
	$current_q=$current_q+1;	
else if($current_q==63 || $current_q==66)
	$current_q=6;	
else if($current_q==8) {
	$selectYear = mysqli_query($con,"select year from login where email='".mysqli_real_escape_string($con,$valid_user_id)."'");
	while($yearRow=mysqli_fetch_array($selectYear))
		$year=$yearRow['year'];
	if(trim($year)=="SE") 
		$current_q=9;
	else if(trim($year)=="TE")
		$current_q=10;
	else if(trim($year)=="BE")
		$current_q=11;
}
else if($current_q==9 || $current_q==10 || $current_q==11)
	$current_q=1000;
}
$t=time();
$scaleResult = mysqli_query($con,"select scale from questions where question_id='".mysqli_real_escape_string($con, $current_q)."'");
while($scale_r=mysqli_fetch_array($scaleResult))
$scale=$scale_r['scale'];
mysqli_query($con,"update login set current_q='".mysqli_real_escape_string($con,$current_q)."',timestamp='".mysqli_real_escape_string($con,$t)."' where email='".mysqli_real_escape_string($con,$valid_user_id)."'");

mysqli_query($con,"update login set scale='".mysqli_real_escape_string($con,$scale)."' where email='".mysqli_real_escape_string($con,$valid_user_id)."'");
mysqli_query($con,"update login set skipcount='".mysqli_real_escape_string($con,$skipcount)."' where email='".mysqli_real_escape_string($con,$valid_user_id)."'");
echo "Correct Answer";
}
else 
echo "Wrong Answer";

?>