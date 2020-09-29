<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/29 0029
  Time: 21:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改信息</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改信息</small>
                </h1>
            </div>
        </div>
    </div>
<form action="${pageContext.request.contextPath}/book/update" method="post">
            <input type="hidden" name="bookID" value="${QBook.bookID}"/>
    书籍名称<input type="text" name="bookName" value="${QBook.bookName}" required><br>
    书籍数目<input type="text" name="bookCounts" value="${QBook.bookCounts}" required><br>
    书籍描述<input type="text" name="detail" value="${QBook.detail}" required><br>
    <input type="submit" value="修改">

</form>
</body>
</html>
