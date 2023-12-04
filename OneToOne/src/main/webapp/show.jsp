

<%@page import="com.dao.EmployeeDao"%>
<%@page import="com.bean.Employee"%>
<%@page import="java.util.List"%>
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

<table>
<tr>
<th>EPID</th>
<th>FIRST NAME</th>
<th>LAST NAME</th>
<th>EMAIL</th>
<th>EID</th>
<th>UNAME</th>
<th>PASSWORD</th>
<th>EDIT</th>
<th>DELETE</th>
</tr>
<%
List<Employee> list=EmployeeDao.getAllEmployee();
for(Employee e:list)
{
%>
<tr>
<td><%=e.getEpid().getEpid()%></td>
<td><%=e.getEpid().getFname()%></td>
<td><%=e.getEpid().getLname()%></td>
<td><%=e.getEpid().getEmail()%></td>
<td><%=e.getEid()%></td>
<td><%=e.getUname()%></td>
<td><%=e.getPassword()%></td>
<td>
<form name="edit" method="post" action="EmployeeController">
<input type="hidden" name="eid" value="<%=e.getEid()%>">

<input type="submit" name="action" value="EDIT" class="btn btn-primary">
</form>
</td>

<td>
<form name="delete" method="post" action="EmployeeController">
<input type="hidden" name="eid" value="<%=e.getEid()%>">
<input type="submit" name="action" value="DELETE" class="btn btn-danger">
</form>
</td>


</tr>
<% 
	}
%>
</table>
<a href="index.jsp">Add New Employee</a>
</body>
</html>