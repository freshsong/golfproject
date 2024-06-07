<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="inc/header.jsp" %>   
    
    
   <!-- main1_slide -->
 <div class="main1_slide">
    <div class="main1_slider">
        <div><img src="image/main1-1.jpeg" alt="001" width="100%" height="500px"></div>
        <div><img src="image/main1j-2.jpeg" alt="002" width="100%" height="500px"></div>
        <div><img src="image/main1-3.jpeg" alt="003" width="100%" height="500px"></div>
        <div><img src="image/main1-4.jpeg" alt="004" width="100%" height="500px"></div>
        <div><img src="image/main1-5.jpeg" alt="005" width="100%" height="500px"></div>
        <div><img src="image/main1-6.jpeg" alt="006" width="100%" height="500px"></div>
    </div>
</div>
<!-- /main1_slide -->

<!-- event -->
<div class="event">
<div class="event_area">
    <ul class="event_std">
        <li class="on"><a href="evnet.jsp"><span>진행중인 이벤트</span></a></li>
    </ul>

    <div class="col event_list e_container mt-5">
        <div class="row e_box">
            <img src="image/main1j-2.jpeg" alt="Placeholder Image">
                <h3>카트피 무료 이벤트</h3>
                <p>기간: 2024-05-07 ~ 2024-05-31</p>
                <p>4인 18홀 종료 시 하늘코스 카트피 8만원 면제!</p>
        </div>
        <div class="row e_box">
            <img src="image/main1-4.jpeg" alt="Placeholder Image">
                <h3>신규가입 경품 응모 이벤트</h3>
                <p>기간: 2024-05-07 ~ 2024-05-31</p>
                <p>4인 18홀 종료 시 하늘코스 카트피 8만원 면제!</p>
        </div>
        <div class="row e_box">
            <img src="image/main1-5.jpeg" alt="Placeholder Image">
                <h3>펫 동반 라운드</h3>
                <p>기간: 2024-05-07 ~ 2024-05-31</p>
                <p>4인 18홀 종료 시 하늘코스 카트피 8만원 면제!</p>
        </div> 
    </div> <!--/event_list-->

    <div class="col event_list e_container mt-5">
        <div class="row e_box">
            <img src="image/main1j-2.jpeg" alt="Placeholder Image">
                <h3>카트피 무료 이벤트</h3>
                <p>기간: 2024-05-07 ~ 2024-05-31</p>
                <p>4인 18홀 종료 시 하늘코스 카트피 8만원 면제!</p>
        </div>
        <div class="row e_box">
            <img src="image/main1-4.jpeg" alt="Placeholder Image">
                <h3>신규가입 경품 응모 이벤트</h3>
                <p>기간: 2024-05-07 ~ 2024-05-31</p>
                <p>4인 18홀 종료 시 하늘코스 카트피 8만원 면제!</p>
        </div>
        <div class="row e_box">
            <img src="image/main1-5.jpeg" alt="Placeholder Image">
                <h3>펫 동반 라운드</h3>
                <p>기간: 2024-05-07 ~ 2024-05-31</p>
                <p>4인 18홀 종료 시 하늘코스 카트피 8만원 면제!</p>
        </div> 
    </div> <!--/event_list-->

    <div class="col event_list e_container mt-5">
        <div class="row e_box">
            <img src="image/main1j-2.jpeg" alt="Placeholder Image">
                <h3>카트피 무료 이벤트</h3>
                <p>기간: 2024-05-07 ~ 2024-05-31</p>
                <p>4인 18홀 종료 시 하늘코스 카트피 8만원 면제!</p>
        </div>
        <div class="row e_box">
            <img src="image/main1-4.jpeg" alt="Placeholder Image">
                <h3>신규가입 경품 응모 이벤트</h3>
                <p>기간: 2024-05-07 ~ 2024-05-31</p>
                <p>4인 18홀 종료 시 하늘코스 카트피 8만원 면제!</p>
        </div>
        <div class="row e_box">
            <img src="image/main1-5.jpeg" alt="Placeholder Image">
                <h3>펫 동반 라운드</h3>
                <p>기간: 2024-05-07 ~ 2024-05-31</p>
                <p>4인 18홀 종료 시 하늘코스 카트피 8만원 면제!</p>
        </div> 
    </div> <!--/event_list-->

    <!--paging-->
    <div class="paging paging-basic">
        <div class="inner">
            <div class="page-group">
                <button type="button" onclick="goPage(1)" class="btn first" title="처음 페이지"><span><i class="arw arw-notice-first">처음</i></span></button>
                <button type="button" onclick="goPage(0)" class="btn prev" title="이전 페이지"><span><i class="arw arw-notice-prev">이전</i></span></button>
            </div>
            <ul class="num-group">
                <li><button type="button" onclick="goPage(1)" class="btn" id="page1" aria-current="true"><span>1</span></button></li>
                <li><button type="button" onclick="goPage(2)" class="btn" id="page2"><span>2</span></button></li>
                <li><button type="button" onclick="goPage(3)" class="btn" id="page3"><span>3</span></button></li>
            </ul>
            <div class="page-group">
                <button type="button" onclick="goPage(4)" class="btn next" title="다음 페이지"><span><i class="arw arw-notice-next">다음</i></span></button>
                <button type="button" onclick="goPage(3)" class="btn last" title="마지막 페이지"><span><i class="arw arw-notice-last">마지막</i></span></button>
            </div>
        </div>
    </div> <!--/paging-->
</div> <!--/event_area-->
</div> <!--/event-->

<%@ include file="inc/footer.jsp" %>   
    