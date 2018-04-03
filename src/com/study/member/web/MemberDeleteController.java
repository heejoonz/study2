package com.study.member.web;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.study.member.service.MemberServiceImpl;
import com.study.member.vo.Member;
import com.study.servlet.IController;

public class MemberDeleteController implements IController{

	public String process(HttpServletRequest request, HttpServletResponse response) throws ServletException{
		
		String mem_id = request.getParameter("men_id");
		
		System.out.println(mem_id);
		
		MemberServiceImpl memberService = new MemberServiceImpl();
		
		Member member = new Member();
		member.setMem_id(mem_id);
		
		try {
			memberService.deleteMember(member);
			request.setAttribute("message", "정상 삭제되었습니다");
		} catch (Exception e) {}
		return "/WEB-INF/view/member/memberDelete.jsp";
	}
	
}
