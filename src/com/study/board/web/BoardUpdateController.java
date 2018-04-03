package com.study.board.web;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.study.board.service.BoardServiceImpl;
import com.study.board.vo.Board;
import com.study.servlet.IController;

public class BoardUpdateController implements IController {

	public String process(HttpServletRequest request, HttpServletResponse response) throws ServletException{
		
		String no = request.getParameter("bo_no");		
		int bo_no = Integer.parseInt(no);
		
		BoardServiceImpl boardService = new BoardServiceImpl();
		Board board = new Board();
		board.setBo_title(request.getParameter("bo_title"));
		board.setBo_email(request.getParameter("bo_email"));
		board.setBo_content(request.getParameter("bo_content"));		
		board.setBo_no(bo_no);
		
		int cnt = 0;
		
		cnt = boardService.modifyBoard(board);
		if(cnt > 0) {
			request.setAttribute("message", "게시판수정을 완료했습니다");
		}else {
			request.setAttribute("message", "게시판수정에 실패하였습니다");
		}			
		System.out.println(cnt);		
		
		String viewPage = "/WEB-INF/view/board/boardUpdate.jsp";
		
		System.out.println("업데이트");
		return viewPage;
	}
	
}
