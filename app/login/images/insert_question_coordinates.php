<?php
error_reporting(E_ERROR);
include "database_connection.php";
/*
for($i=1;$i<=10;$i++)
$sql = mysqli_query($con,"insert into questions(question,answer) values('','') where question_id='".$i."'");
for($i=61;$i<=76;$i++)
$sql = mysqli_query($con,"insert into questions(question,answer) values('','') where question_id='".$i."'");
for($i=11;$i<=35;$i++)
$sql = mysqli_query($con,"insert into questions(question,answer) values('','') where question_id='".$i."'"); */
$result = mysqli_query($con,"update login set current_q=101 where email='riteshppanjwani@gmail.com'");
if($result)
echo 'Success';

?>