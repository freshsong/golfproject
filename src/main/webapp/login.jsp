<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file="inc/header.jsp" %>   

    
<section class="login">
<div class="login_listbox">
	<h1 class="text-center mt-5">로그인</h1>
	<p class="text-center">
		스파크존에 오신것을 환영합니다.
	</p>
	<form name="registerForm" action="login" id="registerform" class="registerform" method="post">
		<div class="join-form mt-5">
			<div class="memform">
				<div class="col-10 mt-4">
					<label for="userid">아이디</label>
					<input type="text" name="userid" id="userid" class="form-control" placeholder="아이디를 입력해주세요.">
				</div>
				<div class="col-10 mt-4">
					<label for="pass">비밀번호</label>
					<input type="password" name="pass" id="pass" class="form-control" placeholder="비밀번호를 입력해주세요.">
				</div>
				<div class="mt-4 ml-4">
					<input type="checkbox" id="remember" name="remember">
					<label for="remember" class="ml-2">아이디저장</label>
				</div>
				<div class="newmem">
					<p>
						 아직 회원이 아니신가요? <br>
						 스파크존 골프클럽의 회원이 되시면 <br>
						 많은 서비스를 누리실 수 있습니다!
					</p>
					<a href="join.jsp" class="btnGay">회원가입</a>
				</div>
				<div class="loginbtn col-12 text-center mt-5">
					<a href="index.jsp"><button class="btn btn-danger px-5 mx-2" type="button">취소</button></a>
					<button class="btn btn-primary px-5 mx-2" type="submit">로그인</button>
				</div>
			</div>
			<!--/memform-->
		</div>
		<!--/join-form-->
	</div>
	<!--/listbox-->
	</section>
	
	
	
	

<%@ include file="inc/footer.jsp" %>   