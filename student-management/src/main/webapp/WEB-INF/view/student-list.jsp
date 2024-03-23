<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/student-management/URLToReachResourcesFolder/css/my-style-sheet.css">
</head>


<body class="myFonts">



<div class="container">

<h1 align="center">Student List</h1>

<form action="/student-management/showAddStudentPage">

<input type="submit" value="Add" class="btn btn-success">

</form>
<br>
<table border="1" class="table table-striped">
<thead>
<tr>
<td>id</td>
<td>name</td>
<td>mobile</td>
<td>country</td>
</tr>
</thead>
<c:forEach var="student" items="${students}">
<tr>
        <td>${student.id}</td>
        <td>${student.name}</td>
        <td>${student.mobile}</td>
        <td>${student.country}</td>
        <td><a href="/student-management/updateStudent?userId=${student.id}">Update</a></td>
        <td><a href="/student-management/deleteStudent?userId=${student.id}" onclick="if(!(confirm('Are you sure you want to delete this student ?'))) return false">Delete</a></td>
</tr>
</c:forEach>
</table>

<img alt="fake sunset photo" src="/student-management/URLToReachImagesFolder/sunset.png">

</div>


 
</body>
</html>