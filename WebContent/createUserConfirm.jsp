<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">
<jsp:include page="includeHead.jsp" />
<jsp:include page="header.jsp" />
<title>登録内容確認</title>
</head>
<body>



	<div id="main" class="cf">

		<jsp:include page="navigation.jsp" />

		<div id="contents">


			<!--  <jsp:include page="header.jsp"/> -->
			<div id="contents">
				<h1>登録内容画面</h1>
				<s:form action="CreateUserCompleteAction">
					<table class="vertical-list-table" accesskey="">
						<tr>
						<th colspan="2">名前</th>
						</tr>
						<tr>
							<td><s:property value="familyName" /></td>
							<td><s:property value="firstName" /></td>
						</tr>


						<tr>
							<th colspan="2">なまえ</th>
						</tr>
						<tr>
							<td><s:property value="familyNameKana" /></td>
							<td><s:property value="firstNameKana" /></td>
						</tr>


						<tr>
							<th colspan="2">性別</th>
						</tr>
						<tr>
							<td colspan="2"><s:property value="sex" /></td>
						</tr>


						<tr>
							<th colspan="2">メールアドレス</th>
						</tr>
						<tr>
							<td colspan="2"><s:property value="email" /></td>
						</tr>


						<tr>
							<th colspan="2">ログインID</th>
						</tr>
						<tr>
							<td colspan="2"><s:property value="loginId" /></td>
						</tr>


						<tr>
							<th colspan="2">パスワード</th>
						</tr>
						<tr>
							<td colspan="2"><s:property value="password" /></td>
						</tr>
					</table>
					<div class="submit_btn_box">
						<div id=".cobntents_btn_set">
							<s:submit value="登録" class="submit_btn" />
						</div>
					</div>
					<!--   %{●●●}は前ページの情報をそのまま持っていきたい時に使う -->

					<s:hidden name="loginId" value="%{loginId}" />
					<s:hidden name="password" value="%{password}" />
					<s:hidden name="familyName" value="%{familyName}" />
					<s:hidden name="familyNameKana" value="%{familyNameKana}" />
					<s:hidden name="firstName" value="%{firstName}" />
					<s:hidden name="firstNameKana" value="%{firstNameKana}" />
					<s:hidden name="email" value="%{email}" />
					<s:if test='sex.equals("男性")'>
		<s:hidden name="sex" value="0" />
					</s:if>
					<s:if test='sex.equals("女性")'>
			<s:hidden name="sex" value="1" />
					</s:if>
				</s:form>
			</div>


		</div>

	</div>

	<jsp:include page="footer.jsp" />



</body>
</html>