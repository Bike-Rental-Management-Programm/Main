<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기능테스트 페이지</title>
</head>
<body>
 <h1>후기</h1>
<form name="reviewform" class="reviewform" method="post" action="/save">
	<input type="hidden" name="rate" id="rate" value="0"/>
		<p class="title_star">별점과 리뷰를 남겨주세요.</p>
		<div class="review_starpoint">
			<div class="warning_msg">별점을 선택해 주세요.</div>
				<div class="starpoint">
            		<!-- 해당 별점을 클릭하면 해당 별과 그 왼쪽의 모든 별의 체크박스에 checked 적용 -->
					<input type="checkbox" name="starpoint" id="starpoint1" value="1" class="rate_radio" title="1점">
					<label for="starpoint1"></label>
					<input type="checkbox" name="starpoint" id="starpoint2" value="2" class="rate_radio" title="2점">
					<label for="starpoint2"></label>
					<input type="checkbox" name="starpoint" id="starpoint3" value="3" class="rate_radio" title="3점" >
					<label for="starpoint3"></label>
					<input type="checkbox" name="starpoint" id="starpoint4" value="4" class="rate_radio" title="4점">
					<label for="starpoint4"></label>
					<input type="checkbox" name="starpoint" id="starpoint5" value="5" class="rate_radio" title="5점">
					<label for="starpoint5"></label>
				</div>
			</div>
		<div class="review_contents">
			<div class="warning_msg">5자 이상으로 작성해 주세요.</div>
				<textarea rows="10" class="review_textarea"></textarea>
			</div>   
	<div class="cmd">
		<input type="button" name="save" id="save" value="등록">
	</div>
</form>

<!--glyphicon glyphicon-star / glyphicon glyphicon-star-empty-->


</body>
</html>