<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../ch06/join.css" rel='stylesheet' style="text/css"/>

<%@ include file="../include/header.jsp" %>
<c:if test="${param.message == 'error' }">

<script type="text/javascript">
function cansle() {
	location.href="../ch06/join.jsp"
	
}
</script>
  <script>
    alert("아이디 또는 비밀번호가 일치하지 않습니다.");
  </script>
</c:if>
<c:if test="${param.message == 'logout' }">
  <script>
    alert("로그아웃되었습니다.");
  </script>
</c:if>

</head>
<body>
<h2 align="center">로그인</h2>
<form method="post" name="form1" 
action="${path}/session_servlet/login.do">
<table border="1">
  <tr>
    <td>아이디 </td>
    <td><input name="userid"> </td>
  </tr>
  <tr>
    <td>비밀번호 </td>
    <td><input type="password" name="passwd"> </td>
  </tr>
  <tr>
    <td colspan="2" align="center">
      <input type="submit" value="로그인">
      <input type="button" value="회원가입" onclick="cansle()">
    </td>
  </tr>
</table>
</form>
</body>
</html>