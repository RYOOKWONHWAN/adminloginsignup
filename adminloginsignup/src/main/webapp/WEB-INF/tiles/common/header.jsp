<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ko">

<!-- header -->
<section class="sign_area_pc">
	<p>
		<!-- <a href="">로그인</a>
                <span>|</span>
                <a href="">회원가입</a> -->
		<%--  ${sessionScope.authInfo.userId}님 환영합니다.
                <span>|</span>
                <a href="${pageContext.request.contextPath}/user/logout.do">로그아웃</a> --%>
		<c:choose>
			<c:when test="${sessionScope.authInfo == null}">
				<a href="${pageContext.request.contextPath}/admin/login.do">로그인</a>
				<span>|</span>
				<a href="${pageContext.request.contextPath}/admin/adminSignup.do">회원가입</a>
			</c:when>
			

			<c:otherwise>
			        ${sessionScope.authInfo.adminId}님 환영합니다.
                	<span>|</span>
				<a href="${pageContext.request.contextPath}/user/logout.do">로그아웃</a>
			</c:otherwise>
		</c:choose>
	</p>
</section>

<nav class="nav_area">
	<article class="inner">
		<a href="${pageContext.request.contextPath}/home.do"> <img
			class="logo"
			src="${pageContext.request.contextPath}/resources/assets/images/el_logo.png"
			alt="영원한 도서관 Logo" />
		</a>

		<div class="menu-trigger">
			<span></span> <span></span> <span></span>
		</div>

		<ul>
			<li><a href="${pageContext.request.contextPath}/notice.do">도서관
					소식</a></li>
			<li><a class="active" href="#">이용안내</a></li>
			<li><a href="#">통합도서조회</a></li>
			<li><a href="#">희망도서신청</a></li>
			<li><a
				href="${pageContext.request.contextPath}/user/mylibrary.do">나의
					도서관</a></li>

			<li class="sign_area_mob">
				<p>
					<!-- <a href="">로그인</a>
	                    <span>·</span>
	                    <a href="">회원가입</a> -->
					김누구(abd***)님 <span>·</span> <a href="">로그아웃</a>
				</p>
			</li>
		</ul>
	</article>
</nav>
<!-- header -->