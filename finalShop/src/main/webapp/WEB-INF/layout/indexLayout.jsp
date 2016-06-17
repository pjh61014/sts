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
<%-- 	<div style="width: 800px;margin-left: auto;margin-right: auto;">
		<div>
			<jsp:include page="top.jsp"></jsp:include>
		</div>
		<div >
			<jsp:include page="../product/topproduct.jsp"></jsp:include>
		</div>

		<div>
			<jsp:include page="../product/prdlist.jsp"></jsp:include>
		</div>
	</div> --%>
	
	<div style="width: 800px;margin-left: auto;margin-right: auto;">
		<div id="top">
		<tiles:insertAttribute name="top"/>
	</div>
	
	<div id="topproduct">
		<tiles:insertAttribute name="topproduct"/>
	</div>
	
	<div id="prdlist">
		<tiles:insertAttribute name="prdlist"/>
	</div>
	</div>
</body>
</html>