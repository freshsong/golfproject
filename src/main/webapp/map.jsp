<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<%@ include file="inc/header.jsp" %>  
<div class="mapmain">
 <!-- main1_slide -->
 <div class="slogan">
        <img src="image/main1-6.jpeg" alt="001" width="100%" height="500px" style="position: relative;">
				<div class="main1_info" style="position: absolute;">
					<h1>회사소개 </h1>
					<h1>Home  &gt;  About  &gt;  오시는 길</h1>
				</div>
</div>
<p class="map_info"> 오시는 길 </p>
<div class="kakaomap">
<div class="contentInner"> 
			<!-- * 카카오맵 - 지도퍼가기 -->
			<!-- 1. 지도 노드 -->
			
		<div id="daumRoughmapContainer1587716510688" style="width:100%" class="root_daum_roughmap root_daum_roughmap_landing os_mac">
	
		<span class="map_border border1"></span>
		<span class="map_border border2"></span>
		<span class="map_border border3"></span>
		<span class="map_border border4"></span>
		<div class="wrap_btn_zoom">
			<button class="btn_zoom_in hide_text"></button>
			<button class="btn_zoom_out hide_text"></button>
			<button class="btn_zoom_reset hide_text"></button>
		</div>
	</div>
</div>

</div> <!-- /kakaomap -->
<!--
					2. 설치 스크립트
					* 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
				-->
				<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
				<!-- 
				<script charset="UTF-8" src="https://t1.daumcdn.net/kakaomapweb/place/jscss/roughmap/9148b03e/roughmapLander.js"></script> -->
				<!-- 3. 실행 스크립트 -->
				<script charset="UTF-8">
					new daum.roughmap.Lander({
						"timestamp" : "1587716510688",
						"key" : "y4qj",
						"mapHeight" : "600"
					}).render();
				</script>
				<div class="map_addr">
				<div class="clfix map_txt">
					<p class="fl">
					<img src="image/map_ic.png"> 서울 강남구 영동대로 302 (국제빌딩 22층)</p>
					<div class="fr">
						<p class="clfix">
							<span>
							<img src="image/tel_ic.png" class="fl">
							<span class="fl">
								<b>TEL</b><br>02-1234-1234
							</span>
							</span>
							<span>
							<img src="image/tel_ic2.png" class="fl">
							<span class="fl">
								<b>FAX</b><br>02-1234-1234
							</span>
							</span>
						</p>
					</div>
				</div>
				<div class="map_txt2">
					<p>교통편</p>
					<ul class="clfix">
						<li class="fl">
							<p class="fl"><img src="image/tel_ic3.png"></p>
							<span class="fl">
								<b>버스</b><br>새마을운동중앙회 하차
							</span>
						</li>
						<li class="fl">
							<p class="fl"><img src="image/tel_ic4.png"></p>
							<span class="fl">
								<b>지하철</b><br>삼성역 2번 출구 도보로 15분, 학여울역 1번 출구 도보로 10분
							</span>
						</li>
					</ul>
				</div>
				</div> <!-- /map_addr -->
			</div>
</div> <!--  /mapmain-->
<%@ include file="inc/footer.jsp" %>   