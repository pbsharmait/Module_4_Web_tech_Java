<%@page import="com.bean.student"%>
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
student s=(student)request.getAttribute("s");
if(request.getAttribute("msg")!=null)
{
out.println(request.getAttribute("msg"));	
}
%>
	<form name="frm" method="post" action="StudentController">
		<table>
<input type="hidden" name="id" value="<%=s.getId()%>">
			<tr>
				<td>First name</td>
				<td><input type="text" name="fname" onblur="checkFname();"value="<%=s.getFname()%>"></td>
				<td><span id="fname"></span></td>
			</tr>

			<tr>
				<td>Last name</td>
				<td><input type="text" name="lname" onblur="checkLname();" value="<%=s.getLname()%>"></td>
				<td><span id="lname"></span></td>
			</tr>

			<tr>
				<td>Email</td>
				<td><input type="text" name="email" onblur="checkEmail();" value="<%=s.getEmail()%>"></td>
				<td><span id="email"></span></td>
			</tr>

			<tr>
				<td>Mobile</td>
				<td><input type="text" name="mobile" onblur="checkMobile();" value="<%=s.getMobile()%>"></td>
				<td><span id="mobile"></span></td>
			</tr>
			<tr>
				<td>Address</td>
				<td><input type="text" name="address" onblur="checkAddress();" value="<%=s.getAddress()%>"></td>
				<td><span id="address"></span></td>
			</tr>

			<tr>
				<td>Password</td>
				<td><input type="text" name="password"
					onblur="checkPassword();" value="<%=s.getPassword()%>"></td>
				<td><span id="password"></span></td>
			</tr>

			
			<tr>
				
				<td colspan = "2" align = "Center">
				<input type="submit" name="action" value="update">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>