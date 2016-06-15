<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div style="width: 800px;margin-left: auto;margin-right: auto;">
		<div>
			<jsp:include page="top.jsp"></jsp:include>
		</div>
		<div >
			<jsp:include page="../product/topproduct.jsp"></jsp:include>
		</div>

		<div>
			<jsp:include page="../product/prdlist.jsp"></jsp:include>
		</div>
	</div>
	
		<div id="header">
		<tiles:insertAttribute name="top"/>
	</div>
	
	<div id="content1">
		<tiles:insertAttribute name="topproduct"/>
	</div>
	
	<div id="content2">
		<tiles:insertAttribute name="prdlist"/>
	</div>
</body>
</html>