<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">


 <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand" href="/"><h1 style="padding-left:10px">Zero Waste</h1></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            <span class="navbar-brand mb-0 h1"> 스토어 </span>
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <li><a class="dropdown-item" href="/store/stores.jsp">스토어</a></li>
            <li><a class="dropdown-item" href="/store/addStore.jsp">스토어 등록</a></li>
          </ul>
        </li>
       <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            <span class="navbar-brand mb-0 h1"> 게시판 </span>
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <li><a class="dropdown-item" href="#">리뷰 목록</a></li>
            <li><a class="dropdown-item" href="#">리뷰 작성</a></li>
            <li><a class="dropdown-item" href="#">리뷰 관리</a></li>
          </ul>
        </li>
       <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
          	<span class="navbar-brand mb-0 h1"> 회원관리 </span>
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <li><a class="dropdown-item" href="/member/loginMember.jsp">로그인</a></li>
            <li><a class="dropdown-item" href="/member/logout.jsp">로그아웃</a></li>
            <li><a class="dropdown-item" href="/member/joinMember.jsp">회원가입</a></li>
            <li><a class="dropdown-item" href="/member/detailMember.jsp">회원 정보 관리</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>