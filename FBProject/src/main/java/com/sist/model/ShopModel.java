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
		String page = request.getParameter("page");
		if(page==null)
			page = "1";
		int curpage = Integer.parseInt(page);
		
		ShopDAO dao = ShopDAO.newInstance();
		List<ShopVO> list = dao.shopListData(curpage);
		int totalpage = dao.shopTotalPage();
		List<ShopCategoryVO> scList = dao.shopCategoryList();
		
		request.setAttribute("curpage", curpage);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("list", list);
		request.setAttribute("scList", scList);
		request.setAttribute("main_jsp", "../shop/shop.jsp");
		return "../main/home.jsp";
	}
}
