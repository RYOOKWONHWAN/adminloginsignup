<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<!-- login -->
<section class="sign_area">
	<article class="inner">
		<h2>로그인</h2>
		<p>영원한 도서관에 방문하신것을 진심으로 환영합니다.</p>
		<form class="login_form" action="login.do" method="post">
			<input type="text" name="adminId" placeholder="아이디를 입력하세요." /> <input
				type="password" name="adminPw" placeholder="패스워드를 입력하세요." />
			<p class="on">※ 작성오류 문구</p>
			<div>
				<input type="checkbox" id="save_id" value=""> <label
					for="save_id">&nbsp;&nbsp;아이디 저장</label>
				<p>
					아직 회원이 아니신가요?<a
						href="${pageContext.request.contextPath}/admin/adminSignup.do">회원가입</a>
				</p>
			</div>
			<button type="submit">로그인</button>
		</form>
	</article>
</section>