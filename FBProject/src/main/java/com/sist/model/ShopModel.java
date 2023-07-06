package com.sist.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.sist.controller.RequestMapping;
import com.sist.dao.*;
import com.sist.vo.*;

public class ShopModel {
	@RequestMapping("shop/shop.do")
	public String main_page(HttpServletRequest request, HttpServletResponse response)
	{
		ShopDAO dao = ShopDAO.newInstance();
		List<ShopCategoryVO> scList = dao.shopCategoryList();
		
		request.setAttribute("scList", scList);
		request.setAttribute("main_jsp", "../shop/shop.jsp");
		return "../main/home.jsp";
	}
}
