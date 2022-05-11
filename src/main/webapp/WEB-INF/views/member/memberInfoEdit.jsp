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
<link href="/resources/user/css/memberInfo.css" rel="stylesheet" type="text/css">
<title>main</title>
</head>
<body>
<%@ include file="/WEB-INF/views/member/include/main_header.jsp" %><!-- header -->

<div class="container" id="main">
	<div class="row">
		<div class="col-md-12">
			<p id="title">개인정보 수정</p>
			<p id="sub">프로필</p>
			<div class="col-10 mx-auto mb-4">
				<label class="form-label">이름</label>
				<input type="text" class="form-control" id="" name="" value="윤수빈" placeholder="" > 
			</div>
			<div class="col-10 mx-auto mb-4">
				<label class="form-label">프로필 사진</label>
				<div class="input-group">
				  <input type="file" class="form-control" id="inputGroupFile02">
				</div>
			</div>
			<div class="col-10 mx-auto mb-4">
				<label class="form-label">학교</label>
				<div class="input-group">
				<input type="text" class="form-control" id="" name="" placeholder=""> 
				<button class="btn btn-outline-secondary" type="button" id="" data-bs-toggle="modal" data-bs-target="#schModal"><i class= "fas fa-search"></i></button>
				<div class="modal fade" id="schModal" tabindex="-1" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">학교 / 기관 검색</h5>
							<button type="button" class="btn-close"
								data-bs-dismiss="modal" aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<h3 style="text-align: center">학교 및 기관 검색</h3>
							<br> <br><div class="input-group mb-3"> <input class="form-control form-control-lg" type="text" placeholder="이름 입력"> <br>
							<a class="btn btn-outline-secondary" role="button" id="button-addon2">검색</a>
						</div>
						<p>[학교·기관 이름] 또는 [지역 이름 + 학교·기관 이름]으로 검색해 보세요.</p>
						<p>예) 클팅중학교 (X), 서울클팅중학교 (O)</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
						<button type="button" data-bs-toggle="modal" class="btn btn-primary">확인</button>
					</div>
				</div>
			</div>
			</div>
				</div>
			</div>
			<div class="col-10 mx-auto mb-4">
				<label class="form-label">학년</label>
				<select class="form-select" id="kbmmKoreanNy" name="kbmmKoreanNy" >
					<option >:: 학년 ::</option>
					<option value="1" selected>1학년</option>	
					<option value="2">2학년</option>	
					<option value="3">3학년</option>	
					<option value="4">4학년</option>	
					<option value="5">5학년</option>	
					<option value="6">6학년</option>	
				</select>
			</div>
			<div class="col-10 mx-auto mb-4">
				<label class="form-label">프로필</label>
				<textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
			</div>
			<div class="col-10 mx-auto mb-4">
				<label class="form-label">성별</label>
				<select class="form-select" id="" name="" >
					<option >:: 성별 ::</option>
					<option value="1">남성</option>	
					<option value="2" selected>여성</option>	
				</select>
			</div>
			<div class="col-10 mx-auto mb-4">
				<label class="form-label">생년월일</label>
				<input type="text" class="form-control" id="" name="" value="2022-12-12" placeholder=""> 
			</div>
		<hr>
			<p id="sub">계정</p>
			<div class="col-10 mx-auto mb-4">
				<label class="form-label">아이디</label>
				<input type="text" class="form-control" id="" name="" value="asdasdasd" placeholder="" > 
			</div>
			<div class="col-10 mx-auto mb-4">
				<label class="form-label">이메일 주소</label>
				<input type="text" class="form-control" id="" name="" value="asd123@naver.com" placeholder="" > 
			</div>
			<div class="col-10 mx-auto mb-4">
				<label class="form-label">휴대폰 번호</label>
				<input type="text" class="form-control" id="" name="" value="010-1111-1111" placeholder="" > 
			</div>
			<div class="col-10 mx-auto mb-4">
				<label class="form-label">역할</label>
				<select class="form-select" id="kbmmKoreanNy" name="kbmmKoreanNy" >
					<option disabled>:: 역할 ::</option>
					<option value="">학생</option>	
					<option value="" selected>선생님</option>	
				</select>
			</div>
		<hr>
			<p id="sub">알림설정</p>
			<div class="col-10 mx-auto mb-4">
				<label class="form-label">클래스 초대 수락</label>
				<div class="col-10">
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="kbmmUseConsentNy_c" id="kbmmUseConsentNy_cy" value="1" checked>
						<label class="form-check-label" for="kbmmUseConsentNy_cy">동의</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="kbmmUseConsentNy_c" id="kbmmUseConsentNy_cn" value="0" >
						<label class="form-check-label" for="kbmmUseConsentNy_cn">비동의</label>
					</div>
	 			</div> 
			</div>
			<div class="col-10 mx-auto mb-4">
				<label class="col-form-label">홈 소식</label>
				<div class="col-10">
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="home" id="home1" value="1" checked>
						<label class="form-check-label" for="home1">동의</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="home" id="home0" value="0" >
						<label class="form-check-label" for="home0">비동의</label>
					</div>
	 			</div>
	 		</div>
			<div class="col-10 mx-auto mb-4">
				<label class="col-form-label">답글</label>
				<div class="col-10">
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="reply" id="reply1" value="1" checked>
						<label class="form-check-label" for="reply1">동의</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="reply" id="reply0" value="0" >
						<label class="form-check-label" for="reply0">비동의</label>
					</div>
	 			</div>
	 		</div>

		<hr>
			<div class="col-10 mx-auto mb-4">
			<button type="button" class="btn btn-outline-secondary btn-lg mt-1 w-25 p-2" id="btn-back" onclick="location.href='memberInfo'">뒤로 가기</button>
			<button type="button" class="btn btn-outline-primary btn-lg mt-1 w-25 p-2" id="btn-edit" data-bs-toggle="modal" data-bs-target="#formModal" >정보 수정</button>
			<div class="modal fade" id="formModal" tabindex="-1" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="editModalLabel">정보 수정</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					</div>
					<div class="modal-body">수정되었습니다.</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
						<a class="btn btn-primary" role="button" href="/memberInfo">확인</a>
					</div>
					</div>
				</div>
			</div>
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

<script type="text/javascript">

$("#roleT").hide();
$("#roleS").hide();

if(${sessTeacher}==0){
	$("#roleT").hide();		
	$("#roleS").show();		
	$("#btn-open").hide();		
}else{
	$("#roleT").show();		
	$("#roleS").hide();		
	$("#btn-open").show();		
} 


$("#btnLogout").on("click", function(){
	
	$.ajax({
		async: true 
		,cache: false
		,type: "post"
		,url: "/member/logoutProc"
		/* ,data : { "mvmmId" : $("#mvmmId").val(), "mvmmPassword" : $("#mvmmPassword").val()} */
		,success: function(response) {
			if(response.rt == "success") {
				location.href = "/index";
			} else {
				// by pass
			}
		}
		,error : function(jqXHR, textStatus, errorThrown){
			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
		}
	});	
});
</script>



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