<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@page import="com.example.board.BoardDAO, com.example.board.BoardVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Free board</title>
	<style>
		body {
			font-family: 'Arial', sans-serif;
			background-color: #f4f4f4;
			margin: 0;
			padding: 0;
		}

		h1 {
			color: #333;
			text-align: center;
			margin-top: 20px;
		}

		table {
			width: 100%;
			border-collapse: collapse;
			margin-top: 20px;
		}

		th, td {
			border: 1px solid #ddd;
			padding: 8px;
			text-align: left;
		}

		th {
			background-color: #4caf50;
			color: white;
		}

		tr:hover {
			background-color: #f5f5f5;
		}

		a {
			color: #007bff;
			text-decoration: none;
		}

		a:hover {
			text-decoration: underline;
		}

		.addlink {
			display: block;
			margin: 20px auto;
			padding: 10px 20px;
			background-color: #4caf50;
			color: white;
			text-decoration: none;
			border-radius: 5px;
			cursor: pointer;
			text-align: center;
		}

		.addlink:hover {
			background-color: #45a049;
		}

	</style>
	<script>
		function delete_ok(id){
			var a = confirm("정말로 삭제하겠습니까?");
			if(a) location.href='deleteok/' + id;
		}
	</script>
</head>
<body>
<h1>자유게시판</h1>

<table id="list" width="90%">
	<tr>
		<th>Id</th>
		<th>Title</th>
		<th>Writer</th>
		<th>Content</th>
		<th>Category</th>
		<th>Regdate</th>
		<th>Moddate</th>
		<th>Edit</th>
		<th>Delete</th>
	</tr>
	<c:forEach items="${list}" var="u">
		<tr>
			<td>${u.seq}</td>
			<td>${u.title}</td>
			<td>${u.writer}</td>
			<td>${u.content}</td>
			<td>${u.category}</td>
			<td>${u.regdate}</td>
			<td>${u.moddate}</td>
			<td><a href="editform/${u.seq}">Edit</a></td>
			<td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>
		</tr>
	</c:forEach>
</table>
<br/><button type="button" class="addlink" onclick="location.href='add'">Add New Post</button>
</body>
</html>
