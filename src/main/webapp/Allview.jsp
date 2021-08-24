
<%@ page pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
</head>
<body>
<a href="${pageContext.request.contextPath}/Addview.jsp">添加学生信息</a>
<table border="1" cellpadding="0" cellspacing="0">
    <tr>
        <th>编号</th>
        <th>姓名</th>
        <th>密码</th>
        <th>余额</th>
        <th>开户日期</th>
        <th>操作</th>
    </tr>
    <c:forEach items="${requestScope.banks}" var="bank">
        <tr>
            <td>${bank.id}</td>
            <td>${bank.name}</td>
            <td>${bank.password}</td>
            <td>${bank.balance}</td>
            <td> <fmt:formatDate value="${bank.day}" pattern="yyyy-mm-dd"></fmt:formatDate></td>
            <td>
                <a href="${pageContext.request.contextPath}/bank/selectByIdAction?id=${bank.id}">修改</a>
                <a href="${pageContext.request.contextPath}/bank/deleteAction?id=${bank.id}">删除</a>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
