<%@page import="emp.dto.MyEmpDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" session="true"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

</head>

<body>
	<div>
		<h1>����������</h1>
		<%if(!session.isNew()){ %> 
		<h3>${sessionScope.user.id} ${sessionScope.user.name}�� �α��� </h3>
			
		<%}%>
	
	 
		<hr/>
		<h3><a href="test.do">������ �� MVC�����ϱ�</a></h3>
		<h3><a href="insert.do">ȸ������</a></h3>
		<h3><a href="list.do">ȸ����Ϻ���</a></h3>
		<h3><a href="search.do">ȸ���˻�(�˻��׼�:/search)</a></h3>
		<h3><a href="board_list.do">�Խ���</a></h3>
				
	</div>
	<%if(!session.isNew()){ %> 
	<a href="logout.do" class="btn btn-success active">�α׾ƿ�<i class="icon-ok icon-white"></i></a>
		
	<%}else{%>
	<a href="login.do" class="btn btn-success active">�α���<i class="icon-ok icon-white"></i></a>
	<%} %>
</body>
</html>












