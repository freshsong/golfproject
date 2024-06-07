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

<div class="reservation">
    <div id="calendar-container">
        <button id="prevMonth">&#9664;</button>
        <div id="calendars">
            <div id="calendar1" class="calendar"></div>
            <div id="calendar2" class="calendar"></div>
        </div>
        <button id="nextMonth">&#9654;</button>
    </div>
    <div id="scheduleList" class="schedule-list"></div>
    <div id="loginModal" class="modal">
        <div class="modal-content">
            <span class="close">&times;</span>
            <p>로그인 혹은 회원가입 후 이용해주세요.</p>
            
        </div>
    </div>
</div><!--/reservation-->

<%@ include file="inc/footer.jsp" %>   