<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!doctype html>
<html lang="ko">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->
<link href="/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css"  rel="stylesheet" >
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"> -->

<!-- Custom fonts for this template-->
<link href="/resources/common/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template-->
<link href="/resources/common/css/sb-admin-2.min.css" rel="stylesheet">
<link href="/resources/user/css/classCommon.css" rel="stylesheet">
<link href="/resources/user/css/main_teacher.css" rel="stylesheet" type="text/css">
<title>main</title>
</head>
<body>
<%@ include file="/WEB-INF/views/member/include/main_header.jsp" %><!-- header -->

<div class="container" id="main">
	<div class="row">
	<div class="col-md-7" >
		<img src="/resources/user/image/main_bg.png" class="w-100" id="main_bg"	>
		<div id="classNotice">
		<div class="mb-4" onclick="location.href='/member/classroom/common/classMain'"><img src="/resources/user/image/a3.jpg" width="45" height="45" style="border-radius: 7px;"><span style="font-size: 20px; font-weight: bold; margin-left: 20px; padding-top: 25px;">4조<i class="fa-solid fa-angle-right"></i></span></div>
		<span class="badge bg-info text-light mb-3">공지</span><p class="d-inline" id="title">공지 </p>
		<p id="content">aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>
		<p id="date"> 2022-04-26</p>
		<hr style="color: gray;">
		<span class="badge bg-info text-light mb-3">공지</span><p class="d-inline" id="title">공지 </p>
		<p id="content">bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb</p>
		<p id="date"> 2022-04-26</p>
  		</div>
	</div>
	<div class="col-md-5">
		<div id="classList">
		<h5 style="font-weight: bold; margin-bottom: 30px;">클래스 바로가기</h5>
		<div onclick="location.href='/member/classroom/common/classMain'">
		<div class="col-md-2" id="classImg"><img src="/resources/user/image/a3.jpg"  width="50" height="50" style="border-radius: 7px;"></div>
		<div class="col-md-10 mb-5" id="classInfo"><span><b>4조</b></span><p><span style="">2022</span></div>
		</div>
		<div><button type="button" class="btn btn-outline-secondary btn-lg w-100" id="btn-add" data-bs-toggle="modal" data-bs-target="#addressModal"><i class="fa-solid fa-lock"></i> 클래스 코드로 가입하기</button></div>
		<div class="modal fade" id="addressModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">클래스 가입</h5>
						<button type="button" class="btn-close"
							data-bs-dismiss="modal" aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<h3 style="text-align: center">코드입력</h3>
						<br> <br><div class="input-group mb-3"> <input class="form-control form-control-lg" type="text" placeholder="코드 6자리 입력"> <br>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">닫기</button>
					<button type="button" data-bs-toggle="modal" class="btn btn-primary">확인</button>
				</div>
			</div>
		</div>
	</div> 
		<div><button type="button" class="btn btn-outline-success btn-lg w-100" id="btn-open" onclick="location.href='/classroom/teacher/classForm'"><i class="fa-solid fa-plus"></i> 클래스 생성하기</button></div>
		</div>
	</div>
	<div class="col-md-12">
		<div id="schInfo"> 
		<div class="mb-4"><img src="/resources/user/image/schIcon.png" width="40" height="40" style="border-radius: 7px;"><span style="font-size: 20px; font-weight: bold; margin-left: 20px;">사조 초등학교<i class="fa-solid fa-angle-right"></i></span></div>	
		<p style="margin-left: 10px; font-weight: bold;">공지사항</p>
		<div id="schNotice">아직 공지사항이 없습니다!</div>
		<p style="margin-left: 10px; font-weight: bold;">오늘의 급식</p>
		<div id="schFood"><p><b>4월 26일</b></p><p>친환경강황밥(강황분말)<br>부대찌개<br>새우가스+타르타르소스<br>친환경사과<br>김치</p></div>

		</div>
	</div>
	</div>
</div>
<%@ include file="/WEB-INF/views/member/include/main_footer.jsp" %><!-- footer -->


    <!-- Bootstrap core JavaScript-->
    <script src="/resources/common/vendor/jquery/jquery.min.js"></script>
    <script src="/resources/common/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/resources/common/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/resources/common/js/sb-admin-2.min.js"></script> 




<!-- Option 1: Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>  

<!-- Option 2: Separate Popper and Bootstrap JS -->
<!-- 
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
 -->
</body>
</html>