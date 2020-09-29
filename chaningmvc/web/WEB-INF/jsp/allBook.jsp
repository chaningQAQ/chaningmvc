<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/29 0029
  Time: 15:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍页面</title>

    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
        <div class="page-header">
            <h1>
                <small>书籍信息</small>
            </h1>
        </div>
        </div>
    </div>
</div>
<div class="row clearfix">
    <div class="col-md-12 column">
        <div class="page-header">
        <h3><a href="${pageContext.request.contextPath}/book/toaddBook"><small>添加书籍</small></a></h3>
        </div>
    </div>
</div>
<div class="row clearfix">
    <div class="col-md-12 column">
        <table class="table taber-hover table-striped">
            <thead>
                <tr>
                    <th>书籍编号</th>
                    <th>书籍名称</th>
                    <th>书籍数目</th>
                    <th>书籍描述</th>
                    <th>操作</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach var="book" items="${list}">
                <tr>
                    <td>${book.bookID}</td>
                    <td>${book.bookName}</td>
                    <td>${book.bookCounts}</td>
                    <td>${book.detail}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/book/toupdate?id=${book.bookID}">修改</a> &nbsp;| &nbsp;
                        <a href="${pageContext.request.contextPath}/book/delete?id=${book.bookID}">删除</a>
                    </td>
                </tr>

            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
