<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/validation.js">
	
</script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<body>

<h1 style="color : blue">Student Registration From</h1>
<%
if(request.getAttribute("msg")!=null)
{
out.println(request.getAttribute("msg"));	
}
%>
	<form name="frm" method="post" action="StudentController">
		<table>

			<tr>
				<td>First name</td>
				<td><input type="text" name="fname" onblur="checkFname();"></td>
				<td><span id="fname"></span></td>
			</tr>

			<tr>
				<td>Last name</td>
				<td><input type="text" name="lname" onblur="checkLname();"></td>
				<td><span id="lname"></span></td>
			</tr>

			<tr>
				<td>Email</td>
				<td><input type="text" name="email" onblur="checkEmail();"></td>
				<td><span id="email"></span></td>
			</tr>

			<tr>
				<td>Mobile</td>
				<td><input type="text" name="mobile" onblur="checkMobile();"></td>
				<td><span id="mobile"></span></td>
			</tr>
			<tr>
				<td>Address</td>
				<td><input type="text" name="address" onblur="checkAddress();"></td>
				<td><span id="address"></span></td>
			</tr>

			<tr>
				<td>Password</td>
				<td><input type="text" name="password"
					onblur="checkPassword();"></td>
				<td><span id="password"></span></td>
			</tr>

			<tr>
				<td>Cpassword</td>
				<td><input type="text" name="cpassword"
					onblur="checkCpassword();"></td>
				<td><span id="cpassword"></span></td>
			</tr>
			<tr>
				
				<td colspan = "2" align = "Center">
				<input type="submit" name="action" value="INSERT">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>