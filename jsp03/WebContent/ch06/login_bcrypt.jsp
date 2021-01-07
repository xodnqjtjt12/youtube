<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../include/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#btnLogin").click(function(){
		var param="userid="+$("#userid").val()
		+"&passwd="+$("#passwd").val();
		$.ajax({
			type: "post",
			url: "${path}/member_servlet2/login_bcrypt.do",
			data: param,
			success: function(result){
				$("#result").html(result);
			}
		});
	});
});
</script>
</head>
<body>
<h2>로그인 (Bcrypt 암호화)</h2>
아이디 : <input id="userid"> <br>
비번 : <input type="password" id="passwd"> <br>
<button id="btnLogin">로그인</button>
<div id="result"></div>
</body>
</html>