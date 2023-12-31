<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: chaeyeon
  Date: 2023/12/01
  Time: 10:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Add </title>
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
      width: 100%;
      padding: 10px;
      margin-bottom: 15px;
      box-sizing: border-box;
      border: 1px solid #ccc;
      border-radius: 5px;
    }

    textarea {
      resize: vertical; /* Allow vertical resizing of the textarea */
    }

    button.postlink {
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

    button.postlink:hover {
      background-color: #0056b3;
    }

    button.postlink[type="submit"] {
      background-color: #4caf50;
    }

    button.postlink[type="submit"]:hover {
      background-color: #45a049;
    }

  </style>
</head>
<body>
<h1> Add Post Form</h1>
  <form action="addok" method="post">
    <table id="eidt">
      <tr><td> Title </td> <td> <input type="text" name="title"/> </td></tr>
      <tr><td> Writer </td> <td> <input type="text" name="writer"/> </td></tr>
      <tr><td> Content </td><td> <textarea cols="50" rows="5" name="content"/></textarea> </td></tr>
      <tr><td> Category </td> <td> <input type="text" name="category"/> </td></tr>

    </table>
    <button type="button" class="postlink" onclick="location.href='list'"> list </button>
    <button type="submit" class="postlink"> submit </button>
  </form>
</body>
</html>
