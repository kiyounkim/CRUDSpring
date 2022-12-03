<%--
  Created by IntelliJ IDEA.
  User: david
  Date: 2022-12-02
  Time: 오후 4:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
  <title>Title</title>
  <script>
    function delete_ok(id){
      var a = confirm("정말 삭제하시겠습니까?");
      if(a){
        location.href = 'deleteok/' +id;
      }
    }
  </script>
</head>
<body>
<table id="list">
  <tr>
  <th>Id</th>
  <th>Category</th>
  <th>Title</th>
  <th>Writer</th>
  <th>Content</th>
  <th>Regdate</th>
  <th>Edit</th>
  <th>Delete</th>
  </tr>
  <c:forEach items="${list}" var="u">
    <tr>
      <td>${u.seq}</td>
      <td>${u.category}</td>
      <td>${u.title}</td>
      <td>${u.writer}</td>
      <td>${u.content}</td>
      <td>${u.regdate}</td>
      <td><a href="editpost/${u.seq}">수정</a></td>
      <td><a href="javascript:delete_ok('${u.seq}')">글삭제</a></td>
    </tr>
  </c:forEach>
</table>
<br/><button type = "button" onclick="location.href='add'">새글쓰기</button>
</body>
</html>
