<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <title>로그인</title>
</head>
<body>
<jsp:include page="/WEB-INF/jsp/fragment/header.jsp" flush="false" />

<div class="container">
    <h1 class="text-center">로그인</h1>

    <div class="panel panel-default">
            <div class="panel-body">

                <form class="form-horizontal" action="/members/login" method="post">
                    <div class="form-group">
                        <label for="inputEmail" class="col-sm-2 col-sm-offset-2 control-label">아이디</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control" id="inputEmail" name="memberEmail" placeholder="이메일을 입력해주세요">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword" class="col-sm-2 col-sm-offset-2 control-label">비밀번호</label>
                        <div class="col-sm-5">
                            <input type="password" class="form-control" id="inputPassword" name="memberPw" placeholder="비밀번호을 입력해주세요">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-4 col-sm-1">
                            <button type="submit" class="btn btn-primary">로그인</button>
                        </div>
                        <div class="col-sm-1">
                            <button type="button" class="btn btn-default" onclick="location.href='/members/joinPolicy'">회원가입</button>
                        </div>
                    </div>
                </form>

            </div>
        </div>

</div>
</body>
</html>