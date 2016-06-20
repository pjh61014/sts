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
<h1>게시판 </h1>
<hr/>
<form name="insert" method="post" action="board_reg.do">

 <fieldset class="form-group">
 	<label for="exampleInputEmail1">아이디</label>
    <input type="text" class="form-control" id="mem_id" name="mem_id" placeholder="아이디를 입력하세요">
    <small class="text-muted">아이디를  입력해주세요</small>
  </fieldset>
 
  <fieldset class="form-group">
    <label for="exampleInputEmail1">제목</label>
    <input type="text" class="form-control" id="title" name="title" laceholder="제목을 입력하세요">
    <small class="text-muted">제목을 입력해주세요</small>
  </fieldset>
 
  <fieldset class="form-group">
    <label for="exampleTextarea">내용</label>
    <textarea class="form-control" id="exampleTextarea" name="text" rows="10" ></textarea>
  	<small class="text-muted">내용을 입력해주세요</small>
  </fieldset>
 
  <button type="submit" class="btn btn-success">등록</button>
</form>

</div>



</body>
</html>