<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">
<jsp:include page="includeHead.jsp" />
<title>宛先情報確認</title>

<style type="text/css">

th {
color: #333333;
}

tr{
padding: 30px;
}
/*ボタンのCSS*/
.submit_btn {
	width: 200px; /*ボタンの横の長さ*/
	height: 40px; /*ボタンの縦の長さ*/
	/* display: inline-block; 多分要らないかも*/
	font-size: 20px; /*ボタン文字サイズ*/
	background-color: #ed7d22; /*ボタンの色*/
	color: #FFF; /*ボタン文字の色*/
	border-radius: 20px; /*ボタンの角の丸み*/
	box-shadow: inset 0 2px 0 rgba(255, 255, 255, 0.2), inset 0 -2px 0
		rgba(0, 0, 0, 0.05); /*ボタンの影（立体感）*/
	border: solid 2px #d27d00; /*ボタンの立体感を出すため*/
	outline: 0; /*変な枠線を非表示に*/
	cursor: pointer; /*マウスを乗せたとき指マークにする*/
}

.submit_btn:active {
	transform: translateY(2px); /*下に動かす*/
	background-color: #f3a769; /*薄いオレンジ色にする*/
	border: #ed7d22; /*枠線の色変更*/
}

/*コンテンツの中身*/
.vertical-list-table {
	background-color: #f7f7f7;/*背景色*/
	padding: 2em;/*文字の幅調整*/
	width: 600px;/*背景の横幅*/
	border-radius: 20px;/*背景の角の丸み*/
	margin: 0 auto;/*センター中央寄せ*/

}
#contents {
	margin: 0;
	padding: 0;
	line-height: 1.6;
	letter-spacing: 1px;
	font-family: メイリオ ", sans-serif;
	font-size: 18px;
	text-align: center;

}

label{
	 border-bottom: solid 3px #ffa623;
	 padding-left: 10px;
	 padding-right: 10px;
}

h1{
font-size: 30px;
color: #333333;
}


</style>
</head>
<body>
<jsp:include page="header.jsp" />

	<div id="main" class="cf">

		<jsp:include page="navigation.jsp" />

		<div id="contents">
		<h1>以下の内容で登録します。<br>よろしければ、登録ボタンを押してください。</h1>

		<s:form action="CreateDestinationCompleteAction">
			<table class="vertical-list-table">
				<tr>
					<th><s:label value="名前" /></th>
				</tr>
				<tr>
					<td><s:property value="familyName" />
						<s:hidden name="familyName" value="%{familyName}" />
					<s:property value="firstName" />
						<s:hidden name="firstName" value="%{firstName}" /></td>
				</tr>

				<tr>
					<th><s:label value="なまえ（ふりがな）" /></th>
				</tr>
				<tr>
					<td><s:property value="familyNameKana" />
						<s:hidden name="familyNameKana" value="%{familyNameKana}" />
					<s:property value="firstNameKana" />
						<s:hidden name="firstNameKana" value="%{firstNameKana}" /></td>
				</tr>

				<tr>
					<th scope="row"><s:label value="性別" /></th>
				</tr>
				<tr>
					<td><s:property value="sex" />
						<s:hidden name="sex" value="%{sex}" /></td>
				</tr>

				<tr>
					<th scope="row"><s:label value="住所" /></th>
				</tr>
				<tr>
					<td><s:property value="userAddress" />
						<s:hidden name="userAddress" value="%{userAddress}" /></td>
				</tr>

				<tr>
					<th scope="row"><s:label value="電話番号" /></th>
				</tr>
				<tr>
					<td><s:property value="telNumber" />
						<s:hidden name="telNumber" value="%{telNumber}" /></td>
				</tr>

				<tr>
					<th scope="row"><s:label value="メールアドレス" /></th>
				</tr>
				<tr>
					<td><s:property value="email" />
						<s:hidden name="email" value="%{email}" /></td>
				</tr>
			</table><br>
			<div class="submit_btn_box">
				<div id=".contents-btn-set">
					<s:submit value="宛先情報登録" class="submit_btn" />
				</div>
			</div>
		</s:form><br>
	</div>
	</div>



	<jsp:include page="footer.jsp" />
</body>
</html>