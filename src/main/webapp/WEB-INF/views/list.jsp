<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@page import="com.example.board.BoardDAO, com.example.board.BoardVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Free board</title>
	<style>
		#list {
			font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
			border-collapse: collapse;
			width: 100%;
		}
		#list td, #list th {
			border: 1px solid #ddd;
			padding: 8px;
			text-align:center;
		}
		#list tr:nth-child(even){background-color: #f2f2f2;}
		#list tr:hover {background-color: #ddd;}
		#list th {
			padding-top: 12px;
			padding-bottom: 12px;
			text-align: center;
			background-color: #18c9f5;
			color: white;
		}
		.edit {
			padding: 8px;
			background-color: #eee42b;
			color: white;
			text-decoration: none;
			border-radius: 5px;
			transition: background-color 0.3s ease;
			font-size: 14px; /* Adjust the font size */
		}
		.edit:hover {
			background-color: #eee42b;
		}
		.delete {
			padding: 8px;
			background-color: #a92ee7;
			color: white;
			text-decoration: none;
			border-radius: 5px;
			transition: background-color 0.3s ease;
			font-size: 14px; /* Adjust the font size */
		}
		.delete:hover {
			background-color: #e34fee;
		}
		.addlink {
			padding: 10px;
			background-color: #18c9f5;
			color: white;
			text-decoration: none;
			border-radius: 5px;
			transition: background-color 0.3s ease;
		}
		.addlink:hover {
			background-color: #147594;
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
