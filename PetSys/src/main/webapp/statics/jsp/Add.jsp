<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/statics/js/jQuery.js"></script>
<script type="text/javascript" src="/statics/js/Add.js"></script>
</head>
<body>
	<table class="table-chaxun" width="600px" align="center" border="0">
				<tr align="center">
					<th colspan="2" height="80" style="font-size: 30px">添加宠物信息</th>
				</tr>
				<tr>
					<td align="right">昵称：</td>
					<td><input type="text" class="name" style="width:147px"/><span class="wen"></span></td>
					
				</tr>
				<tr>
					<td align="right">品种：</td>
					<td><select class="type" style="padding-right: 73px">
						<option>--请选择--</option>
						<option>狗</option>
						<option>猫</option>
						<option>鸟</option>
						<option>老鼠</option>
					</select></td>
					
				</tr>
				<tr>
					<td align="right">性别：</td>
					<td><input type="radio" class="sex" name="sex" value="雄" checked="checked"/>雄<input type="radio" class="sex" name="sex" value="雌"/>雌</td>
					
				</tr>
				<tr>
					<td align="right">出生日期：</td>
					<td><input type="text" class="birthday" style="width:147px"/></td>

				</tr>
				<tr>
					<td align="right">宠物描述：</td>
					<td><textarea style="width:400px" class="desc"></textarea></td>

				</tr>
				<tr>
				<td align="center" colspan="2"><button class="tian">提交</button></td>
				
				</tr>
			</table>
</body>
</html>
>