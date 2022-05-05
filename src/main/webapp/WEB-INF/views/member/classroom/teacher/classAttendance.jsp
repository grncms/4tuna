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
.attendance td>div {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	gap: 8px;
}

.attendance th:not(:first-child) {
	padding: 3px;
	width: 15%;
}

.attendance th>div {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	gap: 0px;
	padding: 0px;
}

.today_attendance>.body {
	display: flex;
	justify-content: space-between;
}

.today_attendance>.body .progress {
	width: 100%;
	height: 50%;
}

.attendance_bar {
	display: inline-block;
	width: 60%;
}

.attendance_text>div:last-child {
	font-size: 2rem;
	font-weight: 600;
}

.attendance_bar>div {
	font-size: 1.5rem;
}

.attendance {
	border-style: none;
	margin: 0;
}

.attendance>thead>tr:first-child {
	border-top-style: none;
}

.attendance>tbody>tr>td:first-child {
	border-right: 1px solid #dee2e6;
}

table {
	border-collapse: collapse;
}

.attendance>tbody>tr>td:first-child {
	width: 25%;
	height: 3rem;
}

.attendance>tbody>tr>td:first-child>div {
	flex-direction: row;
	display: flex;
	justify-content: center;
	align-items: center;
	margin-top: 10%;
	margin-bottom: 10%;
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
				<div class="row justify-content-center">
					<div class="col-6">
						<div class="container_title shadow mb-4">
							<div class="header">출석부</div>
							<div class="body">학생의 출석 현황을 확인할 수 있어요</div>

						</div>
						<div class="container_base_wrapper shadow">
							<div class="container_base">
								<div class="today_attendance">
									<div class="header">
										<span>오늘의 출석 현황</span>
										<span>2022-04-25 19:34 기준</span>
									</div>
									<div class="body">
										<div class="attendance_bar">
											<div>50%</div>
											<div class="progress">
												<div class="progress-bar base_bgcolor" style="width: 50%" role="progressbar"></div>
											</div>
										</div>
										<div class="attendance_text">
											<div class="base_color">출석완료</div>
											<div>3/6</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="container_base_wrapper shadow">
							<div class="container_base d-flex justify-content-center">
								<div class="attendance_setdate">
									<!-- 출석 확인 날짜 설정  -->
									<button class="btn btn-primary base_bgcolor"><</button>
									<input type="text" class="daterange " name="daterange" value="01/01/2018 - 01/15/2018" />
									<button class="btn btn-primary base_bgcolor">></button>
								</div>
							</div>
						</div>
						<div class="container_base_wrapper shadow">
							<div class="container_base p-0">
								<div class="attendance_table table-responsive">
									<table class="table attendance" id="dataTable" width="100%" cellspacing="0">
										<thead>
											<tr>
												<th></th>
												<th>
													<div>
														<div>월</div>
														<div>04.19</div>
													</div>
												</th>
												<th>
													<div>
														<div>월</div>
														<div>04.19</div>
													</div>
												</th>
												<th>
													<div>
														<div>월</div>
														<div>04.19</div>
													</div>
												</th>
												<th>
													<div>
														<div>월</div>
														<div>04.19</div>
													</div>
												</th>
												<th>
													<div>
														<div>월</div>
														<div>04.19</div>
													</div>
												</th>

											</tr>
										</thead>
										<tbody>
											<tr>
												<td>
													<div>
														<div class="profile_box">
															<img src="../../../../../resources/common/image/test.jpg" class="profile">
														</div>
														<span>박규원</span>
													</div>
												</td>
												<td>
													<div>
														<i class="fa-regular fa-circle-check fa-2x" style="color: green"></i>
														<span class="badge bg-secondary">16:34:22</span>
													</div>
												</td>
												<td>
													<div>
														<i class="fa-regular fa-circle-check fa-2x" style="color: green"></i>
														<span class="badge bg-secondary">16:34:22</span>
													</div>
												</td>
												<td>
													<div>
														<i class="fa-regular fa-circle-xmark fa-2x" style="color: red;"></i>
													</div>
												</td>
												<td>
													<div>
														<i class="fa-regular fa-circle-check fa-2x" style="color: green"></i>
														<span class="badge bg-secondary">16:34:22</span>
													</div>
												</td>
												<td>
													<div>
														<i class="fa-regular fa-circle-xmark fa-2x" style="color: red;"></i>
													</div>
												</td>

											</tr>
											<tr>
												<td>
													<div>
														<div class="profile_box">
															<img src="../../../../../resources/common/image/test.jpg" class="profile">
														</div>
														<span>박규원</span>
													</div>
												</td>
												<td>
													<div>
														<i class="fa-regular fa-circle-check fa-2x" style="color: green"></i>
														<span class="badge bg-secondary">16:34:22</span>
													</div>
												</td>
												<td>
													<div>
														<i class="fa-regular fa-circle-check fa-2x" style="color: green"></i>
														<span class="badge bg-secondary">16:34:22</span>
													</div>
												</td>
												<td>
													<div>
														<i class="fa-regular fa-circle-xmark fa-2x" style="color: red;"></i>
													</div>
												</td>
												<td>
													<div>
														<i class="fa-regular fa-circle-check fa-2x" style="color: green"></i>
														<span class="badge bg-secondary">16:34:22</span>
													</div>
												</td>
												<td>
													<div>
														<i class="fa-regular fa-circle-xmark fa-2x" style="color: red;"></i>
													</div>
												</td>

											</tr>

										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>



	<jsp:include page="/WEB-INF/views/member/include/classFooter.jsp" flush="true" />



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