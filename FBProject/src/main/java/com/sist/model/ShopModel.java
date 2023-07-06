package com.sist.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.sist.controller.RequestMapping;

public class ShopModel {
	@RequestMapping("shop/shop.do")
	public String main_page(HttpServletRequest request, HttpServletResponse response)
	{
		request.setAttribute("main_jsp", "../shop/shop.jsp");
		return "../main/home.jsp";
	}
}
