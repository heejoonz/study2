package com.study.member.web;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.study.servlet.IController;

public class MemberFormController implements IController {
	
	public String process(HttpServletRequest request, HttpServletResponse response ) throws ServletException{
		
	
	
		String viewPage = "/WEB-INF/view/member/memberForm.jsp";
		
		return viewPage;
				
	}

}
