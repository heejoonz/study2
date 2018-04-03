
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>16/ memberEdit.jsp</title>   
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
  </head>
<body>
	<div class="container">
	
		<div class="page-header">
			<h1>회원 상세정보</h1>
		</div>
		<form action="memberUpdate.do" method="post">
			<div class="row">
				<div class="row text-center">
					<p>${message}</p>
				</div>	
			
				<div class="row">
					<div class="col-md-6">
						<a href="memberList.do" class="btn btn-lg btn-primary">목록으로</a>
					</div>				
				</div>
				</div>
			</form>
			
		</div>
	
</body>
</html>