<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가게 등록</title>
</head>
<body>
<%@ include file = "/header.jsp" %>

<!-- for photo; enctype="multipart/form-data" -->

<div class="alert alert-info" role="alert">
	<h3 class="display-6" style="padding-left:10px" >가게 등록</h3>
</div>
	<div class="container">
		<form name="newStore" class="form-horizontal"  action="addCheck.jsp" method="post" onsubmit="return checkForm()">
			<div class="form-group  row">
				<label class="col-sm-2 ">storeID</label>
				<div class="col-sm-3">
					<input name="id" type="text" class="form-control" placeholder="id" >
				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-2">storeName</label>
				<div class="col-sm-3">
					<input name="name" type="text" class="form-control" placeholder="name" >
				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-2">category</label>
				<div class="col-sm-10">
					<input name="category" type="radio" value="online" /> online 
					<input name="category" type="radio" value="offline" /> offline
				</div>
			</div>
			<br>
			<div class="form-group row">
				<label class="col-sm-2">storeAddress</label>
				<div class="col-sm-4  ">
					<select name="region" class="form-control">
						<option value="">시/도</option>
						<option value="서울특별시">서울특별시</option>
						<option value="부산광역시">부산광역시</option>
						<option value="대구광역시">대구광역시</option>
						<option value="인천광역시">인천광역시</option>
						<option value="광주광역시">광주광역시</option>
						<option value="대전광역시">대전광역시</option>
						<option value="울산광역시">울산광역시</option>
						<option value="세종특별자치시">세종특별자치시</option>
						<option value="경기도">경기도</option>
						<option value="강원도">강원도</option>
						<option value="충청북도">충청북도</option>
						<option value="충청남도">충청남도</option>
						<option value="전라북도">전라북도</option>
						<option value="전라남도">전라남도</option>
						<option value="경상북도">경상북도</option>
						<option value="경상남도">경상남도</option>
						<option value="제주특별자치도">제주특별자치도</option>
					</select> 
					<input type="text" name="city" class="form-control" placeholder="시/군/구">
					<input type="text" name="addrs" class="form-control" placeholder="도로명 주소를 입력하세요">
					<input type="text" name="addrd" class="form-control" placeholder="세부 주소를 입력하세요">
				</div>
			</div>
			<br>
			<div class="form-group  row">
				<label class="col-sm-2">Website</label>
				<div class="col-sm-3">
					<input name="website" type="text" class="form-control" placeholder="website" >
				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-2">store's products</label>
				<div class="col-sm-3">
					<input name="product" type="text" class="form-control" placeholder="products" >
				</div>
			</div>
			<br><br>
			<div class="form-group  row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type="submit" class="btn btn-primary " value="등록 " > 
					<input type="reset" class="btn btn-primary " value="취소 " onclick="reset()" >
				</div>
			</div>
		</form>
	</div>
<%@ include file = "/footer.jsp" %>
</body>
</html>