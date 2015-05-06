<?php
error_reporting(E_ERROR);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>IEEE VESIT OTH | Login</title>
<!-- Required header files -->
<script type="text/javascript" src="js/jquery_1.5.2.js"></script>
<script type="text/javascript" src="js/vpb_save_details.js"></script>
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
<link href="css/style.css" rel="stylesheet" type="text/css">
<style>
@font-face {
font-family:'treasure';
src:url(css/Treamd.ttf);
}
.heading {
margin-top:-7px;;
   font-family:treasure;
   font-size:60pt;
  color:#ccac00;
}

</style>
</style>
</head>
<body style="background-image:url('images/mainbg.png');background-repeat:no-repeat;background-size:cover;">

<img style="width:202px;height:202px;" src="images/logobg.png" />

<center>
<img style="margin-top:-190px;" width="600px" height="178px"src="images/banner.png" /><br><br><br><br><br>
<div style="margin-top:-5em;background-image:url('images/loginbg.png');background-repeat:no-repeat;width:696px;height:900px;" >


<<br><br><br><br><br><br><br><br>
<h1 style="font-family:treasure;font-size:48pt;">Login to begin!</h1>
<br><br>
<input placeholder="Enter your E-mail" type="text" id="email" class="vasplus_blog_form_opt" /><br clear="all"><br clear="all">
<input placeholder="Enter your password" type="password" id="passwd" class="vasplus_blog_form_opt" /><br clear="all"><br clear="all">
<div id="login_status"></div>
<button class="btn" href="javascript:void(0);" onclick="vpb_users_login();" >Begin</button><br><br>
<button class="btn" onclick="window.open('signup.php','_self')">Sign Up</button><br clear="all">
</div>
</center>
</body>
</html>