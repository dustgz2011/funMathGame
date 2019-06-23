<%@ page language="java" contentType="text/html; charset=UTF-8"  isELIgnored="false"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=${encoding}">
<title>fun math game</title>
</head>
	<style>
			.define-table{
				border-collapse:collapse;
				border-spacing:0;
				border-left:1px solid #888;
				border-top:1px solid #888;
			}
			.define-table th,.define-table td{
				border-right:1px solid #888;
				border-bottom:1px solid #888;
				padding:5px 15px;
			}
			.define-table th{
				font-weight:bold;background:#ccc;
			}	
		</style>
<body>
	<div id="fungame">
		<h2 align="center">Fun Math Game</h2>
		<form id="myform" action="playing/execute" method="post">
			<table class="define-table" width="800" align="center">
				<tr align="left">
					<td>最大范围数值</td>
					<td><input type="text" name="maxnum" id="maxnum" /></td>
				</tr>
				<tr align="left">
					<td>游戏玩法</td>
					<td><select id="myselect" name="option" onchange="">
							<option value="0">难度等级1</option>
							<option value="1">难度等级2</option>
					</select></td>
				</tr>
				<tr align="center">
					<td colspan="2"><input id="mysubmit" type="button" value="开始游戏"
						style="width: 200px"></td>
				</tr>
			</table>
		</form>
		<hr>
	</div>
	<div id="gameresult">
		<h5 align="left">游戏结果：</h5>
		<form id="resultform" action=""  >
			<table class="define-table" width="800" align="center">
				<tr align="center">
					<c:if test="${!empty list}">
						<br>
						<c:forEach items="${list }" var="keyword" varStatus="id">
     					${keyword}<br>
						</c:forEach>
						<br>
					</c:if>
			</table>
		</form>
		<hr>
	</div>
</body>
</html>
<script type="text/javascript">
	//加载初始化
	//	window.onload = function() {
	//		showProject();
	//	}

	//提交表单
	document.getElementById("mysubmit").onclick = function() {
		var maxnum = document.getElementById("maxnum").value;
		
		if (maxnum == "") {
			alert("请输入最大范围数值！");
		} else {
			document.getElementById("myform").submit();
		}
	};

	//展示结果form
	function showProject() {
		<c:if test="${not empty list}">
		document.getElementById("resultform").style.display = "";//显示
		</c:if>
		<c:if test="${empty list}">
		document.getElementById("resultform").style.display = "none";//显示
		</c:if>
	}
</script>
