<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>스프링으로 부터 응답된 jsp(뷰리졸버 수정)</h1>
	</hr>
	<h3>jsp로 출력:<%=request.getAttribute("msg") %></h3>
	<h3>EL로 출력: ${msg}</h3>

</body>
</html>