<%@page import="board.dto.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*,board.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style type="text/css">
	th{
		text-align: center;
		
	}
	

</style>
</head>
<body>
<% ArrayList<BoardDTO> brdlist =
	(ArrayList<BoardDTO>)request.getAttribute("brdlists");
	int size = brdlist.size();
%>
<div class="container">
<h1>게시판 </h1>
<hr/>
<table class="table table-bordered" width="450">
  <thead>
    <tr>
      <th>글번호</th>
      <th>제목</th>
      <th>작성자</th>
      <th>날짜</th>
      <th>조회수</th>
     
    </tr>
  </thead>
  <tbody>
  <%for(int i=0; i<size; i++) {
  BoardDTO brd = brdlist.get(i);%>
    <tr>
      <td style="width: 7%;text-align: center;"><%=brd.getBoard_no() %></td>
      <td> <a href="boardread.do?board_no=<%=brd.getBoard_no() %>"><%=brd.getTitle() %></a></td>
      <td style="width: 7%; text-align: center; "> <%=brd.getMem_id() %></td>
      <td style="width: 15%; text-align: center;"><%=brd.getReg_dtm() %></td>
      <td style="width:7%; text-align: center;"><%=brd.getCount() %></td>
      
    </tr>
    <%} %>
     </tbody>
</table>
<br/>

<button type="button" class="btn btn-primary" onclick="location.href='board_write.do'">게시물 등록</button>

</div>
</body>
</html>