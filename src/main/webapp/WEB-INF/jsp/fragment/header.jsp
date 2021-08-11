<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div style="padding-top: 50px">
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="/index.jsp">로고</a>
            </div>
            <div class="navbar-left">
                <button type="button" class="btn btn-default navbar-btn">대여소 찾기</button>
                <button type="button" class="btn btn-default navbar-btn">지도</button>
                <button type="button" class="btn btn-default navbar-btn">소통장</button>
            </div>
            <div class="navbar-right">
                <button type="button" class="btn btn-primary navbar-btn" data-toggle="modal" data-target="#loginForm">로그인</button>
                <button type="button" class="btn btn-default navbar-btn" onclick="location.href='/members/joinPolicy'">회원가입</button>
            </div>
        </div>
    </nav>
</div>

<div class="modal fade" id="loginForm" tabindex="-1" role="dialog" aria-labelledby="loginForm" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h1 class="modal-title" id="loginForm">로그인</h1>
            </div>
            <div class="modal-body">
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
                        <div class="text-center">
                            <button type="submit" class="btn btn-primary">로그인</button>
                            <button type="button" class="btn btn-default" onclick="location.href='/members/joinPolicy'">회원가입</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
