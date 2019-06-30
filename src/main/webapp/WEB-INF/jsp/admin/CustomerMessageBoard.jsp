<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="/main/public" name="CMBtextarea" method="POST">
		<input type="text" id="id" name="CustomermessageboardMemberid" placeholder="此欄為隱藏抓取ID格" style="display: none">
		<input type="text" id="id" name="CustomermessageboardStatus" placeholder="此欄為隱藏設定狀態格" style="display: none" value="1">
		<input type="text" id="id" name="CustomermessageboardResponseFloor" placeholder="此欄為隱藏設定樓數格" style="display: none" value="0">
		<div>
		<textarea rows="3" cols="95" name="CustomermessageboardTitle" placeholder="標題..." ></textarea>
		</div>
		<div>
		<textarea cols="95" rows="3" name="CustomermessageboardMessage" placeholder="輸入你想要寫的內容..." ></textarea>
		<span><input type="submit" value="送出"></span>
		</div>
		
	</form>
	
	
	<img src="http://placehold.jp/7fbfff/003366/80x80.png?css=%7B%22border-radius%22%3A%2250%25%22%7D"
									class="img-circle avatar" alt="user profile image">
	
	<div style="border: 1px solid black ; width: 100%">
	<div style="border: 1px solid black ; width: 60%">標題..............................................</div>
	<span style="border: 1px solid black ; width: 20%"><img src="http://placehold.jp/7fbfff/003366/80x80.png?css=%7B%22border-radius%22%3A%2250%25%22%7D"></span>
	<span style="border: 1px solid black ; width: 20%">John wick</span>
	</div>
	
</body>
</html>