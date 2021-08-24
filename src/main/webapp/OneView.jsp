<%--
  Created by IntelliJ IDEA.
  User: wZhao
  Date: 2021/6/27
  Time: 9:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" isELIgnored="false" %>
<html>
<head>
    <title></title>
</head>
<body>
    <script type="text/javascript" src="${pageContext.request.contextPath}/JS/jquery-3.5.1.min.js"></script>
    <script>
        $(function(){
            $("#btn").click(function () {
                var id = $("#we").val();
                //发送ajax请求
                var xhr;
                if(window.XMLHttpRequest){
                    xhr = new XMLHttpRequest();
                }else{
                    xhr = new ActiveXObject("Microsoft.XMLHTTP");
                }
                //发送请求
                xhr.open("POST","${pageContext.request.contextPath}/bank/selectByIdAction");
                xhr.setRequestHeader("content-type","application/x-www-form-urlencoded");
                xhr.send("id="+id);
                //处理响应
                xhr.onreadystatechange = function () {
                    if (xhr.readyState == 4 && xhr.status == 200) {
                        var bank = eval("("+xhr.responseText+")");
                        $("#ul").empty();
                        $("#ul").append($("<li>"+bank.id+"</li>")).
                            append($("<li>"+bank.name+"</li>")).
                            append($("<li>"+bank.balance+"</li>")).
                            append($("<li>"+bank.day+"</li>"))
                    }
                }
            })
        })

        $(function () {
            $("#bt").click(function () {
                //发送ajax请求
                var xhr;
                if (window.XMLHttpRequest) {
                    xhr = new XMLHttpRequest();
                }else{
                    xhr = new ActiveXObject("Microsoft.XMLHTTP");
                }
                //发送请求
                xhr.open("POST","${pageContext.request.contextPath}/bank/selectAllAction");
                xhr.setRequestHeader("content-type","application/x-www-form-urlencoded");
                xhr.send();
                //处理响应
                xhr.onreadystatechange = function () {
                    if (xhr.readyState == 4 && xhr.status == 200) {
                        console.log(xhr.responseText);
                        var bank = eval("("+xhr.responseText+")");
                        console.log(bank);
                        $("#ul").empty();
                        for(var i = 0;i<bank.length;i++){
                           var user = bank[i];
                           var li1 = $("<li>"+user.id+"</li>");
                           var li2 = $("<li>"+user.name+"</li>");
                           var li3 = $("<li>"+user.balance+"</li>");
                           var li4 = $("<li>"+user.day+"</li>");
                           var li5 = $("<br>")
                           $("#ul").append(li1)
                               .append(li2)
                               .append(li3)
                               .append(li4)
                               .append(li5);

                        }
                    }
                }
            })
        })

        <%--$(function () {--%>
            <%--$("#btn").click(function () {--%>
                <%--var id = $("#we").val();--%>
                <%--//发送ajax请求--%>
                <%--var xhr;--%>
                <%--if (window.XMLHttpRequest){--%>
                    <%--xhr = new XMLHttpRequest();--%>
                <%--} else{--%>
                    <%--xhr = new ActiveXObject("Microsoft.XMLHTTP");--%>
                <%--}--%>
                <%--//发送请求--%>
                <%--xhr.open("POST","${pageContext.request.contextPath}/bank/selectByIdAction");--%>
                <%--xhr.setRequestHeader("content-type","application/x-www-form-urlencoded");--%>
                <%--xhr.send("id="+id);--%>
                <%--//处理响应--%>
                <%--xhr.onreadystatechange = function () {--%>
                    <%--if (xhr.readyState == 4 && xhr.status == 200){--%>
                        <%--var bank = eval("("+xhr.responseText+")");--%>
                        <%--$("#ul").empty();--%>
                        <%--$("#ul").append($("<li>"+bank.id+"</li>"))--%>
                            <%--.append($("<li>"+bank.name+"</li>"))--%>
                            <%--.append($("<li>"+bank.balance+"</li>"))--%>
                            <%--.append($("<li>"+bank.day+"</li>"));--%>
                    <%--}--%>
                <%--}--%>
            <%--})--%>
        <%--})--%>
        <%--$(function () {--%>
            <%--$("#bt").click(function () {--%>
                <%--//发送ajax请求--%>
                <%--var xhr;--%>
                <%--if (window.XMLHttpRequest){--%>
                    <%--xhr = new XMLHttpRequest();--%>
                <%--} else{--%>
                    <%--xhr = new ActiveXObject("Microsoft.XMLHTTP");--%>
                <%--}--%>
                <%--//发送请求--%>
                <%--xhr.open("POST","${pageContext.request.contextPath}/bank/selectAllAction");--%>
                <%--xhr.setRequestHeader("content-type","application/x-www-form-urlencoded");--%>
                <%--xhr.send();--%>
                <%--//处理响应--%>
                <%--xhr.onreadystatechange = function () {--%>
                    <%--if (xhr.readyState == 4 && xhr.status == 200){--%>
                        <%--console.log(xhr.responseText);--%>
                        <%--var bank = eval("("+xhr.responseText+")");--%>
                        <%--console.log(bank);--%>
                        <%--$("#ul").empty();--%>
                        <%--for (var i = 0;i<bank.length;i++){--%>
                            <%--var user = bank[i];--%>
                            <%--var li1 = $("<li>"+user.id+"</li>");--%>
                            <%--var li2 = $("<li>"+user.name+"</li>");--%>
                            <%--var li3 = $("<li>"+user.balance+"</li>");--%>
                            <%--var li4 = $("<li>"+user.day+"</li>");--%>
                            <%--var li5 = $("</br>")--%>
                            <%--$("#ul").append(li1)--%>
                                <%--.append(li2)--%>
                                <%--.append(li3)--%>
                                <%--.append(li4)--%>
                                <%--.append(li5);--%>
                        <%--}--%>
                    <%--}--%>
                <%--}--%>
            <%--})--%>
        <%--})--%>
        <%--$(function () {--%>
            <%--$("#bt").click(function () {--%>
                <%--//发送ajax请求--%>
                <%--var xhr;--%>
                <%--if (window.XMLHttpRequest){--%>
                    <%--xhr = new XMLHttpRequest();--%>
                <%--} else{--%>
                    <%--xhr = new ActiveXObject("Microsoft.XMLHTTP");--%>
                <%--}--%>
                <%--//发送请求--%>
                <%--xhr.open("POST","${pageContext.request.contextPath}/bank/selectAllAction");--%>
                <%--xhr.setRequestHeader("content-type","application/x-www-form-urlencoded");--%>
                <%--xhr.send();--%>
                <%--//处理响应--%>
                <%--xhr.onreadystatechange = function () {--%>
                    <%--if (xhr.readyState == 4 && xhr.status == 200){--%>
                        <%--console.log(xhr.responseText);--%>
                        <%--var bank = eval("("+xhr.responseText+")");--%>
                        <%--console.log(bank);--%>
                        <%--$("#ul").empty();--%>
                        <%--for (var i = 0;i<bank.length;i++){--%>
                            <%--var user = bank[i];--%>
                            <%--var li1 = $("<li>"+user.id+"</li>");--%>
                            <%--var li2 = $("<li>"+user.name+"</li>");--%>
                            <%--var li3 = $("<li>"+user.balance+"</li>");--%>
                            <%--var li4 = $("<li>"+user.day+"</li>");--%>
                            <%--var li5 = $("</br>")--%>
                            <%--$("#ul").append(li1)--%>
                                <%--.append(li2)--%>
                                <%--.append(li3)--%>
                                <%--.append(li4)--%>
                                <%--.append(li5);--%>
                        <%--}--%>
                    <%--}--%>
                <%--}--%>
            <%--})--%>
        <%--})--%>
    </script>
    <input type="button" value="点击获取一个对象" id="btn">
    <input type="button" value="点击获取所有对象" id="bt">
    <input type="text" id="we">
    <ul id="ul">

    </ul>
</body>
</html>
