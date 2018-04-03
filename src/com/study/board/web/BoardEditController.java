package com.study.board.web;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.study.board.service.BoardServiceImpl;
import com.study.board.vo.Board;
import com.study.servlet.IController;

public class BoardEditController implements IController {
	
	public String process(HttpServletRequest request, HttpServletResponse response ) throws ServletException{
		
		String no = request.getParameter("bo_no");	
		int bo_no = Integer.parseInt(no);
		BoardServiceImpl boardService = new BoardServiceImpl();	
		
		Board board = null;
		
		board = boardService.getBoard(bo_no);
		request.setAttribute("board", board);			
		
		String viewPage = "/WEB-INF/view/board/boardEdit.jsp";
		
		return viewPage;
				
	}

}
