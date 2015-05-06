/********************************************************************************************************************
* This script is brought to you by Vasplus Programming Blog by whom all copyrights are reserved.
* Website: www.vasplus.info
* Email: info@vasplus.info
* Please, do not remove this information from the top of this page.
*********************************************************************************************************************/



function vpb_users_registration() 
{
	var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
	var mobile_reg= /^([0|\+[0-9]{1,5})?([7-9][0-9]{9})$/;
	var vpb_firstname = $("#firstname").val();
	var vpb_lastname = $("#lastname").val();
	var vpb_email = $("#email").val();
	var vpb_passwd = $("#passwd").val();
	var username =$("#username").val();
	var mobile = $("#mobile").val();
	var year = $("#year").val();
	if(vpb_firstname == "")
	{
		$("#signup_status").html('<div class="info">Please enter your firstname in the required field to proceed.</div>');
		$("#firstname").focus();
	}
	else if(vpb_lastname == "")
	{
		$("#signup_status").html('<div class="info">Please enter your lastname to proceed.</div>');
		$("#lastname").focus();
	}
	else if(username == "")
	{
		$("#signup_status").html('<div class="info">Please enter an username in the required field to proceed.</div>');
		$("#username").focus();
	}
	else if(vpb_email == "")
	{
		$("#signup_status").html('<div class="info">Please enter your email address to proceed.</div>');
		$("#email").focus();
	}
	else if(reg.test(vpb_email) == false)
	{
		$("#signup_status").html('<div class="info">Please enter a valid email address to proceed.</div>');
		$("#email").focus();
	}
	else if(mobile == "")
	{
		$("#signup_status").html('<div class="info">Please enter your Mobile Number to proceed.</div>');
		$("#mobile").focus();
	}
	else if(mobile_reg.test(mobile) == false)
	{
		$("#signup_status").html('<div class="info">Please enter a valid Mobile Number to proceed.</div>');
		$("#mobile").focus();
	}
	else if(year=="Please choose a year") {
		$("#signup_status").html('<div class="info">Please choose a year in which you belong.</div>');
		$("#year").focus();
	}
	else if(vpb_passwd == "")
	{
		$("#signup_status").html('<div class="info">Please enter your desired password to go.</div>');
		$("#passwd").focus();
	}
	else
	{
		
		var dataString = 'firstname='+ vpb_firstname + '&lastname=' + vpb_lastname + '&username=' + username + '&email=' + vpb_email + '&passwd=' + vpb_passwd + '&page=users_registration' + '&year=' + year + '&mobile=' + mobile;
		$.ajax({
			type: "POST",
			url: "vpb_save_details.php",
			data: dataString,
			cache: false,
			beforeSend: function() 
			{
				$("#signup_status").html('<img width="48px" height="48px" src="images/loadings.gif" align="absmiddle" />');
			},
			success: function(response)
			{
				var response_brought = response.indexOf('registered_successfully=yes');
				if (response_brought != -1) 
				{
					$("#signup_status").html('');
					window.location.replace(response);
				}
				else
				{
					$("#signup_status").fadeIn(1000).html(response);
				}
			}
		});
	}
}

function vpb_users_login() 
{
	var vpb_email = $("#email").val();
	var vpb_passwd = $("#passwd").val();
	
	if(vpb_email == "")
	{
		$("#login_status").html('<div class="info">Please enter your account email address to proceed.</div>');
		$("#email").focus();
	}
	else if(vpb_passwd == "")
	{
		$("#login_status").html('<div class="info">Please enter your account password to go.</div>');
		$("#passwd").focus();
	}
	else
	{
		var dataString = 'email=' + vpb_email + '&passwd=' + vpb_passwd + '&page=users_login';
		$.ajax({
			type: "POST",
			url: "vpb_save_details.php",
			data: dataString,
			cache: false,
			beforeSend: function() 
			{
				$("#login_status").html('<img width="48px" height="48px" src="images/loadings.gif" align="absmiddle"/></div>');
			},
			success: function(response)
			{
				var response_brought = response.indexOf('login_process_completed_successfully=yes');
				if (response_brought != -1) 
				{
					$("#login_status").html('');
					window.location.replace(response);
				}
				else
				{
					$("#login_status").fadeIn(1000).html(response);
				}
			}
		});
	}
}
function submit_ans(current_q) {
	var ans = $("#ans").val();
	if(ans == "")
	{
		$("#empty_ans").html('<div class="info">Please enter some answer</div>');
		$("#ans").focus();
	}
	else
	{
		var dataString = 'ans=' + ans + '&current_q=' + current_q;
		$.ajax({
			type: "POST",
			url: "ans_check.php",
			data: dataString,
			cache: false,
		beforeSend: function() 
			{
				$("#loading").html('<img width="48px" height="48px" src="images/loadings.gif" align="absmiddle"/>');
			},
			success: function(response)
			{
				
				if (response=="Correct Answer") 
				{
					$("#loading").html('');
					$("#empty_ans").html('<div class="info">Correct Answer</div>');
					location.reload();
					
				}
				if (response=="Wrong Answer") 
				{
					$("#loading").html('');
					$("#empty_ans").html('<div class="info">Wrong Answer</div>');
				}
	
			}
		});	
	}		
} 
function submit_bonus(bonus_q) {
	var ans = $("#ans").val();
	if(ans == "")
	{
		$("#empty_ans").html('<div class="info">Please enter some answer</div>');
		$("#ans").focus();
	}
	else
	{
		var dataString = 'ans=' + ans + '&bonus_q=' + bonus_q;
		$.ajax({
			type: "POST",
			url: "ans_bonus.php",
			data: dataString,
			cache: false,
		beforeSend: function() 
			{
				$("#empty_ans").html('<img style="margin-left:auto;margin-right:auto;display:block;" width="48px" height="48px" src="images/loadings.gif" align="absmiddle"/>');
			},
			success: function(response)
			{
				
				if (response=="Correct Answer") 
				{
					$("#empty_ans").html('<div class="info">Correct Answer</div>');
					location.reload();
					
				}
				else if (response=="Wrong Answer") 
				{
					$("#empty_ans").html('<div class="info">Wrong Answer</div>');
				}
				else if (response=="ended") 
				{
				
					location.reload();
				}
			}
		});	
	}		
} 
function path(p) {

		var dataString = 'path=' + p;
		$.ajax({
			type: "POST",
			url: "insert_path.php",
			data: dataString,
			cache: false,
		beforeSend: function() 
			{
				$("#empty_ans").html('<img style="margin-left:auto;margin-right:auto;display:block;" width="48px" height="48px" src="images/loadings.gif" align="absmiddle"/>');
			},
			success: function(response)
			{
				
				if (response=="Successful") 
				{
			
					location.reload();
					
				}
				if (response=="Unsuccessful") 
				{
					location.reload();
				}
				
			}
		});	
			
} 

function skip_question(current_q) {

		var dataString = 'current_q=' + current_q;
		$.ajax({
			type: "POST",
			url: "skip.php",
			data: dataString,
			cache: false,
		beforeSend: function() 
			{
				$("#empty_ans").html('<img style="margin-left:auto;margin-right:auto;display:block;" width="48px" height="48px" src="images/loadings.gif" align="absmiddle"/>');
			},
			success: function(response)
			{
				
				if (response=="1" || response=="0" ) 
				{
				location.reload();
				}

		
			}
		});	
			
}
