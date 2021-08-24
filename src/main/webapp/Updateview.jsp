<%--
  Created by IntelliJ IDEA.
  User: wZhao
  Date: 2021/6/24
  Time: 22:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="utf-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<body>
<form action="${pageContext.request.contextPath}/bank/updateAction" method="post">
        <label>ID:</label>
        <p>${bank.id}</p>
        <input type="hidden" name="bank.id" value="${bank.id}">
        <br>
        <label>姓名:</label>
        <input type="text" name="bank.name" value="${bank.name}">
        <br>

        <label>密码:</label>
        <input type="text" name="bank.password" value="${bank.password}"/>
        <br>

        <label>余额:</label>
        <input type="text" name="bank.balance" value="${bank.balance}">
        <br>
        <label>开户日期:</label>
    <input type="text" name="bank.day" value="<fmt:formatDate value="${bank.day}" pattern="yyyy-MM-dd"/>">
        <br>
    <button type="submit">保存学生信息</button>
</form>
</body>
</html>
