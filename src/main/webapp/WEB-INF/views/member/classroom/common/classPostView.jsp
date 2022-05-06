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
	width: 1200px;
	margin-left: auto;
	margin-right: auto;
	margin-top: 50px;
}

#classImg>div {
	font-size: 0.6rem;
	margin-top: 0.3rem;
}

.title {
	font-weight: bold;
	font-size: 1.8rem;
	color: #5a5c69;
}

.writer {
	align-items: center;
}

#classInfo>input {
	height: 100px;
	border: 1px solid #dee2e6;
}

.comment_write {
	position: relative;
}

.comment_write>div:nth-child(2)>div {
	position: absolute;
	display: flex;
	justify-content: space-between;
	width: 100%;
	padding-right: 2.5rem;
	padding-left: 1.2rem;
	bottom: 5%;
}

.post>.container_base:first-child {
	border-bottom-style: none;
	padding-left: 1rem;
}

.post>.container_base:nth-child(2) {
	border-bottom: 1px solid #adb5bd;
	padding-top: 0;
	padding-left: 1rem;
}

.rightbar>.container_base:first-child>div {
	font-size: 1.5rem;
	font-weight: 600;
	color: #adb5bd;
}

.rightbar_button {
	display: flex;
	justify-content: center;
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
					<div class="sidebar_article col-xl-1 col-lg-1">
						<a href="#"><i class="fa-2x fa-solid fa-thumbs-up"></i></a> <a href="#"><i class="fa-2x fa-solid fa-check"></i></a> <a href="#"><i class="fa-2x fa-solid fa-circle-question"></i></a>
					</div>
					<div class="container_base_wrapper shadow col-6">
						<div class="post">
							<div class="container_base">
								<div class="title">수학문제 5페이지 풀이</div>
							</div>
							<div class="container_base">
								<div class="writer row">
									<div class="col-md-2 col-lg-1" id="classImg">
										<img src="../../../../../resources/common/image/profile2.png" width="45" height="45" style="border-radius: 7px;">
									</div>
									<div class="col-md-10 col-lg-11" id="classInfo">
										<span>
											<b>박규원</b>
										</span>
										<span style="color: #c8c8c8; font-size: 14px;">4월 22일 오전 11:16</span>
									</div>
								</div>
							</div>
							<div class="container_base">
								<div class="post_content">
									<div>
										sdasd<br> sdasd<br> sdasd<br> sdasd<br> sdasd<br> sdasd<br> sdasd<br> sdasd<br> sdasd<br> sdasd<br> sdasd<br> sdasd<br> asdas
									</div>
									<h6>댓글 1</h6>
								</div>
							</div>
							<div class="container_base">
								<div class="comment row">
									<div class="col-md-2 col-lg-1" id="classImg">
										<img src="../../../../../resources/common/image/profile2.png" width="35" height="35" style="border-radius: 7px;">
									</div>
									<div class="col-md-10 col-lg-11" id="classInfo">
										<div>
											<b>박규원</b>
										</div>
										<div style="color: #c8c8c8; font-size: 14px;">4월 22일 오전 11:16</div>
										<div>우왕 너무 유익해요요</div>
									</div>
								</div>
							</div>
							<div class="container_base">
								<div class="comment_write row">
									<div class="col-md-3 col-lg-1" id="classImg">
										<img src="../../../../../resources/common/image/profile2.png" width="35" height="35" style="border-radius: 7px;">
										<div>
											<b>박규원</b>
										</div>
									</div>

									<div class="col-md-9 col-lg-11" id="classInfo">
										<input type="text" class="w-100">
										<div>
											<div class="btn-group" role="group">
												<button type="button" class="btn btn-outline-secondary btn-sm">
													<i class="fa-solid fa-file-circle-plus"></i>
												</button>
												<button type="button" class="btn btn-outline-secondary btn-sm">
													<i class="fa-solid fa-image"></i>
												</button>
											</div>

											<button type="button" class="basic_button">등록</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<jsp:include page="/WEB-INF/views/member/classroom/common/classGraded.jsp" flush="true" />
				</div>
			</div>
			<jsp:include page="/WEB-INF/views/member/include/classFooter.jsp" flush="true" />
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