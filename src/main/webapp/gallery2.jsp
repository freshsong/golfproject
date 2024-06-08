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
    <div id="gallery-container">
        <div class="g_area">
            <ul class="g_std">
                <li class="off"><a href="gallery.jsp"><span>#골스타그램</span></a></li>
                <li class="on"><a href="gallery2.jsp"><span>#현장스캐치</span></a></li>
            </ul>
            <div>
                <h1 class="text-center mt-5">#현장스캐치</h1>
                <p class="text-center mt-3">인스타그램 이벤트에 당첨된 게시글이 업로드 됩니다.</p>
                <p class="text-center">#이천CC #신라CC #기장CC #프리미엄클럽 #스파크존CC</p>
            </div>
            <div class="g_list mt-5">
                <div class="g_box">
                    <img src="image/main1j-2.jpeg" alt="Placeholder Image">
                    <div class="content">텍스트1</div>
                </div>
                <div class="g_box">
                    <img src="image/main1-4.jpeg" alt="Placeholder Image">
                    <div class="content">텍스트1</div>
                </div>
                <div class="g_box">
                    <img src="image/main1-5.jpeg" alt="Placeholder Image">
                    <div class="content">텍스트1</div>
                </div>
                <div class="g_box">
                    <img src="image/main1j-2.jpeg" alt="Placeholder Image">
                    <div class="content">텍스트1</div>
                </div>
                <div class="g_box">
                    <img src="image/main1-4.jpeg" alt="Placeholder Image">
                    <div class="content">텍스트1</div>
                </div>
                <div class="g_box">
                    <img src="image/main1-5.jpeg" alt="Placeholder Image">
                    <div class="content">텍스트1</div>
                </div>
                <div class="g_box">
                    <img src="image/main1j-2.jpeg" alt="Placeholder Image">
                    <div class="content">텍스트1</div>
                </div>
                <div class="g_box">
                    <img src="image/main1-4.jpeg" alt="Placeholder Image">
                    <div class="content">텍스트1</div>
                </div>
                <div class="g_box">
                    <img src="image/main1-5.jpeg" alt="Placeholder Image">
                    <div class="content">텍스트1</div>
                </div>
            </div> <!--/g_list-->

    
   <!--paging-->
    <div class="paging paging-basic">
        <div class="inner">
            <div class="page-group">
                <button type="button" onclick="goPage(1)" class="btn first" title="처음 페이지"><span><<</span></button>
                <button type="button" onclick="goPage(0)" class="btn prev" title="이전 페이지"><span><</span></button>
            </div>
                <ul class="num-group">
                    <li><button type="button" onclick="goPage(1)" class="btn" id="page1" aria-current="true"><span>1</span></button></li>
                    <li><button type="button" onclick="goPage(2)" class="btn" id="page2"><span>2</span></button></li>
                    <li><button type="button" onclick="goPage(3)" class="btn" id="page3"><span>3</span></button></li>
                </ul>
            <div class="page-group" >
                <button type="button" onclick="goPage(4)" class="btn next" title="다음 페이지"><span>></span></button>
                <button type="button" onclick="goPage(3)" class="btn last" title="마지막 페이지"><span>>></span></button>
            </div>
        </div>
    </div> <!--/paging--> 

</div> <!--/g_area-->
</div>





<%@ include file="inc/footer.jsp" %>   