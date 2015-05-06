<?php
include "database_connection.php";
?>
<html>
<head>
<title></title>
<style>
	.mapPanel {
	  border: 1px dotted blue;
	  width: 70%;
	  height: auto;
	  position: relative;
	  margin-left: auto;
	  margin-right: auto;
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
	  
	  }
	.container{
	   position: absolute;
	   bottom:0px;
	   width: 100%;
	}
</style>
</head>
<body>
	<div class="container">
		<div class="mapPanel">
		  <img src="images/map.png"/>
		  <?php
		  $result = mysqli_query($con,"Select * from questions");
		  while($row = mysqli_fetch_array($result))
		  {
		  	$y = $row["y"] - 2;
		  echo '<span class="flag" style="top:'.$y.'%;left:'.$row["x"].'%;"></span>';
		  }
		  ?>
		</div>
	</div>

</body>
</html>