<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/9/20
  Time: 10:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>宠物信息</title>
    <script type="text/javascript" src="/static/js/jquery-3.4.1.min.js"></script>
</head>
<body>
<p>
<form action="/mocha" method="post">
    <a style="margin-left: 100px">品种</a>
    <select name="pinzhong">
        <c:forEach items="${xiala}" var="p">
        <option value="${p.petBread}">${p.petBread}</option>
        </c:forEach>
    </select>
    <input type="submit" value="查询">
    <a href="/add" style="margin-left: 100px">新增宠物</a>
</form>
<table border="1px" width="600px">
    <tr id="shou">
        <td>宠物昵称</td>
        <td>出生日期</td>
        <td>性别</td>
    </tr>
    <c:forEach items="${pet}" var="p">
        <tr class="bian">
            <td>${p.petName}</td>
            <td>
                <fmt:formatDate pattern="yyyy-MM-dd" value="${p.birthday}" type="both"/>
            </td>
            <td>${p.petSex}</td>
        </tr>
    </c:forEach>
</table>
<c:if test="${jie==1}">
    <script type="text/javascript">
        alert("添加成功");
        ${jie==0}
    </script>
</c:if>
</p>
</body>
</html>
<script type="text/javascript">
    $("#shou").css("background-color","#99999B");
    $(".bian:even").css("background-color","#98CEFA");
</script>
