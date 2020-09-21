<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/static/js/jQuery.js"></script>
	<script type="text/javascript" src="/static/js/pet.js"></script>
</head>
<body>
	<div align="center">品种&nbsp;&nbsp;<select class="sel">
				<option>--请选择--</option>
				<option>狗</option>
				<option>猫</option>
				<option>鸟</option>
				<option>老鼠</option>
				</select>&nbsp;&nbsp;<button class="btn" onclick="PetInfo()">查询</button>
				&nbsp;&nbsp;<a href="toAdd">新增宠物</a></div>
		<table class="table-chaxun2" width="600px" align="center" border="1">
				<tr align="center" id="tr1">
					<th>宠物昵称</th>
					<th>出生日期</th>
					<th>性别</th>
				</tr>
			</table>
</body>
</html>