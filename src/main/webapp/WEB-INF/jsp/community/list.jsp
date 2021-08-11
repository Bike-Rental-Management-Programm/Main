<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#insertFormBtn").click(function() {
			location.href = "/community/insertForm";
		});
	
	});
	/* 검색과 한 페이지에 보여줄 레코드 수 처리 및 페이징을 위한
	실질적인 처리 함수 */

	function goPage(page) {
		$("#page").val(page);
		$("#f_search").attr({
			"method" : "get",
			"action" : "/lectureQna/qnaList.do?lec_no=${data.lec_no}"
		});
		$("#f_search").submit();
	}
</script>
</head>
<body>
    <jsp:include page="/WEB-INF/jsp/fragment/header.jsp" flush="false" />

	<%-- ======= 상세 페이지 이동을 위한 FORM ============ --%>
	<form name="detailForm" id="detailForm">
		<input type="hidden" name="communityNo" id="communityNo"> <input
			type="hidden" name="lec_no" id="lec_no" value="${data.lec_no} ">
		<input type="hidden" name="page" value="${data.page}"> <input
			type="hidden" name="pageSize" value="${data.pageSize}">
	</form>

	<div id="boardSearch">
		<form id="f_search" name="f_search">
			<input type="hidden" id="lec_no" name="lec_no" value="${data.lec_no}">
			<input type="hidden" id="page" name="page" value="${data.page}">
		</form>
	</div>


	<%-- ================= 리스트 시작 =============== --%>

	<div id="qnaList" class="table-responsive tac">
		<label style="font-size: 20px;"><a
			href="/lecture/lectureDetail.do?lec_no=${lec_no}">자유게시판</a></label>&nbsp;&nbsp;|
		<label style="font-size: 20px;"><a
			href="/lectureQna/qnaList.do?lec_no=${lec_no}">번개</a></label> <br> <br>
		<table summary="게시판 리스트" class="table table-bordered">
			<colgroup>
				<col width="5%" />
				<col width="55%" />
				<col width="10%" />
				<col width="10%" />
				<col width="10%" />
				<col width="10%" />
			</colgroup>
			<thead>
				<tr style="background-color: #E2E2E2;">
					<th data-value="communityNo" class="order">글번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th data-value="ql_date" class="order">작성일</th>
					<th style="font-size: 13px;">조회수</th>
					<th style="font-size: 13px;">추천수</th>
				</tr>
			</thead>
			<tbody id="list">
				<!-- 데이터 출력 -->
				<c:choose>
					<c:when test="${not empty qnaList}">
						<c:forEach var="communityList" items="${communityList}" varStatus="status">
							<tr class="tac" data-num="${communityWriteNo}">
								<td style="font-size: 13px;">사용자</td>
								<td>${count - status.index}</td>
								<td class="goDetail tal">${communitySubject}</td>
								<td></td>
								<td>${communityTime}</td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<td colspan="5" class="tac">등록된 게시물이 존재하지 않습니다.</td>
						</tr>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
	</div>
	<%-- ================= 리스트 종료 ================ --%>
	<%-- ============== 글쓰기 버튼 출력 시작============ --%>
	<div class="contentBtn">
		<div class="contentBtn">
		<input type="button" value="글쓰기" id="insertFormBtn"
			class="btn btn-primary"
			style="float: right; width: 70px; height: 30px;">
	</div>
	</div>
	<%-- ============== 글쓰기 버튼 출력 종료============ --%>
	<%-- ============ 페이지 네비게이션 시작 ============ --%>
	<%-- =========== 페이지 네비게이션 종료 ============= --%>
</body>
</html>