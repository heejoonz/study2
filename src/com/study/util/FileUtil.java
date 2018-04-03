package com.study.util;

import java.text.DecimalFormat;

public class FileUtil {
	
	public static String fancySize(long size) {
		
		DecimalFormat df = new DecimalFormat("###,###.000");
		if(size < 1024) {
			return size + " Bytes";
		}else if(size < (1024.0*1024.0)) {
			return  df.format(size/1024.0) + " kb";
		}else {
			return  df.format(size/(1024.0*1024.0)) + " kb";
		}	
	}
	
	
	public static void main(String[] args) {
		System.out.println( 14 / 5.0 );
		System.out.println( FileUtil.fancySize(500));
		System.out.println( FileUtil.fancySize(2090));
		System.out.println( FileUtil.fancySize(105000));		
	}
	

}
