<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>CLASSING</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,700,900" rel="stylesheet">
    <link href="/resources/index/fonts/icomoon/style.css" rel="stylesheet">
    <link href="/resources/index/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/index/css/jquery-ui.css" rel="stylesheet">
    <link href="/resources/index/css/owl.carousel.min.css" rel="stylesheet">
    <link href="/resources/index/css/owl.theme.default.min.css" rel="stylesheet">
    <link href="/resources/index/css/owl.theme.default.min.css" rel="stylesheet">
    <link href="/resources/index/css/jquery.fancybox.min.css" rel="stylesheet">
    <link href="/resources/index/css/bootstrap-datepicker.css" rel="stylesheet">
    <link href="/resources/index/fonts/flaticon/font/flaticon.css" rel="stylesheet">
    <link href="/resources/index/css/aos.css" rel="stylesheet">
    <link href="/resources/index/css/style.css" rel="stylesheet">
  </head>
  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
  
  <div class="site-wrap">

    <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>
   
    
    <header class="site-navbar py-4 js-sticky-header site-navbar-target" role="banner">
      <div class="container-fluid">
        <div class="d-flex align-items-center">
          <div class="site-logo mr-auto w-25"><a href="/index">CLASSING</a></div>
        </div>
      </div>
    </header>

    <div class="intro-section" id="home-section">
      
      <div class="slide-1" style="background-image: url('/resources/index/images/hero_1.jpg');" data-stellar-background-ratio="0.5">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-12">
              <div class="row align-items-center">
                <div class="col-lg-6 mb-4">
                  <h1  data-aos="fade-up" data-aos-delay="100">완전히 새로운 클래스관리</h1>
                  <p class="mb-4"  data-aos="fade-up" data-aos-delay="200">가정에서도 좀 더 효율적으로 수업을 관리하는 방법</p>
                  <p data-aos="fade-up" data-aos-delay="300"><a href="/index" class="btn btn-primary py-3 px-5 btn-pill">홈으로</a></p>

                </div>

                <div class="col-lg-5 ml-auto" data-aos="fade-up" data-aos-delay="500">
                  <form action="member/findId" id="findId" name="findId" method="post" class="form-box">
                  <input type="hidden" id="mmSeq" name="mmSeq" value="<c:out value="${vo.mmSeq}"/>">
                    <h3 class="h4 text-black mb-4">아이디 찾기</h3>
                    <div class="form-group">
                      <input type="text" class="form-control" id="mmName" name="mmName" placeholder="이름" value="<c:out value="${item.mmName}"/>">
                    </div>
                    <div class="form-group">
                      <input type="text" class="form-control" id="mmPhoneNumber" name="mmPhoneNumber" placeholder="숫자만 입력 (예. 01011112222)">
                    </div>
                    <div class="form-group">
                      <button class="btn btn-primary btn-pill" type="submit" id="btn-submit" name="" >아이디 찾기</button>
                    </div>
	                    <div id="showId"><p class="mb-4" id="showId" style="color: blue; font-size: 15px;"><c:out value="${item.mmName}"/>의 아이디 :</p></div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
</div> 
    

    
     
    <footer class="footer-section bg-white">
        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <div class="border-top pt-5">
            <p>
        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
        Copyright &copy;CLASSING CENTRE ALL RIGHTS RESERVED.<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
       	 <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
      </p>
            </div>
          </div>
          
        </div>
    </footer>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/common/js/validation.js"></script>
<script type="text/javascript">
<!--일반 로그인 -->  
/* $("#btn-submit").on("click",function(seq){ 
	
	$("#mmSeq").val(seq); 
	$("#findId").attr("action", "/selectFindId");
	$("#findId").submit();
	
});  */
$("#showId").hide();
$("#btn-submit").on("click",function(seq){ 
	
	$("#mmSeq").val(seq);
	
	$.ajax({
		async: true 
		,cache: false
		,type: "post"
		,url: "/member/findId"
		,data : { "mmSeq" : $("#mmSeq").val(), "mmName" : $("#mmName").val(), "mmPhoneNumber": $("#mmPhoneNumber").val()}
		,success: function(response) {
			if(response.rt == "success") {
				location.href = "findId";
				$("#showId").show();
				$("#showId").append($("#mmName").val()+" 님의 아이디는 "+"<b>"+${sessId}+"</b>"+"입니다.")
			} else {
				alert("회원없음");
			}
		}			
		,error : function(jqXHR, textStatus, errorThrown){
			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
		}
	});
	
});
<!-- 페이스북 로그인-->


 

</script> 
  
    

  <script src="/resources/index/js/jquery-3.3.1.min.js"></script>
  <script src="/resources/index/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="/resources/index/js/jquery-ui.js"></script>
  <script src="/resources/index/js/popper.min.js"></script>
  <script src="/resources/index/js/bootstrap.min.js"></script>
  <script src="/resources/index/js/owl.carousel.min.js"></script>
  <script src="/resources/index/js/jquery.stellar.min.js"></script>
  <script src="/resources/index/js/jquery.countdown.min.js"></script>
  <script src="/resources/index/js/bootstrap-datepicker.min.js"></script>
  <script src="/resources/index/js/jquery.easing.1.3.js"></script>
  <script src="/resources/index/js/aos.js"></script>
  <script src="/resources/index/js/jquery.fancybox.min.js"></script>
  <script src="/resources/index/js/jquery.sticky.js"></script>

  
  <script src="/resources/index/js/main.js"></script>
    
  </body>
</html>