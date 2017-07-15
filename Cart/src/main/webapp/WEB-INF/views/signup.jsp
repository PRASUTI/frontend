<!DOCTYPE html>
<html lang="en">
<head>
  <title>SignUp</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script type="text/javascript">
  
  function formRegister() {
		// Make quick references to our fields
		
		var username = document.getElementById('username');
		var email = document.getElementById('email');
		var password = document.getElementById('pass');
		var phone = document.getElementById('contactnumber');
		var address = document.getElementById('address');
		var zipcode = document.getElementById('zipcode');
		// Check each input in the order that it appears in the form!
		
					if (notEmpty(username, "Username Should not be empty")) {
							if (isAlphabet(username,
									"Please enter only letters for Username")) {
								if (notEmpty(email,
								"EmailId Should not be empty")) {
									if(emailValidator(email, "Please Enter a valid Email id")){
								if (notEmpty(password,
										"password Should not be empty")) {
									if (isAlphanumeric(password,
											"Numbers and Letters Only for Passwords")) {
										if (notEmpty(phone,
												"PhoneNumber Should not be empty")) {
											if (isNumeric(phone,
													"Please enter only number for PhoneNumber")) {
												
													if (notEmpty(address,
															"Address Should not be empty")) {
														if (notEmpty(zipcode,
																"Zipcode Should not be empty")) {
															if (isNumeric(
																	zipcode,
																	"Please enter a valid zip code")) {
																return true;
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
  }
		return false;
	}
  
  function notEmpty(elem, helperMsg) {
		if (elem.value.length == 0) {
			alert(helperMsg);
			elem.focus(); // set the focus to this input
			return false;
		}
		return true;
	}
  
	function isNumeric(elem, helperMsg) {
		var numericExpression = /^[0-9]+$/;
		if (elem.value.match(numericExpression)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	function isAlphabet(elem, helperMsg) {
		var alphaExp = /^[a-z A-Z]+$/;
		if (elem.value.match(alphaExp)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	function isAlphanumeric(elem, helperMsg) {
		var alphaExp = /^[0-9a-zA-Z]+$/;
		if (elem.value.match(alphaExp)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	function emailValidator(elem, helperMsg) {
		var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
		if (elem.value.match(emailExp)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
  
	
  </script>
  
  <style>

form {
    border: 3px solid #f1f1f1;
}

input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
}

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

img.avatar {
    width: 15%;
    border-radius: 50%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
</style>
</head>
<body>


  <form action="newUser" method="post" onsubmit="return formRegister()" class="form-horizontal">
  <center><h1><b>Signup Form</b></h1></center>
    <div class="container">
<div class="container">
    <label><b>Username</b></label>
    <input type="text" id="username" name="username" placeholder="Create a username"  class="form-control">
	
	<label><b>Email</b></label>
    <input type="text" id="email" name="email" placeholder="Enter email id">
	
	<label><b>Password</b></label>
    <input type="password" id="pass" name="password" placeholder="Enter password">
    
    <label><b>Contact Number</b></label>
    <input type="text" id="contactnumber" name="mobile" placeholder="Enter contactnumber">

    <label><b>Address</b></label>
    <input type="text" id="address" name="address" placeholder="Enter Address">
    
     <label><b>Zipcode</b></label>
    <input type="text" id="zipcode" name="zipcode" placeholder="Enter zipcode">
       
    <div class="clearfix">
     
       <button type="button" class="cancelbtn">Cancel</button>
        <button type="submit" class="signupbtn">Sign Up</button>
      </div>
   </div>
    </div>
    </form>
    </body>
</html>

































<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Signup</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
function formRegister() {
	// Make quick references to our fields
	
	var username = document.getElementById('username');
	var phone = document.getElementById('mobile');
	var address = document.getElementById('address');
	var email = document.getElementById('email');
	var password = document.getElementById('password');	
	
	/* var zipcode = document.getElementById('zipcode'); */
	// Check each input in the order that it appears in the form!
	
				if (notEmpty(username, "Username Should not be empty")) {
						if (isAlphabet(username,
								"Please enter only letters for Username")) {
							if (notEmpty(mobile,
							"MobileNumber Should not be empty")) {
						if (isNumeric(mobile,
								"Please enter only number for MobileNumber")) {
							if (notEmpty(address,
							"Address Should not be empty")) {
							if (notEmpty(email,
							"EmailId Should not be empty")) {
								if(emailValidator(email, "Please Enter a valid Email id")){
							if (notEmpty(password,
									"Password Should not be empty")) {
								if (isAlphanumeric(password,
										"Numbers and Letters Only for Passwords")) {

															return true;
														
													}
												}
											}
										}
									}
								}
							}
						}
	return false;
	
	}

function notEmpty(elem, helperMsg) {
	if (elem.value.length == 0) {
		alert(helperMsg);
		elem.focus(); // set the focus to this input
		return false;
	}
	return true;
}

function isNumeric(elem, helperMsg) {
	var numericExpression = /^[0-9]+$/;
	if (elem.value.match(numericExpression)) {
		return true;
	} else {
		alert(helperMsg);
		elem.focus();
		return false;
	}
}
function isAlphabet(elem, helperMsg) {
	var alphaExp = /^[a-z A-Z]+$/;
	if (elem.value.match(alphaExp)) {
		return true;
	} else {
		alert(helperMsg);
		elem.focus();
		return false;
	}
}
function isAlphanumeric(elem, helperMsg) {
	var alphaExp = /^[0-9a-zA-Z]+$/;
	if (elem.value.match(alphaExp)) {
		return true;
	} else {
		alert(helperMsg);
		elem.focus();
		return false;
	}
}
function emailValidator(elem, helperMsg) {
	var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
	if (elem.value.match(emailExp)) {
		return true;
	} else {
		alert(helperMsg);
		elem.focus();
		return false;
	}
}


</script>
<style>

form {
    border: 3px solid #f1f1f1;
}

input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
}

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

img.avatar {
    width: 15%;
    border-radius: 50%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
</style>
</head>

<body>
<center><h2>Signup Form</h2></center>

<form action="newUser" method="post" onsubmit="return formRegister()" style="border:1px solid #ccc">
<div class="container">
  <div class="container">
    <label><b>Username</b></label>
    <input type="text" id="username" name="username" placeholder="Create a username"  class="form-control">
	
	<label><b>Mobile Number</b></label>
    <input type="text" id="mobile" name="mobile" placeholder="Enter Mobile Number">
	
	<label><b>Address</b></label>
    <input type="text" id="address" name="address" placeholder="Enter Address">
    
    <label><b>Email</b></label>
    <input type="text" id="email" name="email" placeholder="Enter Email">

    <label><b>Password</b></label>
    <input type="password" id="password" name="password" placeholder="Enter Password">

  <!--   <label><b>Repeat Password</b></label>
    <input type="password" placeholder="Repeat Password" name="password-repeat">
    <input type="checkbox" checked="checked"> Remember me
    <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>
 -->
    <div class="clearfix">
      <button type="button" class="cancelbtn">Cancel</button>
      <button type="submit" class="signupbtn">Sign Up</button>
    </div>
  </div>
</form>

</body>
</html> --%>