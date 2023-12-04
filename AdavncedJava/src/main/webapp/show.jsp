<%@page import="com.dao.Studentdao"%>
<%@page import="com.bean.student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<table border="1" width="100%" cellpadding="10px" cellspacing="10px">
<tr>
<th>ID</th>
<th>FIRST NAME</th>
<th>LAST NANE</th>
<th>EMAIL</th>
<th>MOBILE</th>
<th>ADDRESS</th>
<th>PASSWORD</th>
</tr>
<%
List <student> list=Studentdao.getALLStudent();
for(student s:list )
{
%>
<tr>
<td><%=s.getId() %></td>
<td><%=s.getFname() %></td>
<td><%=s.getLname() %></td>
<td><%=s.getEmail() %></td>
<td><%=s.getMobile() %></td>
<td><%=s.getAddress() %></td>
<td><%=s.getPassword() %></td>
<td>

<form name="edit" method="post" action="studentcontroller">

<input type="hidden" name="id" value="<%=s.getId()%>">
<input type="submit" name="action" value="edit" class="btn btn-primary">


</form>

<form name="delete" method="post" action="studentcontroller">

<input type="hidden" name="id" value="<%=s.getId()%>">
<input type="submit" name="action" value="delete" class="btn btn-denger">


</form>


</td>

</tr>
<% 	
}
%>

</table>
</body>
</html>