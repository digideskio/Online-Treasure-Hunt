<?php
include "database_connection.php";
error_reporting(E_ERROR);
session_start();
ob_start();
$valid_user_id = trim($_SESSION["VALID_USER_ID"]);

if(isset($_SESSION["VALID_USER_ID"]) && !empty($valid_user_id))
// USER_FULLNAME
{
	
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>IEEE VESIT OTH</title>
<!-- Required header files -->
<script type="text/javascript" src="1.5.2.main.js"></script>
<script type="text/javascript" src="js/vpb_save_details.js"></script>
<script type="text/javascript" src="js/jquery_1.5.2.js"></script>
<link href="css/style.css" rel="stylesheet" type="text/css">
<style type="text/css">
@font-face {
font-family:'treasure';
src:url(css/Treamd.ttf);
}
.event-name {
 -webkit-text-stroke-width: 1px;
   -webkit-text-stroke-color: #FFD700;
   font-family:treasure;
   font-size:100px;
}
h1,p,h2,h3,h4 { font-family:treasure; }
.wrapper {
display:table;
width:100%;

}
.left {
display:table-cell;
width:20%;
height:500px;
}
.row {
display:table-row;
}
.mid {
display:table-cell;
width:60%;
}
.right {
display:table-cell;
width:20%;
}
	
</style>

<script>
		<?php
			$current_time=time();
			$stop_time=strtotime("Mar 07 2015 21:46");
			$dif =$stop_time - $current_time;
			$dif = $dif * 1000;
			if($dif>0 && $dif<900000)
				echo 'setTimeout(function () {
			var xmlhttp;
			if (window.XMLHttpRequest)
			  {// code for IE7+, Firefox, Chrome, Opera, Safari
			  xmlhttp=new XMLHttpRequest();
			  }
			else
			  {// code for IE6, IE5
			  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
			  }
			xmlhttp.onreadystatechange=function()
			  {
			  if (xmlhttp.readyState==4 && xmlhttp.status==200)
			    {
			    document.getElementById("fixed").innerHTML=xmlhttp.responseText;
			    setTimeout(function(){window.location.assign("crook.php");},5000);
			    }
			}
			xmlhttp.open("GET","test2.php",true);
			xmlhttp.send();
		},'.$dif.');';
		else/*{
			$current_time=time();
			$stop_time=$stop_time + 60;
			$dif =$stop_time - $current_time;
			$dif = $dif * 1000;
			if($dif>0)*/
				echo 'setTimeout(function () {
			var xmlhttp;
			if (window.XMLHttpRequest)
			  {// code for IE7+, Firefox, Chrome, Opera, Safari
			  xmlhttp=new XMLHttpRequest();
			  }
			else
			  {// code for IE6, IE5
			  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
			  }
			xmlhttp.onreadystatechange=function()
			  {
			  if (xmlhttp.readyState==4 && xmlhttp.status==200)
			    {
			    document.getElementById("fixed").innerHTML=xmlhttp.responseText;
			    setTimeout(function(){window.location.assign("crook.php");},5000);
			    }
			}
			xmlhttp.open("GET","test2.php",true);
			xmlhttp.send();
		},0);';
			/*else
				echo 'setTimeout(function () {
			var xmlhttp;
			if (window.XMLHttpRequest)
			  {// code for IE7+, Firefox, Chrome, Opera, Safari
			  xmlhttp=new XMLHttpRequest();
			  }
			else
			  {// code for IE6, IE5
			  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
			  }
			xmlhttp.onreadystatechange=function()
			  {
			  if (xmlhttp.readyState==4 && xmlhttp.status==200)
			    {
			    document.getElementById("fixed").innerHTML=xmlhttp.responseText;
			    }
			} 
			xmlhttp.open("GET","test2.php",true);
			xmlhttp.send();
		},0);';}*/
		?>
	</script>
</head>
	<?php 
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
$result = mysqli_query($con,"select bonus_q from login where email='$email'");
while($row=mysqli_fetch_array($result))
$bonus_q=$row['bonus_q'];
$question = mysqli_query($con,"select question from questions where question_id='$bonus_q'");
while($row2=mysqli_fetch_array($question))
$q=$row2['question'];
$bonusResult = mysqli_query($con,"select bonusplaying from login where email='$email'");
while($row3=mysqli_fetch_array($bonusResult))
$bonus=$row3['bonusplaying'];

$bonuscountResult = mysqli_query($con,"select bonuscount from login where email='".mysqli_real_escape_string($con,$valid_user_id)."'");
while($row_b=mysqli_fetch_array($bonuscountResult))
$bonuscount=$row_b['bonuscount'];
?>	
<body style="background-image:url('images/bg.jpg');background-repeat:no-repeat;">
<img style="width:202px;height:202px;" src="images/logobg.png" />
<img  style="margin-left:auto;margin-right:auto;display:block;margin:auto;margin-top:-190px;" width="600px" height="178px"src="images/banner.png" /><br>
<div class="wrapper">
<div class="row">
<div class="left">
</div>


<div class="mid">



<?php
if($bonus_q == 201 || $bonus_q == 203 || $bonus_q == 205)
{
	$bonuscount = 0;
	mysqli_query($con,"update login set bonuscount='0' where email='".mysqli_real_escape_string($con,$valid_user_id)."'");
}
if($bonus==0)
{
echo '<div style="text-align:center;background-image:url(images/questionsbg.jpg);background-repeat:no-repeat;height:600px;width:800px; -webkit-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px;">
<br><br><br><br><br>';
echo '<h1 style="padding-top:100px;padding-left:100px;padding-right:100px;">The bonus round has ended</h1>';

echo '</div>';
}

else if($bonus==1)
{
echo '<div style="background-image:url(images/questionsbg.jpg);background-repeat:no-repeat;height:600px;width:800px; -webkit-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px;">
<br><br><br>';
if($bonuscount==1)
{
echo '<h1 id="message" style="text-align:center;padding-top:100px;padding-left:100px;padding-right:100px;">You have completed the Bonus Round'.'<br>'.'You can continue the quest after the bonus <br>round ends.<br>You will be automatically redirected<br> to the main page.</h1>';

}
else {
echo '<h1 style="text-align:center;">'.'Bonus Round'.'</h1>';
echo '<img width="530px" height="280px;" style="margin-left:auto;margin-right:auto;display:block;" src="images/'.$q.'" /><br>';
echo '<input style="margin-left:auto;margin-right:auto;display:block;" placeholder="Enter your answer" type="text" id="ans" class="vasplus_blog_form_opt" /><br>';
echo '<div style="margin-left:auto;margin-right:auto;display:block"  id="empty_ans">';
echo '</div>';
echo '<button  style="margin-left:auto;margin-right:auto;display:block;" class="btn" onclick="submit_bonus('.$bonus_q.');">Submit</button>';
}
echo '</div>';
}

?>

</div>
<div class="right">
</div>
</div>
</div><br>
<div style="position:fixed;bottom:0pc;right:0px;" id="fixed">
</div>
</body>
</html>

<?php
	
}
else
{
	header("location: login.php");
}
?>