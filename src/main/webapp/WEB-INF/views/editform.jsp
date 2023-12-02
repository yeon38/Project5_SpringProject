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
      margin-top: 50px;
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
      width: calc(100% - 16px);
      padding: 10px;
      margin-bottom: 15px;
      box-sizing: border-box;
      border: 1px solid #ccc;
      border-radius: 5px;
    }

    textarea {
      resize: vertical; /* Allow vertical resizing of the textarea */
    }

    input[type="submit"],
    input[type="button"] {
      display: inline-block;
      padding: 10px 20px;
      background-color: #007bff;
      color: white;
      text-decoration: none;
      border-radius: 5px;
      cursor: pointer;
      transition: background-color 0.3s ease;
      margin-right: 10px;
    }

    input[type="submit"]:hover,
    input[type="button"]:hover {
      background-color: #0056b3;
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
