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
<form method="post"  action="DeptController">
<table>

<tr>
<td>Dept Name</td>
<td><input type="text" name="dname"></td>
</tr>
<tr>
<td>Dept Loc</td>
<td><input type="text" name="loc"></td>
</tr>
<tr>
<td>First Name</td>
<td><input type="text" name="fname"></td>
</tr>
<tr>
<td>Last Name </td>
<td><input type="text" name="lname"></td>
</tr>
<tr>
<td>Email</td>
<td><input type="text" name="email"></td>
</tr>
<tr>
<td colspan="2" align="center">
<input type="submit" name="action" value="insert" class="btn btn-primary">
</td>
</tr>
</table>
</form>
<a href="show.jsp">Show All Employee</a>
</body>
</html>