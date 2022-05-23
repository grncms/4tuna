<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

		<div class="card shadow mb-4">
			<!-- <div class="rightbar"> -->
				<form action="/member/classroom/common/homeworkSubmitInst" id="homeworkSubmit" name="homeworkSubmit" method="post">
				<input type="hidden" id="cthsWriter" name="cthsWriter" value="${ctcmSeq}">
				<input type="hidden" id="cthsUseNy" name="cthsUseNy" value="1">
				<input type="hidden" id="cthsDelNy" name="cthsDelNy" value="0">
				<input type="hidden" id="cthpSeq" name="cthpSeq" value="<c:out value="${vo.cthpSeq}"/>">
				<div class="container_base">
					<div class="title">과제 제출</div>
				</div>
				<div class="container_base">
					<div class="title_hw">
						<div>마감일시</div>
					</div>
					<div><fmt:formatDate value="${item.cthpEndDateTime}" pattern="yyyy-MM-dd HH:mm:ss"/></div>
					<c:if test="${itemSubmit.cthsSeq eq null}"><span class="badge bg-danger">제출 전</span></c:if>
					<c:if test="${itemSubmit.cthsSeq ne null}"><span class="badge bg-primary">제출 완료</span></c:if>
					<c:if test="${itemSubmit.cthsScore ne null}"><span class="badge bg-success">채점완료</span></c:if>
					<%-- <c:if test="${itemSubmit.cthsScore}"><span class="badge bg-secondary">기간만료</span></c:if> --%>
				</div>
				<%-- <div class="container_base">
				<div class="mb-1"><input type="text" class="form-control" id="cthsTitle" name="cthsTitle" placeholder="제목입력" value="<c:out value="${itemSubmit.cthsTitle}"/>"/></div>
				<textarea class="form-control mb-1" id="cthsDesc" name="cthsDesc" rows="3" placeholder="내용입력"><c:out value="${itemSubmit.cthsDesc}"/></textarea>
				<div class="input-group">
				  <input type="file" class="form-control" id="inputGroupFile04" aria-describedby="inputGroupFileAddon04" aria-label="Upload">
				  <button class="btn btn-outline-secondary" type="button" id="inputGroupFileAddon04">Button</button>
				</div>
				</div> --%>
				<div class="container_base">
					<div class="title_hw">
						<div>채점 현황</div>
						<div>채점이 완료되었습니다.</div>
						<c:if test="${itemSubmit.cthsScore ne null}"><p style="font-size: 20px; color: blue;"><c:out value="${itemSubmit.cthsScore}"/></p>점</c:if>
						<c:if test="${itemSubmit.cthsScore eq null}"><div>아직 채점 전 입니다.</div></c:if>
					</div>
				</div>
				
				<div class="container_base">
					<div class="rightbar_button">
						<button type="submit" class="basic_button w-50" onclick="location.href='javascript:submitHomework()'">과제 등록</button>
					</div>
				</div>
			<!-- </div> -->
		</form>	
		</div>
	



