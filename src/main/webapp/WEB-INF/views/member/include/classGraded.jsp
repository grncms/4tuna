<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

		<div class="card shadow mb-4">
		<form id="hwSubmitList" name="hwSubmitList" method="post">
			<input type="hidden" id="cthsSeq" name="cthsSeq">
			<!-- <div class="rightbar"> -->
				<div class="container_base">
					<div class="title">과제목록</div>
				</div>
				<div class="container_base">
					<div class="title_hw">
						<div>마감일시</div>
						<!-- <div>기한지남</div> -->
					</div>
					<div><fmt:formatDate value="${item.cthpEndDateTime}" pattern="yyyy-MM-dd HH:mm:ss"/></div>
				</div>
				<c:forEach items="${submitList}" var="itemSubmit" varStatus="status">
				<div class="container_base">
					<div class="title_hw" >
					<div class="col-md-4 col-lg-4">
						<c:forEach items="${memberList}" var="itemMember" varStatus="status">
							<c:if test="${itemSubmit.cthsWriter eq itemMember.ctcmSeq }"><p style="font-size: 18px; font-weight: bold; color: black;"><c:out value="${itemMember.ctcmName}"/></p></c:if>
						</c:forEach>	
					</div>
					<div class="col-md-8 col-lg-8">
						<p><c:out value="${itemSubmit.cthsScore}"/> 점 / 100점</p><span class="badge bg-primary" role="button" onclick="location.href='javascript:goHomeworkSubmit(<c:out value="${itemPost.cthsSeq}"/>)'">과제보러가기</span>
						</div>
					</div>
				</div>
				</c:forEach>
				<div class="container_base">
					<div class="title_hw">
						<div>제출 현황</div>
						<div>전체 학생 <c:out value="${vo.totalMembers}"/>명 중 5명 제출</div>
					</div>
				</div>
				
				<div class="container_base">
					<div class="rightbar_button">
						<button type="button" class="basic_button w-50">점수 등록</button>
					</div>
				</div>
			<!-- </div> -->
		</form>	
		</div>
	



