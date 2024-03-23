<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<link rel="stylesheet" type="text/css" href="/student-management/URLToReachResourcesFolder/css/add-student.css">
<link rel="stylesheet" type="text/css" href="/student-management/URLToReachResourcesFolder/css/my-style-sheet.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>

<body>

<div align="center">

<h1>Add Student</h1>

<form:form action="save-student" modelAttribute="student" method="POST">

<form:hidden path="id"/>

<label>Name: </label>
<form:input path="name"/>

<br/><br/>

<label>Mobile: </label>
<form:input path="mobile"/>

<br/><br/>

<label>Country: </label>
<form:input path="country"/>

<br/><br/>

<input type="submit" value="Submit">
</form:form>
</div>
</body>
</html>