

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>18/ boardForm.jsp</title>   
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
  </head>
<body>
<div class="container">
	<div class="page-header">
		<h1>게시판 가입상세정보</h1>
	</div>
	<form action="boardInsert.do" method="post">
		<div class="row">		
			
			<table class="table table-striped">	
				<tbody>					
					
					<tr>
						<th>제목</th>
						<td>
							<input type="text" name="bo_title" value="" >
						</td>
					</tr>	
					<tr>
						<th>비밀번호</th>
						<td>
							<input type="text" name="bo_passwd" value="" >
						</td>
					</tr>	
					<tr>
						<th>작성자</th>
						<td>
							<input type="text" name="bo_writer" value="" >
						</td>
					</tr>	
					<tr>
						<th>내용</th>
						<td>
							<textarea name="bo_content" rows="10" cols="60"  ></textarea>
						</td>
					</tr>			
					
					<tr>
						<th>이메일</th>
						<td>
							<input type="text" name="bo_email" value="" >
						</td>
					</tr>			
					
				</tbody>	
			</table>
		</div>
		<div class="row">
			<div class="col-md-6">
				<a href="boardList.do" class="btn btn-lg btn-primary">목록으로</a>
			</div>
			<div class="col-md-6 text-right" >
				<button type="submit" class="btn btn-lg btn-success">게시판 등록</button>
			</div>
			
		</div>
	</form>
	
	</div>
</body>
</html>