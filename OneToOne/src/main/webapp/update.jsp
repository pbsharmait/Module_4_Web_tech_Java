 
<%@page import="com.bean.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<style type="text/css">
tr,td{
padding: 10px;
}
</style>
</head>
<body>
<%
Employee e=(Employee)request.getAttribute("e");
%>
<form method="post" value="submit" action="EmployeeController">
<table>
<input type="hidden" name="eid" value="<%=e.getEid()%>">
<tr>
<td>First Name</td>
<td><input type="text" name="fname" value="<%=e.getEpid().getFname()%>"></td>
</tr>
<tr>
<td>Last Name</td>
<td><input type="text" name="lname" value="<%=e.getEpid().getLname()%>"></td>
</tr>
<tr>
<td>Email</td>
<td><input type="text" name="email" value="<%=e.getEpid().getEmail()%>"></td>
</tr>
<tr>
<td>User Lame</td>
<td><input type="text" name="uname" value="<%=e.getUname()%>"></td>
</tr>
<tr>
<td>Password</td>
<td><input type="password" name="password" value="<%=e.getPassword()%>"></td>
</tr>

<tr>
<td colspan="2" align="center">
<input type="submit" name="action" value="UPDATE" class="btn btn-primary">
</td>
</tr>
</table>
</form>

</body>
</html>