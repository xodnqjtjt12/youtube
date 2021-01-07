<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../include/jquery-3.5.1.min.js"></script>
<%@ include file="../include/header.jsp" %>
<script type="text/javascript">
$(function(){
	$("#btnJoin").click(function(){
		var userid=$("#userid").val();
		var passwd=$("#passwd").val();
		var name=$("#name").val();
		var email=$("#email").val();
		var hp=$("#hp").val();
		//파라미터 구성 {"변수명":값, "변수명":값, "변수명":값,...};
		var param={"userid":userid, "passwd":passwd, "name":name,
				"email":email, "hp":hp};
		if(userid == null || userid == ""){
			alert('아이디를 입력하세요.')
			return;
		}if (userid == null || passwd == "") {
		alert('비밀번호를 입력하세요.')
		return;
		
		}
		if (userid == null || name == "") {
			alert('이름을 입력하세요.')
			return;
			
		}if (userid == null || email == "") {
			alert('이메일을 입력하세요.')
			return;
		}if (userid == null || hp == "") {
			alert('휴대폰번호를 입력하세요.')
			return;
		}
		$.ajax({
			type: "post",
			url: "${path}/member_servlet2/join.do",
			data: param,
			success: function(){
				alert("처리가 완료되었습니다.");
				document.location.href="session_login.jsp"
			}
		});
	});
});

</script>
</head>
<body>
<h2>회원가입과 로그인</h2>
아이디 : <input id="userid"> <br>
비밀번호 : <input type="password" id="passwd"><br>
이름 : <input id="name"> <br>
이메일 : <input id="email"> <br>
휴대폰 : <input id="hp"> <br>
<button id="btnJoin">회원가입</button>
</body>
</html>