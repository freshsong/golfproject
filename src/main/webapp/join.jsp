<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="inc/header.jsp" %>   

    <section class="join">
<div class="join_listbox">
	<h1 class="text-center mt-5">회원가입</h1>
	<p class="text-danger text-center">
		* 회원가입을 위해서 해당 내용을 빠짐없이 기재해주세요.
	</p>
	<form name="registerForm" action="joinok.jsp" id="registerform" class="registerform" method="post">
		<div class="join-form mt-5">
			<div class="memform">
				<div class="col-10">
					<label for="name">이름</label>
					<input type="text" name="name" id="name" class="form-control" placeholder="성함을 기재해주세요.">
				</div>
				<div class="col-10 mt-4">
					<label for="userid">아이디</label>
					<input type="text" name="userid" id="userid" class="form-control" placeholder="아이디를 입력해주세요.">
				</div>
				<div class="col-10 mt-4">
					<label for="pass">비밀번호</label>
					<input type="password" name="pass" id="pass" class="form-control" placeholder="비밀번호를 입력해주세요.">
				</div>
				<div class="col-10 mt-4">
					<label for="birth" class="">생년월일 (주민번호 앞 6자리)</label>
					<input type="text" name="birth" id="birth" class="form-control" placeholder="예) 910715">
				</div>
				<div class="col-10 mt-4">
					<label for="email" class="">이메일 주소</label>
					<input type="text" name="email" id="email" class="form-control" placeholder="예) yourmail@gmail.com">
				</div>
				<div class="col-10 mt-4">
					<label for="phoneNum">전화번호 ( - 없이 입력해주세요.)</label>
					<input type="text" name="phoneNum" id="phoneNum" class="form-control" placeholder="예) 01000000000">
				</div>
			</div>
			<div class="agree-check">
				<input type="checkbox"/> 이용약관 개인정보 수집 및 이용, 마케팅 활용 선택에 모두 동의합니다.
			</div>
			<div class="col-12 text-center mt-5">
				<a href="index.jsp"><button class="btn btn-danger px-4 mx-2" type="button">취소</button></a>
				<button class="btn btn-primary px-4 mx-2" type="submit">전송</button>
			</div>
		</div>
		<!--/memform-->
	</div>
	<!--/join-form-->
</div>
<!--/listbox-->
</section>




<%@ include file="inc/footer.jsp" %>   