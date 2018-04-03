package com.study.member.web;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.study.member.service.MemberServiceImpl;
import com.study.member.vo.Member;
import com.study.servlet.IController;

public class MemberInsertController implements IController {

	public String process(HttpServletRequest request, HttpServletResponse response) throws ServletException{
		
		MemberServiceImpl memberService = new MemberServiceImpl();		
		
		Member member = new Member();
		member.setMem_id(request.getParameter("mem_id"));
		member.setMem_name(request.getParameter("mem_name"));
		member.setMem_pwd(request.getParameter("mem_pwd"));
		member.setMem_phone(request.getParameter("mem_phone"));
		member.setMem_email(request.getParameter("mem_email"));		
		
		request.setAttribute("member", member);		
		
		int cnt = memberService.insertMember(member);
		request.setAttribute("cnt", cnt);
		
		if(cnt > 0) {
			request.setAttribute("message", "회원등록을 완료했습니다");
		}else {
			request.setAttribute("message", "회원등에 실패하였습니다");
		}
		
		System.out.println(cnt);
		
		String viewPage = "/WEB-INF/view/member/memberInsert.jsp";
		
		System.out.println("등록");
		return viewPage;
	}
	
}
