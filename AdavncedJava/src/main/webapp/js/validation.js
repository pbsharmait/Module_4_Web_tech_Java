function checkFname() {
		var f = document.frm.fname.value;
		var reg = /^[A-Za-z]+$/
		if (f == "") {
			//alert("Please Enter First Name");
			document.getElementById("fname").innerHTML = "Please Enter First Name";
		} 
		else if (!reg.test(f))
		{
		document.getElementById("fname").innerHTML = "Please Enter Only Alphabets";
		}
		else {
			document.getElementById("fname").innerHTML = "";

		}
	}

	function checkLname() {
		var f = document.frm.lname.value;
		var reg = /^[A-Za-z]+$/
		if (f == "") {
			//alert("Please Enter First Name");
			document.getElementById("lname").innerHTML = "Please Enter Last Name";
		} 
		else if (!reg.test(f))
			{
			document.getElementById("lname").innerHTML = "Please Enter Only Alphabets";
			}
		else {
			document.getElementById("lname").innerHTML = "";

		}
	}

	function checkEmail() {
		var f = document.frm.email.value;
		var reg = /^[A-Za-z0-9-_.]+@[A-Za-z]+\.[A-Za-z]{2,4}$/
		if (f == "") {
			//alert("Please Enter First Name");
			document.getElementById("email").innerHTML = "Please Enter Email Id";
		}
		else if (!reg.test(f))
		{
		document.getElementById("email").innerHTML = "Please Enter Valid Email";
		}
		else {
			document.getElementById("email").innerHTML = "";

		}
	}

	function checkMobile() {
		var f = document.frm.mobile.value;
		var reg = /^\d{10}$/
		if (f == "") {
			//alert("Please Enter First Name");
			document.getElementById("mobile").innerHTML = "Please Enter Mobile Number";
		} 
		else if (!reg.test(f))
		{
		document.getElementById("mobile").innerHTML = "Please Enter Only Number";
		}
		else {
			document.getElementById("mobile").innerHTML = "";

		}
	}

	function checkPassword() {
		var f = document.frm.password.value;
		var reg = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}$/;
		if (f == "") {
			//alert("Please Enter First Name");
			document.getElementById("password").innerHTML = "Please Enter Password";
		}
		else if (!reg.test(f))
		{
		document.getElementById("password").innerHTML = "Min 1 Upper & Lower special & Number (8-15)";
		}
		else {
			document.getElementById("password").innerHTML = "";

		}
	}

	function checkCpassword() {
		var f1 = document.frm.cpassword.value;
		var f2 = document.frm.password.value;
		if (f1== "") {
			//alert("Please Enter First Name");
			document.getElementById("cpassword").innerHTML = "Please Enter Cpassword";
		} 
		else if (f1!=f2)
		{
		document.getElementById("cpassword").innerHTML = "Password does not matched";
		}
		else {
			document.getElementById("cpassword").innerHTML = "";

		}
	}