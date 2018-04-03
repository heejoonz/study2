package com.study.member.web;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.study.member.service.MemberServiceImpl;
import com.study.member.vo.Member;
import com.study.servlet.IController;

public class MemberEditController implements IController {
	
	public String process(HttpServletRequest request, HttpServletResponse response ) throws ServletException{
		
		MemberServiceImpl memberService = new MemberServiceImpl();		
		String men_id = request.getParameter("men_id");		
		
		Member member = memberService.getMember(men_id);
		request.setAttribute("member", member);		
		String viewPage = "/WEB-INF/view/member/memberEdit.jsp";
		
		return viewPage;
				
	}

}
