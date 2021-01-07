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
$(function(){//페이지 로딩이 끝나면 자동으로 실행되는 코드
	list();//아래 list()호출	
	$("#btnSave").click(function(){
		var userid=$("#userid").val();
		var name=$("#name").val();
		var passwd=$("#passwd").val();
		if(userid==""){
			alert("아이디를 입력하세요.");
			$("#userid").focus();z
			return;
		}
		if(name==""){
			alert("이름을 입력하세요.");
			$("#name").focus();
			return;
		}
		if(passwd==""){
			alert("비밀번호를 입력하세요.");
			$("#passwd").focus();
			return;
		}
		if (hp=="") {
			alert("전화번호를 입력하세요.");
			return;
		}
		insert();
	});
});

function insert(){
	var param="userid="+$("#userid").val()
	+"&passwd="+$("#passwd").val()
	+"&name="+$("#name").val()
	+"&email="+$("#email").val()
	+"&hp="+$("#hp").val();
	$.ajax({
		type: "post",
		url: "${path}/member_servlet2/join.do",
		data: param,
		success: function(){
			list();//회원목록 갱신
			//입력값 초기화
			$("#userid").val("");
			$("#passwd").val("");
			$("#name").val("");
			$("#email").val("");
			$("#hp").val("");
		}
	});
}

function list(){
	//회원 목록을 div에 출력, 백그라운드로 실행
	$.ajax({
		type: "post",
		url: "/jsp03/member_servlet2/list.do",
		success: function(result){
			console.log(result);//F12 consol에서 응답text 확인
			$("#memberList").html(result);
		}
	});
}
</script>

</head>
<body>
<h2>회원관리</h2>
아이디 : <input id="userid">
비번 : <input type="password" id="passwd"> <br>
이름 : <input id="name">
이메일 : <input id="email"> <br>
핸드폰 : <input id="hp">
<button type="button" id="btnSave">추가</button>

<div id="memberList"></div>

</body>
</html>