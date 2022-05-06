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
<title>회원관리</title>



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
  footer {
        position:absolute;
        bottom:0;
        width:100%; 
    }
    .content {
    position:relative;
     padding-bottom:77px;
    }
</style>



</head>
<body id="page-top" >
<jsp:include page="/WEB-INF/views/member/include/admin_header.jsp" flush="true" />
<div class="content">

	<div class="container" style="margin-bottom:20px;">
		<h3>회원관리</h3>
				<div class="border p-3 ">
				<select class="form-select" style="width:200px; display: inline;">
					<option selected>회원구분</option>
					<option value="1">선생님</option>
					<option value="2">학생</option>
				</select>
				<select class="form-select" style="width: 200px; display: inline;">
					<option value="">삭제여부</option>
					<option value="1">Y</option>
					<option value="2">N</option>
				</select>
			<input  class="form-control"  type="text" style="width: 200px; display: inline;" name="shDateStart" id="shDateStart" placeholder="시작날짜">
			<input  class="form-control" type="text" style="width: 200px; display: inline;" name="shDateEnd" id="shDateEnd" placeholder="종료날짜">
				
				<br>
				
				
				<select class="form-select" style="width: 200px; display: inline;">
					<option value="">검색구분</option>
					<option value="1">이름</option>
					<option value="2">아이디</option>
				</select>
				<input type="text" class="form-control" placeholder="검색어"style="width:200px; display:inline;">
				<button type="button" class="btn btn-outline-success btn-lg w-45" id="btn-add" style="margin-bottom:10px;">검색</button>
				<button type="button" class="btn btn-outline-warning btn-lg w-45" id="btn-add" style="margin-bottom:10px;">새로고침</button>
		</div>
			</div>
	
			<div class="table-responsive">
			  <table class="table">
	  			  <thead>
	   				   <tr>
							<th scope="col" style="width: 15%;">
								<div class="form-check">
								<input class="form-check-input" type="checkbox" value=""id="flexCheckDefault"> 
								<label class="form-check-label" for="flexCheckDefault" style="width: 100px;">전체선택</label></div></th>
							<th scope="col" style="width: 5%;"><div style="width: 100px;">번호</div></th>
							<th scope="col" style="width: 10%;"><div style="width: 100px;">이름</div></th>
							<th scope="col" style="width: 15%;"><div style="width: 100px;">회원구분</div></th>
							<th scope="col" style="width: 10%;"><div style="width: 100px;">소속</div></th>
							<th scope="col" style="width: 15%;"><div style="width: 100px;">생년월일</div></th>	
							<th scope="col" style="width: 15%;"><div style="width: 100px;">가입날짜</div></th>
	      				</tr>
	   			 </thead>
	   			 <tbody>
	      				<tr>
							<td scope="col">
								<div class="form-check">
								<input class="form-check-input" type="checkbox" value=""id="flexCheckDefault1"></div></td>
							<td scope="col">1</td>
							<td scope="col"><a href="./adminMemberView">한동훈</a></td>
							<td scope="col">학생</td>
							<td scope="col">##중학교</td>
							<td scope="col">2020.12.12</td>
							<td scope="col">2022.01.02</td>
								
	    			  </tr>
				      <tr>
							<td scope="col">
								<div class="form-check">
								<input class="form-check-input" type="checkbox" value=""id="flexCheckDefault2"></div></td>
							<td scope="col">2</td>
							<td scope="col">최민수</td>
							<td scope="col">선생</td>
							<td scope="col">##초등학교</td>
							<td scope="col">2010.10.11</td>
							<td scope="col">2021.10.23</td>
								
	    			  </tr>
	           		 <tr>
							<td scope="col">
								<div class="form-check">
								<input class="form-check-input" type="checkbox" value=""id="flexCheckDefault3"></div></td>
								<td scope="col">3</td>
								<td scope="col">박규원</td>
								<td scope="col">학생</td>
								<td scope="col">##초등학교</td>
								<td scope="col">1999.03.03</td>
								<td scope="col">2022.02.04</td>
				   </tr>
				   	<tr>
								<td scope="col">
									<div class="form-check">
									<input class="form-check-input" type="checkbox" value=""id="flexCheckDefault4"></div></td>
								<td scope="col">4</td>
								<td scope="col">윤수빈</td>
								<td scope="col">학생</td>
								<td scope="col">##고등학교</td>
								<td scope="col">2002.03.02</td>
								<td scope="col">2020.12.24</td>
					</tr>
					<tr>
								<td scope="col">
									<div class="form-check">
									<input class="form-check-input" type="checkbox" value=""id="flexCheckDefault5"></div></td>
								<td scope="col">5</td>
								<td scope="col">최선락</td>
								<td scope="col">학생</td>
								<td scope="col">##고등학교</td>
								<td scope="col">2003.12.11</td>
								<td scope="col">2022.02.03</td>
					</tr>
			    </tbody>
			  </table>
			</div>
	
		
	<div style="text-align: right;">
		<button type="button" class="btn btn-outline-danger btn-lg w-45"  id="btn-add" data-bs-toggle="modal" data-bs-target="#delete" id="btn-add" style="margin-bottom:10px;">삭제</button>
		<button type="button" class="btn btn-outline-primary btn-lg w-45"  id="btn-add" style="margin-bottom:10px;" onclick="location.href='./adminMemberForm'">회원추가</button>
	</div>			
				<!-- modal -->	
					<div class="modal" tabindex="-1" id="delete">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title">회원삭제</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		    	삭제하시겠습니까?
			   </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
		        <button type="submit" class="btn btn-danger">삭제</button>
		      </div>
		      </div>
		    </div>
		  </div>
				<!-- modal -->	
					
			
			
				<nav aria-label="Page navigation example" style="clear:both;">
					<ul class="pagination" style="justify-content: center;">
						<li class="page-item"><a class="page-link" href="#"aria-label="Previous">
							<span aria-hidden="true">&laquo;</span></a></li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#"aria-label="Next">
							<span aria-hidden="true">&raquo;</span></a></li>
					</ul>
				</nav>
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