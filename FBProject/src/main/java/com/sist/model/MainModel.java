package com.sist.model;

import java.util.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.sist.controller.RequestMapping;
import com.sist.vo.*;
import com.sist.dao.*;

public class MainModel {
	
	@RequestMapping("main/main.do")
	public String main_page(HttpServletRequest request, HttpServletResponse response)
	{
		try {
			request.setCharacterEncoding("UTF-8");
		}catch(Exception ex) {}
		
		// 예약 구장 리스트
		String area = request.getParameter("area");
		if(area==null) {
			area="서울";
		}
		ReserveDAO dao =ReserveDAO.newInstance();
		List<GroundDetailVO> list = dao.groundCategoryListData(area);
		request.setAttribute("list", list);
		
		// 메인 상품 리스트~
		ShopDAO sdao = ShopDAO.newInstance();
		List<ShopVO> sList = sdao.mainGoodsList();
		request.setAttribute("sList", sList);
		
		request.setAttribute("main_jsp", "../main/main.jsp");
		return "../main/home.jsp";
	}

}
