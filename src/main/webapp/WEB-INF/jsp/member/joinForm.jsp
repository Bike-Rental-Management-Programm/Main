<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

    <title>회원가입</title>
</head>
<body>
<jsp:include page="/WEB-INF/jsp/fragment/header.jsp" flush="false" />

<div class="container">
    <h1 class="text-center">회원가입</h1>

    <div class="panel panel-default">
        <div class="panel-body">

            <form class="form-horizontal" action="/members/join" method="post">
                <div class="form-group">
                    <label for="inputEmail" class="col-sm-2 col-sm-offset-2 control-label">아이디</label>
                    <div class="col-sm-5">
                        <input type="text" class="form-control" id="inputEmail" name="memberEmail" placeholder="이메일을 입력해주세요">
                    </div>
                    <div class-"col-sm-1">
                        <button type="button" class="btn btn-default" data-toggle="modal" data-target="#confirm">인증하기</button>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword" class="col-sm-2 col-sm-offset-2 control-label">비밀번호</label>
                    <div class="col-sm-5">
                        <input type="password" class="form-control" id="inputPassword" name="memberPw" placeholder="비밀번호을 입력해주세요">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputConfirmPassword" class="col-sm-2 col-sm-offset-2 control-label">비밀번호 확인</label>
                    <div class="col-sm-5">
                        <input type="password" class="form-control" id="inputConfirmPassword" name="memberPwConfirm" placeholder="동일한 비밀번호를 입력해주세요">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputName" class="col-sm-2 col-sm-offset-2 control-label">이름</label>
                    <div class="col-sm-5">
                        <input type="text" class="form-control" id="inputName" name="memberName" placeholder="이름을 입력해주세요">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPhone" class="col-sm-2 col-sm-offset-2 control-label">휴대폰</label>
                    <div class="col-sm-5">
                        <input type="text" class="form-control" id="inputPhone" name="memberPhone" placeholder="휴대폰 번호를 입력해주세요">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-4 col-sm-offset-4">
                      <button type="submit" class="btn btn-primary btn-block btn-lg">회원가입</button>
                    </div>
                  </div>
            </form>
        </div>
    </div>

    <div class="modal fade" id="confirm" tabindex="-1" role="dialog" aria-labelledby="emailCertification" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="emailCertification">이메일 인증</h4>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label for="confirmText">입력하신 이메일로 랜덤문자열을 보냈습니다. 아래 텍스트 박스에 입력바랍니다.</label>
                            <input type="text" class="form-control" id="confirmText" name="confirmText" placeholder="이메일로 받은 랜덤문자열을 입력해주세요">
                        </div>
                        <div class="text-center">
                            <button type="button" class="btn btn-primary">인증</button>
                            <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

</div>
</body>
</html>