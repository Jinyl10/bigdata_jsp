<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>게시판화면</title>
</head>
<body>
	<jsp:include page="../header.jsp" />
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="main.jsp">메인</a></li>
				<li class="active"><a href="/store/stores.jsp">스토어</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="# class=:dropdown-toggle"
						data-toggle="dropdown" role="botton" aria-haspopup="true"
						aria-expanded="false">접속하기<span class="caret"></span></a>
				</li>
			</ul>	
		</div>
		
	</nav>

	<div class="container">
		<div class="row">
			<table class="table table-striped" style="text-align: center; border; 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;">번호</th>
						<th style="background-color: #eeeeee; text-align: center;">제목</th>
						<th style="background-color: #eeeeee; text-align: center;">작성자</th>
						<th style="background-color: #eeeeee; text-align: center;">작성일</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>안녕하세요</td>
						<td>홍길동</td>
						<td>2021-10-10</td>
					</tr>
				</tbody>
			</table>		
			<a href="write.jsp" class="btn btn-primary pull-right" div style="float: right;">글쓰기</a>
					
		</div>
		
	</div>
	
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<jsp:include page="../footer.jsp" />

</body>
</html>