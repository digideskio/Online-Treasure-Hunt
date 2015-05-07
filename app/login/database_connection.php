<?php
error_reporting(E_ERROR);
define ('hostnameorservername',''); //Your server name or hostname goes in here
define ('serverusername',''); //Your database username goes in here
define ('serverpassword','');  //Your database password goes in here
define ('databasenamed','');  //Your database name goes in here

global $connection;
$con = mysqli_connect(hostnameorservername,serverusername,serverpassword,databasenamed) or die(mysqli_error($con));
?>
