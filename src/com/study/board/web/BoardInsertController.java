package com.study.board.web;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.study.board.service.BoardServiceImpl;
import com.study.board.vo.Board;
import com.study.servlet.IController;

public class BoardInsertController implements IController {

	public String process(HttpServletRequest request, HttpServletResponse response) throws ServletException{
				
		BoardServiceImpl boardService = new BoardServiceImpl();
		Board board = new Board();
		board.setBo_title(request.getParameter("bo_title"));
		board.setBo_passwd(request.getParameter("bo_passwd"));
		board.setBo_writer(request.getParameter("bo_writer"));
		board.setBo_email(request.getParameter("bo_email"));
		board.setBo_content(request.getParameter("bo_content"));		
		board.setBo_ip(request.getParameter("bo_ip"));
		
		int cnt = 0;
	
		cnt = boardService.insertBoard(board);
		if(cnt > 0) {
			request.setAttribute("message", "게시판등록을 완료했습니다");
		}else {
			request.setAttribute("message", "게시판등록에 실패하였습니다");
		}			
		System.out.println(cnt);
		
		
			
		
		
		String viewPage = "/WEB-INF/view/board/boardInsert.jsp";
		
		System.out.println("업데이트");
		return viewPage;
	}
	
}
