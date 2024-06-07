<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SPARK ZONE(premium golfclub)</title>
<!--Mobile-->
<link rel="icon" type="image/icon" href="image/favicon_io 2/apple-touch-icon.png">
<meta name="description" content="my first solo project">
<meta name="keywords" content="html, css, javascript, bootstrap, java">
<meta name="author" content="freshsong">
<!--stylesheet -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;200;300;400;500;600;700;800;900&family=Roboto+Slab:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/remixicon/4.1.0/remixicon.min.css" integrity="sha512-i5VzKip7owqOGjb0YTF8MR2J9yBVO3FLHeazKzLp354XYTmKcqEU3UeFYUw82R8tV6JqxeATOfstCfpfPhbyEA==" crossorigin="anonymous" referrerpolicy="no-referrer"/>
<link rel="stylesheet" href="css/animate.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/slick.css">
<link rel="stylesheet" href="css/slick-theme.css">
<link rel="stylesheet" href="css/root.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>
<link rel="stylesheet" href="css/style.css">
<!--script-->
<script src="js/jquery.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/slick.min.js"></script>
<script src="js/script.js"></script>
<script src="https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-element-bundle.min.js"></script>
</head>
<body>
<!-- 헤더위 -->
<header id="seheader">
<section class="header">
<div class="headerup">
	<!-- 왼쪽 메뉴 버튼 (계정)-->
	<div class="hup_left float-left">
		<a href="#"><i class="ri-kakao-talk-fill"></i></a>
		<a href="#"><i class="ri-instagram-fill"></i></a>
		<a href="#"><i class="ri-facebook-fill"></i></a>
	</div>
	<!-- 오른쪽 로그인, 회원가입-->
	<div class="hup_right float-right">
		<a href="index.jsp">HOME</a>
		<a href="join.jsp">회원가입</a>
		<a href="login.jsp">로그인</a>
	</div>
	<!--/rightnavbar-->
</div>
<!--/headerup-->
<!-- 헤더 로고 / 토글메뉴-->
<div class="headerlogo header_wrap" id="headerdown">
	<a href="#"><img src="image/logo.png" alt="logo"></a>
</div>
<div class="header_inner">
	<nav class="nav">
	<ul>
		<li><a href="#">ABOUT</a>
		<ul class="submenu">
			<li><a href="#">인사말</a></li>
			<li><a href="#">약관안내</a></li>
			<li><a href="map.jsp">오시는길</a></li>
		</ul>
		</li>
		<li><a href="#">시설안내</a>
		<ul class="submenu">
			<li><a href="#">클럽하우스</a></li>
			<li><a href="#">그늘집</a></li>
			<li><a href="#">프로샵</a></li>
		</ul>
		</li>
		<li><a href="#">코스소개</a>
		<ul class="submenu">
			<li><a href="#">코스안내도</a></li>
			<li><a href="#">코스공략</a></li>
		</ul>
		</li>
		<li><a href="#">예약</a>
		<ul class="submenu">
			<li><a href="#">예약안내</a></li>
			<li><a href="#">요금안내</a></li>
			<li><a href="reservation.jsp">온라인예약</a></li>
			<li><a href="#">예약확인/취소</a></li>
		</ul>
		</li>
		<li><a href="#">게시판</a>
		<ul class="submenu">
			<li><a href="notice.jsp">공지사항</a></li>
			<li><a href="event.jsp">EVENT</a></li>
			<li><a href="qna.jsp">QNA</a></li>
			<li><a href="gallery.jsp">갤러리</a></li>
		</ul>
		</li>
		<li><a href="#">내정보</a>
		<ul class="submenu">
			<li><a href="#">정보수정</a></li>
			<li><a href="#">스코어조회</a></li>
		</ul>
		</li>
	</ul>
	</nav>
</div>
<!-- /headerdown -->
</section>
</header>