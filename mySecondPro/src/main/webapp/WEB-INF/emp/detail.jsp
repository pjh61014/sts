<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import="emp.dto.MyEmpDTO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% MyEmpDTO userDetails  = (MyEmpDTO)request.getAttribute("user");	%>
	<form name="form1" method="post" action="mybatisread.do">
	<div align="center">
		<table width="400" border="1">
			<tr>
				<td>ȸ�����̵�</td>
				<td><input type ="hidden" name="id" value="<%=userDetails.getId() %>"><%=userDetails.getId() %></td>
			</tr>
			<tr>
				<td>ȸ���н�����</td>
				<td><input type ="hidden" name="pass" value="<%=userDetails.getPass() %>"><%=userDetails.getPass() %></td>
			</tr>
			<tr>
				<td>ȸ������</td>
				<td><input type ="hidden" name="name" value="<%=userDetails.getName()%>"><%=userDetails.getName() %></td>
			</tr>
			<tr>
				<td>ȸ���ּ�</td>
				<td><input type ="hidden" name="addr" value="<%=userDetails.getAddr() %>"><%=userDetails.getAddr() %></td>
			</tr>
			<tr>
				<td>ȸ���μ��ڵ�</td>
				<td><input type ="hidden" name="deptno" value="<%=userDetails.getDeptno() %>"><%=userDetails.getDeptno() %></td>
			</tr>
			<tr>
				<td>���</td>
				<td><input type ="hidden" name="grade" value="<%=userDetails.getGrade() %>"><%=userDetails.getGrade() %></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="�����ϱ�" />
					<input type="button" value="�����ϱ�" onclick="location.href='mybatisdelete.do?id=<%=userDetails.getId()%>'"/>
					<input type="button" value="��Ϻ���"	onclick="location.href='member_list.do'"/>
				</td>
			</tr>
		</table>
	</div>
	</form>
</body>
</html>









