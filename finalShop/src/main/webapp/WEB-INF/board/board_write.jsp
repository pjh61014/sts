<%@page import="board.dto.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="board.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<% BoardDTO brd =(BoardDTO)request.getAttribute("boardinforead"); %>
<div class="container">
<h1>�Խ��� </h1>
<hr/>
<form name="insert" method="post" action="board_reg.do">

 <fieldset class="form-group">
 	<label for="exampleInputEmail1">���̵�</label>
    <input type="text" class="form-control" id="mem_id" name="mem_id" placeholder="���̵� �Է��ϼ���">
    <small class="text-muted">���̵�  �Է����ּ���</small>
  </fieldset>
 
  <fieldset class="form-group">
    <label for="exampleInputEmail1">����</label>
    <input type="text" class="form-control" id="title" name="title" laceholder="������ �Է��ϼ���">
    <small class="text-muted">������ �Է����ּ���</small>
  </fieldset>
 
  <fieldset class="form-group">
    <label for="exampleTextarea">����</label>
    <textarea class="form-control" id="exampleTextarea" name="text" rows="10" ></textarea>
  	<small class="text-muted">������ �Է����ּ���</small>
  </fieldset>
 
  <button type="submit" class="btn btn-success">���</button>
</form>

</div>



</body>
</html>