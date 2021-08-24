<%--
  Created by IntelliJ IDEA.
  User: wZhao
  Date: 2021/6/24
  Time: 22:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="utf-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>s
<html>
<head>
    <title>添加学生</title>
</head>
<body>
<form action="${pageContext.request.contextPath }/bank/insertAction" method="post">
        <label>姓名:</label>
        <input type="text" name="bank.name"><br>


        <label>密码:</label>
        <input type="text" name="bank.password"><br>


        <label>余额:</label>
        <input type="text" name="bank.balance" ><br>

        <label>开户日期:</label>
        <input type="date" name="bank.day"><br>

    <button type="submit" >保存学生信息</button>
</form>
</body>
</html>
