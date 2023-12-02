<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: chaeyeon
  Date: 2023/12/01
  Time: 10:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
  <title>Edit</title>
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
    }

    form {
      max-width: 600px;
      margin: 20px auto;
      background-color: #fff;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    table {
      width: 100%;
    }

    td {
      padding: 8px;
    }

    input[type="text"],
    textarea {
      width: 100%;
      padding: 8px;
      margin-bottom: 10px;
      box-sizing: border-box;
      border: 1px solid #ccc;
      border-radius: 4px;
    }

    input[type="submit"]{
      background-color: #4caf50;
      color: white;
      padding: 10px 15px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }
    input[type="button"] {
      background-color: #f50910;
      color: white;
      padding: 10px 15px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }

    input[type="submit"]:hover{
      background-color: #eee42b;
    }
    input[type="button"]:hover {
      background-color: #ef0387;
    }
    .postlink {
      display: inline-block;
      padding: 10px;
      background-color: #18c9f5;
      color: white;
      text-decoration: none;
      border-radius: 5px;
      transition: background-color 0.3s ease;
      margin-right: 10px; /* Add margin to the right */
    }
    .postlink:hover {
      background-color: #147594;
    }
  </style>
</head>
<body>
<h1> Edit Post Form</h1>
<%--@elvariable id="boardVO" type=""--%>
<form:form modelAttribute="boardVO" method="POST" action="../editok">
  <form:hidden path = "seq"/>
  <table id="edit">
    <tr><td> Title </td> <td> <form:input path="title"/> </td></tr>
    <tr><td> Writer </td> <td> <form:input path="writer"/> </td></tr>
    <tr><td> Content </td> <td> <form:textarea cols="50" rows="5" path="content"/> </td></tr>
    <tr><td> Category </td> <td> <form:input path="category"/> </td></tr>
  </table>

  <input type="submit" class="postlink" value="edit"/>
  <input type="button" class="postlink" value="취소하기" onclick="history.back()">
</form:form>
</body>
</html>
