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
.pathbtn {
 background-color: Transparent;
    background-repeat:no-repeat;
    border: none;
    cursor:pointer;
    overflow: hidden;
    outline:none;

}
.left {
float:left;
width:35%;
height:500px;
}
.path {
text-align:center;
}
.row {
display:table-row;
}
.mid {
float:left;
width:45%;
}
.right {

width:20%;
}
	.mapPanel {
	
	  width: 100%;
	  height: auto;
	  position: relative;
	
	  }
	.mapPanel > img {
	  display: block;
	  width: 100%;
	  }
	.mapPanel .flag {
	  background-image: url('images/red.png');
	  background-size: contain;
	  position: absolute;
	  display: block;
	  width:2%;
	  height: 3%;
	  visibility:hidden;
	  }


	.container{
	   bottom:0px;
	   width: 80%;
	   height:80%;
	   margin-left:auto;
	   margin-right:auto;
	   display:block;
	  
	}
</style>
	<script>
	function focus_textbox() {
		$("#ans").focus();
	}
	function searchKeyPress(e)
    {
        // look for window.event in case event isn't passed in
        e = e || window.event;
        if (e.keyCode == 13)
        {
            document.getElementById('submit_ans').click();
        }
    }
		<?php  
			$current_time=time();
			$stop_time=strtotime("Mar 07 2015 21:31");
			$dif =$stop_time - $current_time;
			$dif = $dif * 1000;
			if($dif>0)
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
			    setTimeout(function(){window.location.assign("fluke.php");},5000);
			    }
			}
			xmlhttp.open("GET","test1.php",true);
			xmlhttp.send();
		},'.$dif.');';
		else{
			$current_time=time();
			$stop_time=$stop_time + 900;
			$dif =$stop_time - $current_time;
			$dif = $dif * 1000;
			if($dif>0)
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
			    setTimeout(function(){window.location.assign("fluke.php");},5000);
			    }
			}
			xmlhttp.open("GET","test1.php",true);
			xmlhttp.send();
		},0);';
			else
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
			xmlhttp.open("GET","test1.php",true);
			xmlhttp.send();
		},0);';}
		?>
	</script>
	<!-- Google Analytics -->
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-34583860-1', 'auto');
  ga('send', 'pageview');

</script>
<!-- End Google Analytics -->
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
$result = mysqli_query($con,"select current_q from login where email='$valid_user_id'");
while($row=mysqli_fetch_array($result))
$current_q=$row['current_q'];
$question = mysqli_query($con,"select question from questions where question_id='$current_q'");
while($row2=mysqli_fetch_array($question))
$q=$row2['question'];
$bonusResult = mysqli_query($con,"select bonusplaying from login where email='$valid_user_id'");
while($row3=mysqli_fetch_array($bonusResult))
$bonus=$row3['bonusplaying'];
$xResult=mysqli_query($con,"select x from question where current_q='$current_q'");
$yResult=mysqli_query($con,"select y from question where current_q='$current_q'");
while($xRow=mysqli_fetch_array($xResult))
$bonus=$xRow['x'];
while($yRow=mysqli_fetch_array($yResult))
$bonus=$yRow['y'];
	$xyResult=mysqli_query($con,"select x,y from questions where question_id='$current_q'");
	while($xyRow=mysqli_fetch_array($xyResult))
	{
		$x=$xyRow['x'];
		$y=$xyRow['y'];
	}
$bonuscountResult = mysqli_query($con,"select bonuscount from login where email='".mysqli_real_escape_string($con,$valid_user_id)."'");
while($row_b=mysqli_fetch_array($bonuscountResult))
$bonuscount=$row_b['bonuscount'];

$skip= mysqli_query($con, "select skipcount from login where email='".mysqli_real_escape_string($con,$valid_user_id)."'");
while($row5=mysqli_fetch_array($skip))
$skipcount = $row5['skipcount'];	

$pathResult=mysqli_query($con,"select path from login where email='$valid_user_id'");
while($path_r=mysqli_fetch_array($pathResult))
$path=$path_r['path'];
?>	
<body onload="focus_textbox();" style="background-image:url('images/bg.jpg');background-repeat:no-repeat;margin:0px;background-size:contain;">
<img style="width:202px;height:202px;" src="images/logobg.png" />
<img  style="margin-left:auto;margin-right:auto;display:block;margin:auto;margin-top:-190px;" width="600px" height="178px"src="images/banner.png" /><br>
<div class="wrapper">
<div class="row">
<?php
if($current_q!=1000)
{
echo '<div align="center" class="left" style="font-family:treasure;background-image:url(\'images/rankings.png\');background-repeat:no-repeat;">';
echo '<br><br>';
echo '<p style="margin-left:-40px;text-align:center;margin-top:-5px;line-height:0.1;font-size:25px;"><b>Rankings</b></p>';

echo '<li style="overflow-y:auto;list-style-type:none">';

$count=0;
$rankings = mysqli_query($con,"select scale,username from login order by scale desc,timestamp asc");
while($row_r=mysqli_fetch_array($rankings))
{
if($count==10)
break;
else if($count<10)
{
$count++;
echo '<ol style="text-align:left;font-size:20px;line-height:0.5;margin-left:100px;">'.$count.'. '.$row_r['username'].'</ol>';
}
}

echo '</li>';
echo '</div>';
}
?>

<div class="mid">



<?php
if($bonus==1)
{
echo '<div style="text-align:center;background-image:url(images/questionsbg.jpg);background-repeat:no-repeat;height:600px;width:800px; -webkit-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px;">
<br><br><br><br><br>';
echo '<h1 style="padding-top:100px;padding-left:100px;padding-right:100px;">Currently bonus round is going on. You can continue your quest after the bonus round ends.</h1>';
echo '</div>';
}

else if($current_q==101 && $bonus==0)
{
echo '<div style="position:relative;background-image:url(images/path21.png);background-repeat:no-repeat;background-size:contain;height:600px;width:800px;">';
echo '<button  style="color:white;position:absolute;top:290px;left:410px;font-size:14pt;" class="pathbtn" id="path1" onclick="path(1)">Path 1</button>';
echo '<button  style="color:white;position:absolute;top:340px;left:410px;font-size:14pt;" id="path4" class="pathbtn" onclick="path(4)">Path4</button>';
echo '<div align="centre"  id="empty_ans">';
echo '</div>';
echo '</div>';
}
else if($current_q==102 && $bonus==0)
{
echo '<div style="position:relative;background-image:url(images/path22.png);background-repeat:no-repeat;background-size:contain;height:600px;width:800px;">';
echo '<button style="color:white;position:absolute;top:168px;left:360px;font-size:14pt;" id="path2" class="pathbtn" onclick="path(2)">Path 2</button>';
echo '<button style="color:white;position:absolute;top:205px;left:360px;font-size:14pt;" id="path8" class="pathbtn" onclick="path(8)">Path 8</button>';
echo '<div align="centre"  id="empty_ans">';
echo '</div>';
echo '</div>';
}
else if($current_q==103 && $bonus==0)
{
echo '<div style="position:relative;background-image:url(images/path23.png);background-repeat:no-repeat;background-size:contain;height:600px;width:800px;">';
echo '<button style="color:white;position:absolute;top:250px;left:280px;font-size:14pt;" id="path7" class="pathbtn" onclick="path(7)">Path 7</button>';
echo '<button style="color:white;position:absolute;top:315px;left:280px;font-size:14pt;" id="path5" class="pathbtn" onclick="path(5)">Path 5</button>';
echo '<div align="centre"  id="empty_ans">';
echo '</div>';
echo '</div>';
}
else if($current_q==104 && $bonus==0)
{
echo '<div style="position:relative;background-image:url(images/path1.png);background-repeat:no-repeat;background-size:contain;height:600px;width:800px;">';
echo '<button style="color:white;position:absolute;top:350px;left:432px;font-size:12pt;" id="path3" class="pathbtn" onclick="path(3)">Path 3</button>';
echo '<div align="centre"  id="empty_ans">';
echo '</div>';
echo '</div>';

}
else if($current_q==105 && $bonus==0)
{
echo '<div style="position:relative;background-image:url(images/path2.png);background-repeat:no-repeat;background-size:contain;height:600px;width:800px;">';
echo '<button style="color:white;position:absolute;top:310px;left:430px;font-size:14pt;" id="path6" class="pathbtn" onclick="path(6)">Path 6</button>';
echo '<div align="centre"  id="empty_ans">';
echo '</div>';
echo '</div>';

}
else if($current_q==106 && $bonus==0)
{
echo '<div style="position:relative;background-image:url(images/path1.png);background-repeat:no-repeat;background-size:contain;height:600px;width:800px;">';
echo '<button style="color:white;position:absolute;top:350px;left:432px;font-size:12pt;" id="path3" class="pathbtn" onclick="path(3)">Path 3</button>';
echo '<div align="centre"  id="empty_ans">';
echo '</div>';
echo '</div>';

}
else if($current_q==107 && $bonus==0)
{
echo '<div style="position:relative;background-image:url(images/path2.png);background-repeat:no-repeat;background-size:contain;height:600px;width:800px;">';
echo '<button style="color:white;position:absolute;top:310px;left:430px;font-size:14pt;" id="path6" class="pathbtn" onclick="path(6)">Path 6</button>';
echo '<div align="centre"  id="empty_ans">';
echo '</div>';
echo '</div>';

}

else if($current_q==1000 && $bonus==0)
{
// Won the OTH
echo '<img style="margin-left:180px;margin-right:auto;display:block;" src="images/completed.gif" /><br><br><br><br><br>';


}
else if($bonus==0 )
{

echo '<div align="centre" style="background-image:url(images/questionsbg.jpg);background-repeat:no-repeat;height:600px;width:800px; -webkit-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px;">
<br><br><br>';
/* if($path==1 && ($current_q>=61 && $current_q<=63) )
echo '<h1 class="path">'.'You are on  Path'.'</h1>';
if($path==2 && ($current_q>=61 && $current_q<=63))
echo '<h1 class="path">'.'You are on  Path'.'</h1>';
if($path==3 && ($current_q>=61 && $current_q<=63))
echo '<h1 class="path">'.'You are on  Path'.'</h1>';
if($path==4 && ($current_q>=64 && $current_q<=66))
echo '<h1 class="path">'.'You are on  Path'.'</h1>';
if($path==5 && ($current_q>=64 && $current_q<=66))
echo '<h1 class="path">'.'You are on  Path'.'</h1>';
if($path==6 && ($current_q>=64 && $current_q<=66))
echo '<h1 class="path">'.'You are on  Path'.'</h1>';
if($path==7 && $current_q==67)
echo '<h1 class="path">'.'You are on  Path'.'</h1>';
if($path==8 && $current_q==68)
echo '<h1 class="path">'.'You are on  Path'.'</h1>'; */
/*if($current_q==1)
echo '<h1 class="path">'.''.'</h1>';
*/

echo '<img width="530px" height="280px;" style="margin-left:auto;margin-right:auto;display:block;" src="images/'.$q.'" /><br>';
echo '<input style="margin-left:210px;margin-right:auto;display:inline-block;" placeholder="Enter your answer" type="text" id="ans" class="vasplus_blog_form_opt" onkeypress="searchKeyPress(event);" /><div style="display:inline-block;width:48px;" id="loading"></div> <br>';
echo '<div style="margin-left:310px;margin-right:auto;display:block;margin-top:10px;"  id="empty_ans">';
echo '</div>';
echo '<button  id="submit_ans" style="margin-left:auto;margin-right:auto;display:block;margin-top:50px;" class="btn" onclick="submit_ans('.$current_q.');">Submit</button><br>';
if($bonuscount==1 && $skipcount>0)
{

echo '<button  style="margin-left:300px;margin-right:auto;display:block;" class="btn" onclick="skip_question('.$current_q.');">Skip</button><br><br><br>';
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