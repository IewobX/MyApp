<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登陆注册</title>
<link rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>
<body>
	<div style="text-align: center; clear: both">
		<!-- <script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
	<script src="/follow.js" type="text/javascript"></script> -->
	</div>
	<div class="cotn_principal">
		<div class="cont_centrar">
			<div class="cont_login">
				<div class="cont_info_log_sign_up">
					<div class="col_md_login">
						<div class="cont_ba_opcitiy">
							<h2>LOGIN</h2>
							<p>Lorem ipsum dolor sit amet, consectetur.</p>
							<button class="btn_login" onClick="cambiar_login()">LOGIN</button>
						</div>
					</div>
					<div class="col_md_sign_up">
						<div class="cont_ba_opcitiy">
							<h2>SIGN UP</h2>
							<p>Lorem ipsum dolor sit amet, consectetur.</p>
							<button class="btn_sign_up" onClick="cambiar_sign_up()">SIGN
								UP</button>
						</div>
					</div>
				</div>
				<div class="cont_back_info">
					<div class="cont_img_back_grey">
						<img src="img/po.jpg" alt="" />
					</div>
				</div>
				<div class="cont_forms">
					<div class="cont_img_back_">
						<img src="img/po.jpg" alt="" />
					</div>
					<div class="cont_form_login">
						<a href="#" onClick="ocultar_login_sign_up()"><i
							class="material-icons">&#xE5C4;</i></a>
						<h2>LOGIN</h2>
						<%--action="<%=request.getContextPath() %>/LogIn" method="post" --%>
						<form class="login_form" action="<%=request.getContextPath() %>/LogIn" method="post">
							<input type="text" placeholder="Email" name="email"/>
							<input type="password"placeholder="Password" name="password"/>
							<button class="btn_login">LOGIN</button>
							<!-- onClick="login()" -->
						</form>
					</div>
					<div class="cont_form_sign_up">
						<a href="#" onClick="ocultar_login_sign_up()"><i
							class="material-icons">&#xE5C4;</i></a>
						<h2>SIGN UP</h2>
						<%-- 
							@
							action="/*<%=request.getContextPath()  method="post%>/SignUp" 
						--%>
						<form class="sign_up_form">
							<input type="text" placeholder="Email" name="email" id="sign_up_email"/> 
							<input type="text"placeholder="User" name="userName" id="sign_up_username"/> 
							<input type="password" placeholder="Password" name="password" id="sign_up_password"/> 
							<input type="password" placeholder="Confirm Password" />
							<button class="btn_sign_up" onClick="sign_up()">SIGN UP</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="js/index.js"></script>
	<script src="js/script.js"></script>
</body>
</html>