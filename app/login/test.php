<!DOCTYPE html>
<html>
<head>
	<title>Bonus</title>
	<script>
		<?php
			$current_time=time();
			$stop_time=strtotime("today 8:55");
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
			    }
			}
			xmlhttp.open("GET","test1.php",true);
			xmlhttp.send();
		},'.$dif.');';
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
		},0);';
			$current_time=time();
			$stop_time=$stop_time + 120;
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
			    }
			}
			xmlhttp.open("GET","test1.php",true);
			xmlhttp.send();
		},'.$dif.');';
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
		},0);'
		?>
	</script>
</head>
<body>
<img src="images/map.png">
<div style="position:fixed;bottom:0pc;right:0px;" id="fixed">
</div>
<script type="text/javascript">
	flag=false;
	function bonus () {
		flag = !flag;
		if(flag)
		{
			document.getElementById("warn").style.visibility="visible";
		}
		else
		{
			window.location.assign("fluke.php");
		}
	}
</script>
</body>
</html>