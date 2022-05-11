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
                  <p data-aos="fade-up" data-aos-delay="300"><button class="btn btn-primary py-3 px-5 btn-pill" onclick="location.href='/memberForm_main'">회원가입하기</button></p>
                </div>

                <div class="col-lg-5 ml-auto" data-aos="fade-up" data-aos-delay="500">
                  <form action="" method="post" class="form-box">
                    <h3 class="h4 text-black mb-4">CLASSING에 로그인</h3>
                    <div class="form-group">
                      <input type="text" class="form-control" id="mmId" name="mmId" placeholder="아이디" value="asd123">
                    </div>
                    <div class="form-group">
                      <input type="password" class="form-control" id="mmPassword" name="mmPassword" placeholder="비밀번호" value="1111">
                    </div>
                    <div class="form-group">
                      <!-- <input type="button" class="btn btn-primary btn-pill" value="로그인하기"> -->
                      <button class="btn btn-primary btn-pill" id="btnLogin" name="">로그인하기</button>
                    </div>
                    <a href="/findId"><span class="mb-4" style="color: gray; font-size: 14px;">아이디 찾기  |</span></a>
                    <a href="/findPwd"><span class="mb-4" style="color: gray; font-size: 14px;">  비밀번호 찾기</span></a>
                  </form>
                </div>
              </div>
            </div>
            
          </div>
        </div>
      </div>
    </div>
    <div class="site-section" id="programs-section">
      <div class="container">
        <div class="row mb-5 justify-content-center">
          <div class="col-lg-7 text-center"  data-aos="fade-up" data-aos-delay="">
            <h2 class="section-title">이런 고민이 든다면 CLASSING시작해보세요.</h2>
            <p>뉴스피드형 서비스는 자료 관리가 어렵다. 좀 더 효율적으로 자료공유를 하고싶다. <br>전면 등교에도 최소한의 클래스 도구는 필요하다.</p>
          </div>
        </div>
        <div class="row mb-5 align-items-center">
          <div class="col-lg-7 mb-5" data-aos="fade-up" data-aos-delay="100">
            <img src="/resources/index/images/undraw_youtube_tutorial.svg" alt="Image" class="img-fluid">
          </div>
          <div class="col-lg-4 ml-auto" data-aos="fade-up" data-aos-delay="200">
            <h2 class="text-black mb-4">비대면 수업 서비스 제공</h2>
            <p class="mb-4">계속되는 비대면 수업으로 인한 불편함<br>ZOOM을 이용한 CLASSING으로 해결</p>
          </div>
        </div>

        <div class="row mb-5 align-items-center">
          <div class="col-lg-7 mb-5 order-1 order-lg-2" data-aos="fade-up" data-aos-delay="100">
            <img src="/resources/index/images/undraw_teaching.svg" alt="Image" class="img-fluid">
          </div>
          <div class="col-lg-4 mr-auto order-2 order-lg-1" data-aos="fade-up" data-aos-delay="200">
            <h2 class="text-black mb-4">한번에 배부하고 <br>한눈에 파악하도록</h2>
            <p class="mb-4">이제 과제를 자동으로 수합하고 빠르게 채점하세요. </p>

          </div>
        </div>

        <div class="row mb-5 align-items-center">
          <div class="col-lg-7 mb-5" data-aos="fade-up" data-aos-delay="100">
            <img src="/resources/index/images/undraw_teacher.svg" alt="Image" class="img-fluid">
          </div>
          <div class="col-lg-4 ml-auto" data-aos="fade-up" data-aos-delay="200">
            <h2 class="text-black mb-4">우리 클래스 소통은 <br>이 앱 하나로 끝</h2>
            <p class="mb-4">실시간 채팅기능으로 번호 노출 걱정 없이 소통하세요..</p>

          </div>
        </div>

      </div>
    </div>

    <div class="site-section" id="teachers-section">
      <div class="container">

        <div class="row mb-5 justify-content-center">
          <div class="col-lg-7 mb-5 text-center"  data-aos="fade-up" data-aos-delay="">
            <h2 class="section-title">클래씽은 함께 성장합니다.</h2>
          </div>
        </div>

        <div class="row">

          <div class="col-md-6 col-lg-4 mb-4" data-aos="fade-up" data-aos-delay="100">
            <div class="teacher text-center">
              <img src="/resources/index/images/person_1.jpg" alt="Image" class="img-fluid w-50 rounded-circle mx-auto mb-4">
              <div class="py-2">
                <h3 class="text-black">인천 D초등학교</h3>
                <p>전담교사라 학생들과 대화방, 과제방, 정보 교류방으로 사용해요. 학생들끼리 대화를 나눌 수 있고 블렌디드 학습도 가능해서 편하고 좋아요.</p>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-4" data-aos="fade-up" data-aos-delay="200">
            <div class="teacher text-center">
              <img src="/resources/index/images/person_2.jpg" alt="Image" class="img-fluid w-50 rounded-circle mx-auto mb-4">
              <div class="py-2">
                <h3 class="text-black">경기 J고등학교</h3>
                <p>조회와 종례에 클래스팅을 사용합니다. 학생들에게 실시간으로 공지 알림이 가서 좋고요, 댓글을 달면 즉시 확인할 수 있어서 너무 좋습니다.</p>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-4" data-aos="fade-up" data-aos-delay="300">
            <div class="teacher text-center">
              <img src="/resources/index/images/person_3.jpg" alt="Image" class="img-fluid w-50 rounded-circle mx-auto mb-4">
              <div class="py-2">
                <h3 class="text-black">경기 O초등학교</h3>
                <p>클래스팅이 없었다면 학부모 소통이 어려웠을 거예요. 연락처를 공개하지 않아도 되어서 저녁과 주말을 잘 보내고 있어요. 클래스팅 최고예요!</p>
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
            <p> Copyright &copy;CLASSING CENTRE ALL RIGHTS RESERVED.<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a> </p>
            </div>
          </div>
        </div>
    </footer>

  
    
  </div> <!-- .site-wrap -->
<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">

<!--일반 로그인 -->  
 $("#btnLogin").on("click",function(){
	
	$.ajax({
		async: true 
		,cache: false
		,type: "post"
		,url: "/member/loginProc"
		,data : { "mmId" : $("#mmId").val(), "mmPassword" : $("#mmPassword").val()}
		,success: function(response) {
			if(response.rt == "success") { 
					location.href = "/main";
			} else {
				alert("회원없음");
			}
		}			
		,error : function(jqXHR, textStatus, errorThrown){
			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
		}
	});
	alert("눌리냐");
});  
 

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

<script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>  
    
</body>
</html>