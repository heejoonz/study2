<%@page import="com.study.member.vo.MemberSearch"%>
<%@page import="com.study.member.vo.Member"%>
<%@page import="java.util.List"%>
<%@page import="com.study.member.service.MemberServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>15/ memberList.jsp</title>   
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
  </head>
<body>
<div class="container">
	<div class="page-header">
		<h1>회원 목록</h1>
	</div>
	
	<div class="row">
		<div class="col-md-6 col-md-offset-8 text-right">
			<a href="memberForm.jsp" class="btn btn-lg btn-primary">회원등록</a>
		</div>		
	</div>
	<%	
		MemberServiceImpl memberService = new MemberServiceImpl();
		MemberSearch memberSearch = new MemberSearch(); 
		List<Member> list = memberService.getMemberList(memberSearch);	
	%>	
	
	<div class="row">	
	<table class="table table-striped">
		<thead>
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>전화번호</th>
				<th>이메일</th>
				<th>가입일</th>			
			</tr>
		</thead>	
		<tbody>
			<%
			if(list.isEmpty()) {
			%>
				<tr>
					<td colspan="5">목록이 조회되지 않았습니다.</td>
				</tr>
			
			<%	
			}else {
				for(int i = 0,len = list.size(); i < len; i++){	
					Member m = list.get(i);
			%>
					<tr>			
						<td><%=m.getMem_id() %></td>
						<td><a href="memberView.jsp?men_id=<%=m.getMem_id()%>">
							<%=m.getMem_name() %>
							</a>
						</td>			
						<td><%=m.getMem_phone() %></td>
						<td><%=m.getMem_email() %></td>
						<td><%=m.getReg_date() %></td>
					</tr>
					<%
				
				}				
			}
			
			%>		
		</tbody>	
	</table>
	</div>
	
</div>
</body>
</html>