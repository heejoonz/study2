<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>18/ boardList.jsp</title>   
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
  </head>
<body>
<div class="container" id="board">
	<div class="page-header">
		<h1>게시판 목록</h1>
	</div>
	
	<script type="text/javascript">
	$(function() {
		$(".pagination li a", $("#board")).click(function() {
			//alert($(this).data("page"));
			var frm = document.forms.frm_search;
			frm.currentPage.value = $(this).data("page");
			frm.submit();			
		});
		
		$('select[name="listSize"]', $("#board")).change(function(){
			var frm = document.forms.frm_search;
			frm.listSize.value = this.value;
			frm.submit();
		});
		
		/* var init = function(){
			alert("페이지가 로드하고 나서 스크립트로 처리~");
			#('[name="currentPage"]').val(${search.currentPage});
			#('[name="listSize"]').val(${search.listSize});
		}		
		init(); */
		
		
	});
	</script>
	
	<div class="row">
		<div class="col-md-6 col-md-offset-8 text-right">
			<a href="boardForm.do" class="btn btn-lg btn-primary">게시판 등록</a>
		</div>		
	</div>	
	
	<div class="row">
		<form name="frm_search" action="boardList.do" method="post" class="form-inline" >
		<input type="hidden" name="currentPage" value="${search.currentPage}">
		<input type="hidden" name="listSize" value="${search.listSize}">
			<div class="form-group">
			 검색구분 : <select name="searchType" class="form-control">
			 		<option value="all" ${search.searchType == 'all' ? 'selected="selected"' : ''  } >전체 </option>
			 		<option value="bo_title" ${search.searchType == 'bo_title' ? 'selected="selected"' : ''  } >제목</option>
			 		<option value="bo_writer" ${search.searchType == 'bo_writer' ? 'selected="selected"' : ''  } >작성자</option>
			 		<option value="bo_content" ${search.searchType == 'bo_content' ? 'selected="selected"' : ''  } >내용</option>		 		
			 </select>
			</div>
			<div class="form-group">
			<input type="text" name="searchWord" class="form-control" value="${search.searchWord}">
			</div>
			<button type="submit">검색</button>
		</form>	
	</div>
	
		
	<div class="row">
	${search.totalRowCount} / ${search.totalPageCount} <br>
			
	<select name="listSize">
		<option value="5" ${search.listSize == '5' ? 'selected="selected"' : ''  } >5</option>
		<option value="10" ${search.listSize == '10' ? 'selected="selected"' : ''  }>10</option>
		<option value="20" ${search.listSize == '20' ? 'selected="selected"' : ''  }>20</option>
		<option value="30" ${search.listSize == '30' ? 'selected="selected"' : ''  }>30</option>
	</select>
	
	<table class="table table-striped">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>조회수</th>
				<th>등록일</th>						
			</tr>
		</thead>	
		<tbody>
		
		<c:if test="${empty list}">
			<tr><td colspan="5">목록이 조회되지 않았습니다.</td></tr>		
		</c:if>	
		
		<c:if test="${not empty list}">
			<c:forEach var="board" items="${list}">
				<tr>			
					<td>${board.bo_no} </td>					
					<td>
						<a href="boardView.do?bo_no=${board.bo_no}">
							${board.bo_title}
						</a>
					</td>			
					<td>${board.bo_writer}</td>
					<td>${board.bo_read_cnt}</td>
					<td>${board.bo_reg_date}</td>
				</tr>
			</c:forEach>	
		</c:if>		
		
		</tbody>	
	</table>
	</div>
	
	<div class="row text-center">
		<div >
			<ul class="pagination">
				<c:if test="${search.startPage > 1}">
					<li>
						<a href="#" data-page="${search.startPage -1}" >
		        			<span aria-hidden="true">&laquo;</span>
		      			</a>
		   			</li>
				</c:if>				
					<c:forEach var="i" begin="${search.startPage}" end="${search.endPage}">
						<c:if test="${i eq search.currentPage}">
							<li class="active"> <a href="#"> ${i}</a></li>						
						</c:if>
						<c:if test="${i ne search.currentPage}">
							<li ><a href="#" data-page="${i}" >${i}</a></li>													
						</c:if>
					</c:forEach>
						
				<c:if test="${search.endPage < search.totalPageCount }">
					<li>
		      			<a href="#" data-page="${search.endPage + 1}" >
		        			<span aria-hidden="true">&raquo;</span>
		      			</a>
		    		</li>		    						
				</c:if>
						
			</ul>
		</div>
	
	</div>
	
</div>
</body>
</html>