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
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" />

<!-- Custom fonts for this template-->
<link href="../../../../resources/common/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template-->
<link href="../../../../resources/common/css/sb-admin-2.css" rel="stylesheet">
<link href="../../../../resources/common/css/classCommon.css" rel="stylesheet">
<link href="../../../../resources/common/css/boardCss.css" rel="stylesheet">
<title>회원추가</title>



<style type="text/css">
/*  	body{
		background-color: #F9F9FA;
	}
 */
 body{
		background-color: #F6F9F7;
	}
#sidebar {
	background-color: white;
}

.btn-toggle {
	font-size: 15px;
	font-weight: bold;
}

#home {
	margin-left: 40px;
}

#class {
	margin-left: 20px;
}

.icon {
	display: inline;
	margin-right: 20px;
}

#classImg {
	float: left;
}

#classInfo {
	float: right;
	font-size: 15px;
	padding-top: 3px;
}

#menuList {
	clear: both;
}

#btn-add {
	border-radius: 50px;
	font-size: 14px;
	font-weight: bold;
	margin-top: 10px;
	margin-bottom: 30px;
}

.profile_box {
	border-radius: 70%;
	overflow: hidden;
	width: 30px;
	height: 30px;
}

.profile {
	width: 100%;
	height: 100%;
	object-fit: cover;
}



.container_title {
	border: 1px solid #dee2e6 !important;
	border-radius: 0.25rem;
	padding: 1.5rem;
	background-color: white;
	margin-bottom: 1.3rem;
}

.container_title>.header {
	font-size: 1.5rem;
	font-weight: bold;
	color: #5a5c69;
}

.container_title>.body {
	font-size: 0.8rem;
	font-weight: 500;
}

.container_title>.footer {
	display: flex;
	justify-content: end;
}

.container_title>.footer>button {
	width: 110px;
}

.homework_list > div {
	 box-shadow: 0 0.15rem 1.75rem 0 rgba(58, 59, 69, 0.15) !important;
}


.container_base:nth-child(2) {
	border-radius: 0.25rem 0.25rem 0 0;
}

.container_base:last-child {
	border-radius: 0 0 0.25rem 0.25rem;
	border-bottom-style: solid;
}

.container_base .homework_listitem {
	padding: 0px;
}

.container_base .header {
	margin: 0.5rem 0 0.5rem 0;
}

.container_base .header {
	display:flex;
	align-items:center;
	gap : 0.5rem;
}

.container_base .header>span {
	font-size: 0.75rem;
}


.container_base .header>span:nth-child(3) {
	color: #858796;
	font-weight: 400;
}

.container_base .body {
	margin: 0.15rem;
}

.container_base .body>.badge {
	padding: 6px;
}

.container_base .body>span:nth-child(3) {
	color: #5a5c69;
}

.container_base .body>div:nth-child(4) {
	font-size: 0.8rem;
}

.container_base .footer {
	margin-top: 3rem;
}

.container_base .footer>* {
	margin-right: 0.5rem;
}

.badge_hw {
	background-color: #cfe2f3;
	color: #4e73df;
}

.badge_after3 {
	background-color: white;
	border: 1px solid #f6c23e;
	color: #f6c23e;
}

.badge_todayend {
	color: #e74a3b;
	border: 1px solid #e74a3b;
}

.badge_alreadyend {
	color: #858796;
	border: 1px solid #858796;
}

.badge_afterNday {
	color: #1cc88a;
	border: 1px solid #1cc88a;
}

.badge_graded {
	color: #4e73df;
	border: 1px solid #4e73df;
}
  textarea {
    width: 100%;
    height: 6.25em;
    resize: none;
    border-radius:10px;
    border: 1px solid silver;
  }
  
</style>



</head>
<body id="page-top">
<jsp:include page="/WEB-INF/views/member/include/admin_header.jsp" flush="true" />
			<div class="row  mb-3 justify-content-center">
				<div class="col-md-10 d-flex justify-content-center" id="context">
				<div class="col-md-6">
		<h4 style="text-align: center;">회원추가</h4>
		<h5>프로필</h5>
					<label for="ifmmName" class="form-label">이름</label>
					<input type="text" class="form-control" id="ifmmName" name="ifmmName">
					<label for="classImg" class="form-label">클래스 사진</label>
					<div >
						<img src="../../../../resources/common/image/profile2.png"  width="70" height="70" >
					</div>
					<label for="classSchool" class="form-label">소속 학교</label>
					<input type="text" class="form-control" id="classSchool" name="classSchool" placeholder="학교/기관 이름">
					<label for="grade" class="form-label">담당학년</label>
					<select class="form-select" id="grade" name="grade">
						<option>학년 선택
						<option>1학년
						<option>2학년
						<option>3학년
						<option>4학년
						<option>5학년
						<option>6학년
					</select>
		            <label class="col-form-label">프로필</label>
		            <div class="col-12">
		          	  <textarea rows="3" cols="90" id="ifmmDesc" name="ifmmDesc"></textarea>
		            </div>
					<label for="gender" class="form-label">성별</label>
					<select class="form-select" id="gender" name="gender">
						<option>성별 선택
						<option>남
						<option>여
						<option>선택안함
					</select>
					<label for="ifmmDob" class="form-label">생일</label>
					<!-- datepicker 사용 -->
					<input type="text" class="form-control" id="ifmmDob" name="ifmmDob"> 
					<!-- datepicker 사용 -->
			<hr>
			<h5>계정</h5>
				<label for="ifmmId" class="form-label">아이디</label>
				<input type="text" class="form-control" id="ifmmId" name="ifmmId">
				<label for="ifmmPassword" class="form-label">비밀번호</label>
				<input type="text" class="form-control" id="ifmmPassword" name="ifmmPassword">
				<label for="email" class="form-label">이메일</label>
				<input type="text" class="form-control"  id="email" name="email">
			<label for="number" class="form-label">휴대폰 번호</label>
				<div class="input-group mb-3">
					<input type="text" class="form-control"  id="number" name="number">
				</div>
			<label for="role" class="form-label">역할</label>
				<select class="form-select" id="role" name="role">
					<option>선생님
					<option>학생
				</select>
		<hr>
		
		<h5>알림 상세 설정</h5>
			<label for="alarm" class="form-label">클래스 초대/수락</label>
				<select class="form-select" id="alarm" name="alarm">
					<option>알림 받기
					<option>알림 거부
				</select>
			<label for="homeAlarm" class="form-label">홈소식</label>
				<select class="form-select" id="homeAlarm" name="homeAlarm">
					<option>모든 소식 알림
					<option>알림 거부
				</select>
			<label for="replyAlarm" class="form-label">답글</label>
				<select class="form-select" id="replyAlarm" name="replyAlarm">
					<option>모든 답글 알림
					<option>알림 거부
				</select>
			<div>
				<button type="button" class="btn btn-outline-secondary btn-lg w-45" style="display: inline; float: left;" id="btn-add"onclick="location.href='./adminMemberList'">취소</button>
				<button type="button" class="btn btn-outline-success btn-lg w-45" style="display: inline; float: right; " id="btn-add">가입</button>
			</div>
	
			</div>
			
	</div>
		
					
					

</div>
	<jsp:include page="/WEB-INF/views/member/include/classFooter.jsp" flush="true" />
 <!-- Bootstrap core JavaScript-->
    <script src="../../../../resources/common/vendor/jquery/jquery.min.js"></script>
    <script src="../../../../resources/common/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../../../../resources/common/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../../../../resources/common/js/sb-admin-2.min.js"></script> 

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

</body>
</html>