 <%@page import="com.bean.Student"%>
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
Student s=(Student)request.getAttribute("s");
%>
<form method="post" value="submit" action="StudentController">
<table>
<input type="hidden" name="id" value="<%=s.getId()%>">
<tr>
<td>First Name</td>
<td><input type="text" name="fname" value="<%=s.getFname()%>"></td>
</tr>
<tr>
<td>Last Name</td>
<td><input type="text" name="lname" value="<%=s.getLname()%>"></td>
</tr>
<tr>
<td>Email</td>
<td><input type="text" name="email" value="<%=s.getEmail()%>"></td>
</tr>
<tr>
<td>Mobile</td>
<td><input type="text" name="mobile" value="<%=s.getMobile()%>"></td>
</tr>
<tr>
<td>Address</td>
<td><textarea rows="5" cols="22" name="address"><%=s.getAddress()%></textarea></td>
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