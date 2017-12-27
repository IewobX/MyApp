<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/admin.css">
</head>
<body>
	<div style="text-align: center; clear: both">
		<!-- <script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
	<script src="/follow.js" type="text/javascript"></script> -->
	</div>

	<div class="cotn_principal">
		<div class="cont_centrar">
			<div class="cont_login">
				<div class="cont_back_info">
					<div class="cont_img_back_grey">
						<img src="img/po.jpg" alt="" />
					</div>
					<table>
						<tr>
							<td>用户名称</td>
							<td>用户性别</td>
							<td>用户年龄</td>
							<td>&nbsp;</td>
						</tr>
						<c:forEach items="${list}" var="user">
							<tr>
								<td>${user.email }</td>
								<td>${user.userName }</td>
								<td>${user.password }</td>
								<td><a href="">删除</a></td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
	</div>

	<script src="js/index.js"></script>

</body>
</html>