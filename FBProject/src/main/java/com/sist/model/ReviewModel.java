package com.sist.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.controller.RequestMapping;
import com.sist.dao.ReviewDAO;
import com.sist.vo.ReviewVO;

public class ReviewModel {
	
	@RequestMapping("../reserve/review_insert.do")
	public String reviewInsert(HttpServletRequest request, HttpServletResponse response) {
		
		try {
			request.setCharacterEncoding("UTF-8");
		} catch(Exception ex) {}
		
		String score=request.getParameter("score");
		String content=request.getParameter("content");
		
		HttpSession session=request.getSession();
		String id=(String)session.getAttribute("id");
		
		ReviewVO vo=new ReviewVO();
		vo.setScore(Double.parseDouble(score));
		vo.setContent(content);
		vo.setId(id);
		ReviewDAO dao=ReviewDAO.newInstance();
		dao.reviewInsert(vo);
		
		request.setAttribute("main_jsp", "../reserve/reserve.jsp");
		return "redirect:../main/home.jsp";
	}
	
	
	@RequestMapping("../reserve/reserve.do")
	public String reviewList(HttpServletRequest request,HttpServletResponse response) {
		
		String gno=request.getParameter("gno");
		
		ReviewDAO dao=ReviewDAO.newInstance();
		List<ReviewVO> list=dao.reviewListData(Integer.parseInt(gno));
		double totalReviewAvg=dao.reviewAvg();
		int totalReview=dao.reviewTotalReview();
		
		request.setAttribute("totalReviewAvg", totalReviewAvg);
		request.setAttribute("totalReview", totalReview);
		request.setAttribute("list", list);
		
		request.setAttribute("main_jsp", "../reserve/reserve.jsp");
		return "../main/home.jsp";
	}
	
	
	
	
	
}
