<?php
error_reporting(E_ERROR);
define ('hostnameorservername','localhost'); //Your server name or hostname goes in here
define ('serverusername','riteshp'); //Your database username goes in here
define ('serverpassword','adsftr$67');  //Your database password goes in here
define ('databasenamed','oth2014');  //Your database name goes in here

global $connection;
$con = mysqli_connect(hostnameorservername,serverusername,serverpassword,databasenamed) or die(mysqli_error($con));
?>
