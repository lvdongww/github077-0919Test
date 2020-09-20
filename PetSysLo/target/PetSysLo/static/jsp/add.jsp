<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/9/20
  Time: 11:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>宠物的基本信息</title>
    <script type="text/javascript" src="/static/js/jquery-3.4.1.min.js"></script>
</head>
<body>
<form action="/addover" method="post">
<h1>宠物的基本信息</h1>
<p>
    <a>昵称：</a>
    <input type="text" name="petName">
</p>
<p>
    <a>品种</a>
    <select name="petBread">
        <c:forEach items="${xiala}" var="p">
            <option value="${p.petBread}">${p.petBread}</option>
        </c:forEach>
    </select>
</p>
<p>
    <a>性别：</a>
    <input type="radio" name="petSex" checked="checked">雄
    <input type="radio" name="petSex">雌
</p>
<p>
    <a>出生日期:</a>
    <input type="text" name="birthday">
    <a>yyyy-mm-dd</a>
</p>
<p>
    <a>宠物描述</a>
    <textarea name="description" cols="50" rows="5"></textarea>
</p>
<p>
    <input type="submit" value="提交">
    <input type="reset" value="充值">
</p>
</form>
</body>
</html>
<script type="text/javascript">
    $("form").submit(function () {
        var petName = $("[name='petName']").val();
        if (petName == "") {
            alert("昵称不能为空呦");
            return false;
        }
        var time = $("[name='birthday']").val();
        if (time == "") {
            alert("出生日期不能为空呦");
            return false;
        }
        var reg = /^(?:(?!0000)[0-9]{4}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1[0-9]|2[0-8])|(?:0[13-9]|1[0-2])-(?:29|30)|(?:0[13578]|1[02])-31)|(?:[0-9]{2}(?:0[48]|[2468][048]|[13579][26])|(?:0[48]|[2468][048]|[13579][26])00)-02-29)$/;
        if (!time.match(reg)) {
            alert("上传时间格式不正确!!!");
            return false;
        }
        return true;
    })
</script>
