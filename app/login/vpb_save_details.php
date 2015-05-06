<?php
error_reporting(E_ERROR);
session_start();
include "database_connection.php";


if(isset($_POST["page"]) && !empty($_POST["page"]))
{
	//Sign-up Page Starts here
	if($_POST["page"] == "users_registration")
	{
		$firstname = trim(strip_tags($_POST['firstname']));
		$lastname = trim(strip_tags($_POST['lastname']));
		$user_email = trim(strip_tags($_POST['email']));
		$username = trim(strip_tags($_POST['username']));
		$user_password = trim(strip_tags($_POST['passwd']));
		$mobile = trim(strip_tags($_POST['mobile']));
		$year = trim(strip_tags($_POST['year']));
		$encrypted_md5_password = md5($user_password);
		
		$check_for_duplicates = mysqli_query($con,"select * from `login` where `email` = '".mysqli_real_escape_string($con,$user_email)."'");
		
		if($firstname == "" || $lastname == "" || $user_email == "" || $user_password == "" || $username=="" || $mobile=="" || $year=="")
		{
			echo '<br><div class="info">Sorry, all fields are required to create a new account. Thanks.</div><br>';
		}
		elseif(!preg_match("/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$/", $user_email))
		{
			echo '<div class="info">Sorry, Your email address is invalid.</div>';
		}
		else if(mysqli_num_rows($check_for_duplicates) > 0)
		{
			echo '<div class="info">Sorry, user with this email/username already exist in our database.</div>';
		}
		else
		{
			if(mysqli_query($con,"insert into login(firstname,lastname,username,email,password,date,current_q,timestamp,mobile,year) values('".mysqli_real_escape_string($con,$firstname)."', '".mysqli_real_escape_string($con,$lastname)."', '".mysqli_real_escape_string($con,$username)."', '".mysqli_real_escape_string($con,$user_email)."', '".mysqli_real_escape_string($con,$encrypted_md5_password)."', '".mysqli_real_escape_string($con,date('d-m-Y'))."',1,'".mysqli_real_escape_string($con, time())."','".mysqli_real_escape_string($con, $mobile)."','".mysqli_real_escape_string($con, $year)."')")or die(mysqli_error($con)))
			{
				$_SESSION["VALID_USER_ID"] = $user_email;
				$_SESSION["VALID_USERNAME"] = $username;
				$_SESSION["USER_FULLNAME"] = strip_tags($firstname.'&nbsp;'.$lastname);
				echo 'index.php?uid='.$_SESSION["USER_FULLNAME"].'&';
				echo 'registered_successfully=yes';
				
			}
			else
			{
				echo '<div class="info">Sorry, your account could not be created at the moment.</div>';
			}
		}
	}
	//Sign-up Page Ends here
	
	
	//Login Page Starts here
	elseif($_POST["page"] == "users_login") 
	{
		$user_email = trim(strip_tags($_POST['email']));
		$user_password = trim(strip_tags($_POST['passwd']));
		$encrypted_md5_password = md5($user_password);
		
		$validate_user_information = mysqli_query($con,"select * from `login` where `email` = '".mysqli_real_escape_string($con,$user_email)."' and `password` = '".mysqli_real_escape_string($con,$encrypted_md5_password)."'");
		
		if(mysqli_num_rows($validate_user_information) == 1)
		{
			$get_user_information = mysqli_fetch_array($validate_user_information);
			$_SESSION["VALID_USER_ID"] = $user_email;
			$_SESSION["USER_FULLNAME"] = strip_tags($get_user_information["firstname"].'&nbsp;'.$get_user_information["lastname"]);
			echo 'index.php?uid='.$_SESSION["USER_FULLNAME"].'&';
			echo 'login_process_completed_successfully=yes';
		}
		else
		{
			echo '<div class="info">Invalid E-mail/Password</div>';
		}
	}
	//Login Page Ends here
}
?>