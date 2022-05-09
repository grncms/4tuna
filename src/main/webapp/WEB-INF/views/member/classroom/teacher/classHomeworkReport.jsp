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
.container_wrapper>div:first-child {
	padding: 0;
}

.homework_table thead>tr:not(first-child)>td:first-child {
	font-weight: 600;
	color: black;
}

.homework_table tbody>tr>td:first-child {
	color: black;
}



#posting {
	width: 800px;
	margin-left: auto;
	margin-right: auto;
	margin-top: 50px;
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
					<div class="container_title shadow mb-4">
						<div class="header">과제 리포트</div>
						<div class="body">클래스에 배부된 모든 과제 현황을 확인할 수 있어요.</div>
					</div>

					<div class="container_wrapper shadow p-0">
						<div class="container_base">
							<div class="homework_check">
								<div class="homework_table table-responsive">
									<table class="table m-0" id="dataTable" width="100%" cellspacing="0">
										<thead>
											<tr>
												<th>전체 5명</th>
												<th>과제1</th>
												<th>과제2</th>
												<th>과제3</th>
												<th>과제4</th>
											</tr>

											<tr>
												<td>평균 점수</td>
												<td>0/100점</td>
												<td>50/100점</td>
												<td>40/100점</td>
												<td>0/100점</td>
											</tr>
											<tr>
												<td>제출률</td>
												<td>0%</td>
												<td>0%</td>
												<td>50%</td>
												<td>100%</td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>박규원</td>
												<td>
													<div>
														<span class="badge bg-danger">미제출</span>
													</div>
												</td>
												<td>-</td>
												<td>50점</td>
												<td><span class="badge bg-warning">확인 필요</span></td>
											</tr>
											<tr>
												<td>박규원</td>
												<td>
													<div>
														<span class="badge bg-danger">미제출</span>
													</div>
												</td>
												<td>-</td>
												<td>50점</td>
												<td><span class="badge bg-warning">확인 필요</span></td>
											</tr>
											<tr>
												<td>박규원</td>
												<td>
													<div>
														<span class="badge bg-danger">미제출</span>
													</div>
												</td>
												<td>-</td>
												<td>50점</td>
												<td><span class="badge bg-warning">확인 필요</span></td>
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