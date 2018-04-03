<%@page import="com.study.member.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div>
 	사이트<br>
 	<a href="<%=request.getContextPath() %>/index.jsp">Home</a>
 	<a href="<%=request.getContextPath()%>/member/memberList.do">회원관리</a>
 	<a href="<%=request.getContextPath()%>/board/boardList.do">게시판</a><br> 	
 	
<%
	Member mem = (Member)session.getAttribute("LOGIN");
	if(mem != null ){
		
%>
	<!-- 로그인 상태인 경우 -->
 	<%=mem.getMem_name() %>가 접속하셧습니다<br> 
 	<a href="<%=request.getContextPath() %>/12/logout.jsp">로그아웃</a><br>
		
<%
	}else {
%>
	<!-- 비 로그인 상태인 경우 -->
	로그인 해주세요
 	<a href="<%=request.getContextPath() %>/12/login.jsp">로그인</a>
<%
	}

%>
<hr> 	
 	
</div>