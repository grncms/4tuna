<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>ForTest</title>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" />

<!-- Custom fonts for this template-->
<link href="/resources/common/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template-->
<link href="/resources/common/css/sb-admin-2.css" rel="stylesheet">
<link href="/resources/user/css/classCommon.css" rel="stylesheet">
<link href="/resources/common/css/boardCss.css" rel="stylesheet">
<style type="text/css">
#posting {
	width: 1100px;
	margin-left: auto;
	margin-right: auto;
	margin-top: 50px;
}

.leftbarProfile {
	cursor: pointer;
}

.post>.header {
	margin-bottom: 0.5rem;
}

.post_title {
	cursor: pointer;
	display: inline-flex;
	align-items: center;
	gap: 0.5rem;
}
</style>

</head>
<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">
		<jsp:include page="/WEB-INF/views/member/include/classSidebar.jsp" flush="true" />

		<div id="content-wrapper">
			<jsp:include page="/WEB-INF/views/member/include/classNavbar.jsp" flush="true" />

			<div class="container-fluid">
				<div class="row" id="posting">
					<!-- Area Chart -->
					<div class="col-xl-8 col-lg-8">
						<div class="container_title shadow mb-4">
							<div class="header">자유 공간</div>
							<!-- <div class="body">클래스에 배부된 모든 과제를 모아볼 수 있어요.</div> -->
							<div class="footer dropdown">
								<button type="button" class="basic_button dropdown-toggle" data-bs-toggle="dropdown">글쓰기</button>
								<ul class="dropdown-menu">
									<li>
										<a class="dropdown-item" href="#">공지</a>
									</li>
									<li>
										<a class="dropdown-item" href="#">게시글</a>
									</li>
									<li>
										<a class="dropdown-item" href="#">일반 과제</a>
									</li>
									<li>
										<a class="dropdown-item" href="#">자료실 과제</a>
									</li>
								</ul>
							</div>
						</div>
						<div class="card shadow mb-4">
							<div class="container_base">
								<div class="post list">
									<div class="header">
										<div class="profile_box">
											<img class="profile" src="../../../../../resources/common/image/test.jpg" />
										</div>
										<span>박규원</span>
										<span>4월 22일</span>
									</div>

									<div class="post_title">
										<a href="/member/class/common/postview"> <span class='badge badge_notice'>공지</span> <span>숙제 하세요!@</span>
										</a>
									</div>

									<div class="post_content">
										<div>글내용 글내용 글내용 글내용 글내용</div>
									</div>
								</div>
							</div>
							<div class="container_base">
								<div class="post list">
									<div class="header">
										<div class="profile_box">
											<img class="profile" src="../../../../../resources/common/image/test.jpg" />
										</div>
										<span>박규원</span>
										<span>4월 22일</span>
									</div>

									<div class="post_title">
										<span>일반글 제목</span>
									</div>

									<div class="post_content">
										<div>글내용 글내용 글내용 글내용 글내용</div>
									</div>

									<div class="post_emotion">
										<i class="fa-regular fa-comment"> 2</i> <i class="fa-regular fa-thumbs-up"> 2</i> <i class="fa-solid fa-check"> 1</i>
									</div>

								</div>
							</div>
							<div class="container_base">
								<div class="post list">
									<div class="header">
										<div class="profile_box">
											<img class="profile" src="../../../../../resources/common/image/test.jpg" />
										</div>
										<span>박규원</span>
										<span>4월 22일</span>
									</div>

									<div class="post_title">
										<span class='badge badge_hw'>과제</span>
										<span>과제 입니다</span>
									</div>

									<div class="post_content">
										<div>글내용 글내용 글내용 글내용 글내용</div>
									</div>
								</div>
							</div>


							<!-- Card Body -->
						</div>
					</div>

					<!-- Pie Chart -->
					<div class="col-xl-4 col-lg-4">
						<div class="container_title shadow mb-4">
							<!-- Card Header - Dropdown -->
							<div class="header mb-5">실시간 수업</div>
							<button type="button" class="btn btn-lg mt-1 w-100 p-2" id="btn-add">
								<i class="fa-solid fa-video"></i> Zoom 연동하기
							</button>
							<div class="title_hw">
								<div class="col-md-2 col-lg-2" id="classImg">
									<img src="../../../../../resources/common/image/profile2.png" width="40" height="40" style="border-radius: 7px;">
								</div>
								<div class="col-md-10 col-lg-10" id="classInfo">
									<span>
										<b>최민수</b>
									</span>
									<p>
										<span style="color: #c8c8c8; font-size: 14px;">선셍님</span>
								</div>
							</div>
							<hr>
							<div class="title_hw">
								<div class="col-md-2 col-lg-2" id="classImg">
									<img src="../../../../../resources/common/image/profile2.png" width="40" height="40" style="border-radius: 7px;">
								</div>
								<div class="col-md-10 col-lg-10" id="classInfo">
									<span>
										<b>박규원</b>
									</span>
									<p>
										<span style="color: #c8c8c8; font-size: 14px;">학생</span>
								</div>
							</div>
							<div class="title_hw">
								<div class="col-md-2 col-lg-2" id="classImg">
									<img src="../../../../../resources/common/image/profile2.png" width="40" height="40" style="border-radius: 7px;">
								</div>
								<div class="col-md-10 col-lg-10" id="classInfo">
									<span>
										<b>윤수빈</b>
									</span>
									<p>
										<span style="color: #c8c8c8; font-size: 14px;">학생</span>
								</div>
							</div>
							<div class="title_hw">
								<div class="col-md-2 col-lg-2" id="classImg">
									<img src="../../../../../resources/common/image/profile2.png" width="40" height="40" style="border-radius: 7px;">
								</div>
								<div class="col-md-10 col-lg-10" id="classInfo">
									<span>
										<b>한동훈</b>
									</span>
									<p>
										<span style="color: #c8c8c8; font-size: 14px;">학생</span>
								</div>
							</div>
							<div class="title_hw">
								<div class="col-md-2 col-lg-2" id="classImg">
									<img src="../../../../../resources/common/image/profile2.png" width="40" height="40" style="border-radius: 7px;">
								</div>
								<div class="col-md-10 col-lg-10" id="classInfo">
									<span>
										<b>최선락</b>
									</span>
									<p>
										<span style="color: #c8c8c8; font-size: 14px;">학생</span>
								</div>
							</div>
						</div>
					</div>
					<!-- /.container-fluid -->
				</div>
				<!-- End of Main Content -->
			</div>
		</div>
	</div>






	<!-- End of Page Wrapper -->
	<!-- Bootstrap core JavaScript-->
	<script src="../../../../resources/common/vendor/jquery/jquery.min.js"></script>
	<script src="../../../../resources/common/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="../../../../resources/common/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="../../../../resources/common/js/sb-admin-2.min.js"></script>


</body>
</html>