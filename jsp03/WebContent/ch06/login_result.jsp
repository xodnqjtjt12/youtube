<%@page import="com.sun.net.httpserver.Authenticator.Success"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../include/jquery-3.5.1.min.js"></script>
</head>
<body>
<% 
String context=request.getContextPath();
//컨트롤러로 이동, post로 명시안하면 get방식임.
String result = (String)request.getAttribute("result");
%>
<script type="text/javascript">
alert("<%=result%>");
</script>
<%
if(result.indexOf("아이디와 비밀번호를") != -1) {
	
	response.sendRedirect(context+"/ch06/session_login.jsp");
	

} else {
	response.sendRedirect(context+"/ch06/projectresult.jsp");
}
%>
<%-- <%=request.getAttribute("result") %> --%>
</body>
</html>