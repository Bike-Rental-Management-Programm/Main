<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/resource/css/common.css" />
<link rel="stylesheet" type="text/css" href="/resource/css/board.css" />
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="/resources/js/common.js"></script>
<script type="text/javascript">
	$(function() {
		/* 저장 버튼 클릭시 처리 이벤트 */
		$("#qnaInsertBtn").click(function() {
			if (!chkSubmit($('#ql_title'), "제목을"))
				return;
			else if (!chkSubmit($('#ql_content'), "작성할 내용을"))
				return;
			else if (!chkSubmit($('#ql_pwd'), "비밀번호를"))
				return;
			else
				$("#f_writeForm").attr({
					"method" : "POST",
					"action" : "/lectureQna/qnaInsert.do?lec_no=${lec_no}"
				});
			$("#f_writeForm").submit();
		});

		$("#listBtn").click(function() {
			location.href = "/community/list";
		});
	});
</script>
</head>
<body>
    <jsp:include page="/WEB-INF/jsp/fragment/header.jsp" flush="false" />

	<h2>게시판 글작성</h2>
	<div class="well">
		<form id="f_writeForm" name="f_writeForm" class="form-horizontal">
			<div class="form-group form-group-sm">
				<label class="col-sm-2 control-label">작성자</label>
				<div class="col-sm-3">
					<label> ${login.m_name}</label>
				</div>
			</div>
			<div class="form-group form-group-sm">
				<label class="col-sm-2 control-label">글제목</label>
				<div class="col-sm-3">
					<input type="text" name="ql_title" id="ql_title"
						style="width: 600px;">
				</div>
			</div>
			<div class="form-group form-group-sm">
				<label class="col-sm-2 control-label">내용</label>
				<div class="col-sm-3">
					<textarea name="ql_content" id="ql_content"
						style="resize: none; width: 600px; height: 100px;"></textarea>
				</div>
			</div>
			<div class="form-group form-group-sm">
				<label class="col-sm-2 control-label">비밀번호</label>
				<div class="col-sm-3">
					<input type="password" name="ql_pwd" id="ql_pwd">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-6">
					<input type="button" value="저장" class="btn btn-primary"
						id="qnaInsertBtn" style="width: 100px;"> <input
						type="button" value="목록" class="btn btn-primary" id="listBtn"
						style="width: 100px;">
				</div>
			</div>
		</form>
	</div>
</body>
</html>