package com.study.board.web;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.study.board.service.BoardServiceImpl;
import com.study.board.vo.Board;
import com.study.board.vo.BoardSearch;
import com.study.servlet.IController;

public class BoardListController implements IController{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws ServletException {
			
		BoardServiceImpl boardService = new BoardServiceImpl();
		BoardSearch boardSearch = new BoardSearch();
		
		try {
			BeanUtils.populate(boardSearch, request.getParameterMap());
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		/*String cp = request.getParameter("currentPage");
		if(cp != null && !cp.trim().equals("")) {
			boardSearch.setCurrentPage( Integer.parseInt(cp) );
		}*/
		
		boardSearch.setting(boardService.getBoardCount(boardSearch));
		List<Board> list = boardService.getBoardList(boardSearch);
		
		request.setAttribute("list", list);
		request.setAttribute("search", boardSearch);
		
		String viewPage = "/WEB-INF/view/board/boardList.jsp";
		return viewPage;
	}
}
