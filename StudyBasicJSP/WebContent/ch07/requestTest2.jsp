<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<%
	String name[]={"프로토콜 이름","서버이름","Method 방식","콘텍스트 경로","URI","접속한 클라이언트의 IP"};
	String values[]={request.getProtocol(),request.getServerName(),request.getMethod(),request.getContextPath(),request.getRequestURI(),request.getRemoteAddr()};
	Enumeration <String> en=request.getHeaderNames();
	String headerName="";
	String headerValue="";

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request 내장객체 예제</title>
</head>
<body>
<h2>웹 브라우저와 웹 서버 정보 표시</h2>
<%
	for(int i=0;i<name.length;i++)
	{
		out.println(name[i]+" : "+values[i]+"<br>");
	}
%>
<h2>헤더의 정보 표시</h2>
<%
	while(en.hasMoreElements())
	{
		headerName=en.nextElement();
		headerValue=request.getHeader(headerName);
		out.println(headerName+" : "+headerValue+"<br>");
	}
%>

</body>
</html>
