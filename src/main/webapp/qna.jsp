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
<div id="qna-container">
    <div class="qna_area">
        <ul class="qna_std">
            <li class="on"><a href=""><span>궁금하신 사항은 자유롭게 문의남겨주시면 답변드리겠습니다.</span></a></li>
        </ul>
       <div class="row">
        <div class="col-12"><input type="button" class="btn btn-outline-dark float-right mt-3" value="문의하기" onclick="redirectToWritePage()"></div>
       </div>
        <table class="table table-hover text-center mt-5">
            <colgroup>
            <col width="10%">
            <col width="55%">
            <col width="10%">
            <col width="20%">
            </colgroup>
            <thead>
                <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>조회수</th>
                    <th>글쓴이</th>
                    <th>날짜</th>
                </tr>
            </thead>
            <tbody>
                <!--loop-->
                <tr>
                    <td class="text-center">1</td>
                    <td><a href="#">제목입니다. 이곳에 제목 </a></td>
                    <td class="text-center">12</td>
                    <td class="text-center">글쓴이</td>
                    <td class="text-center">2024.02.26</td>

                </tr>
                <tr>
                    <td class="text-center">1</td>
                    <td><a href="#">제목입니다. 이곳에 제목 </a></td>
                    <td class="text-center">12</td>
                    <td class="text-center">글쓴이</td>
                    <td class="text-center">2024.02.26</td>

                </tr>
                <tr>
                    <td class="text-center">1</td>
                    <td><a href="#">제목입니다. 이곳에 제목</a></td>
                    <td class="text-center">12</td>
                    <td class="text-center">글쓴이</td>
                    <td class="text-center">2024.02.26</td>

                </tr>
                <tr>
                    <td class="text-center">1</td>
                    <td><a href="#">제목입니다. 이곳에 제목</a></td>
                    <td class="text-center">12</td>
                    <td class="text-center">글쓴이</td>
                    <td class="text-center">2024.02.26</td>

                </tr>
                <tr>
                    <td class="text-center">1</td>
                    <td><a href="#">제목입니다. 이곳에 제목 </a></td>
                     <td class="text-center">12</td>
                     <td class="text-center">글쓴이</td>
                    <td class="text-center">2024.02.26</td>

                </tr>
                <tr>
                    <td class="text-center">1</td>
                    <td><span class="re"></span><a href="#">제목입니다. 이곳에 제목</a></td>
                    <td class="text-center">12</td>
                    <td class="text-center">글쓴이</td>
                    <td class="text-center">2024.02.26</td>

                </tr>
                <tr>
                    <td class="text-center">1</td>
                    <td><span class="re"></span><a href="#">제목입니다. 이곳에 제목</a></td>
                    <td class="text-center">12</td>
                    <td class="text-center">글쓴이</td>
                    <td class="text-center">2024.02.26</td>

                </tr>
                <!--/loop-->
            </tbody>
        </table>
        
    <!--paging-->
    <div class="paging paging-basic">
        <div class="inner">
            <div class="page-group">
                <button type="button" onclick="goPage(1)" class="btn first" title="처음 페이지"><span><i class="arw arw-notice-first">이전</i></span></button>
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
    </div>
  </div>  
  <%@ include file="inc/footer.jsp" %>   