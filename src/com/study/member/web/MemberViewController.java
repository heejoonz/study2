package com.study.member.web;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.study.member.service.MemberServiceImpl;
import com.study.member.vo.Member;
import com.study.member.vo.MemberSearch;
import com.study.servlet.IController;

public class MemberViewController  implements IController{
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws ServletException {
	
		MemberServiceImpl memberService = new MemberServiceImpl();
		MemberSearch memberSearch = new MemberSearch();
		memberSearch.setting(memberService.getMemberCount(memberSearch));
		
		
		
		List<Member> list = memberService.getMemberList(memberSearch);
		request.setAttribute("list", list);
		
		String viewPage = "/WEB-INF/view/member/memberView.jsp";
		
		String mem_id = request.getParameter("mem_id");	
		if(mem_id == null || mem_id.trim().equals("")) {
			return "redirect:/member/memberList.do";
		}
		
		
		Member member = memberService.getMember(mem_id);
		request.setAttribute("member", member);
		
		
		return viewPage;
	}
	

}
