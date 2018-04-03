<%@page import="com.study.member.service.MemberServiceImpl"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="oracle.jdbc.driver.OracleDriver"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>14/ memberEdit.jsp</title>   
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
  </head>
<body>
	<div class="container">
	<jsp:useBean id="member" class="com.study.member.vo.Member"></jsp:useBean>
	<jsp:setProperty property="*" name="member"/>
		<div class="page-header">
			<h1>회원 상세정보</h1>
		</div>
		<form action="memberUpdate.jsp" method="post">
			<div class="row">
				<%
				MemberServiceImpl memberService = new MemberServiceImpl();
				int cnt = memberService.insertMember(member);
					if(cnt > 0){
					%>
					<div class="row">추카추카</div>
					<%	}else{ %>
					<div class="row">실패~</div>
					
					<%
					}
					%>
				<div class="row">
					<div class="col-md-6">
						<a href="memberList.jsp" class="btn btn-lg btn-primary">목록으로</a>
					</div>				
				</div>
				</div>
			</form>
			
		</div>	
</body>
</html>