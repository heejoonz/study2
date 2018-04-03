package com.study.util;

import java.sql.DriverManager;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;


public class OracleDB2 extends HttpServlet{

	public void init(ServletConfig config) throws ServletException{
		 try {
			String driver = "oracle.jdbc.driver.OracleDriver";
			Class.forName(driver);
			System.out.println("오라클 드라이버 로딩 성공~~");
			
		}catch (Exception e) {
			throw new ServletException(e);
		} 
		
		
		
	}	
}
