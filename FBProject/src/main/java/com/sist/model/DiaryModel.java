package com.sist.model;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.*;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.RequestMapping;
import com.sist.vo.*;
import com.sist.dao.ReserveDAO;

public class DiaryModel {
	
  @RequestMapping("reserve/diary.do")
  public String diaryData(HttpServletRequest request,HttpServletResponse response)
  {
	    String gno=request.getParameter("gno");
	    System.out.println("gno="+gno);
	    String strYear=request.getParameter("year");
	    String strMonth=request.getParameter("month");
	    Date date=new Date();
	    SimpleDateFormat sdf=new SimpleDateFormat("yyyy-M-d");
	    String today=sdf.format(date);
	    StringTokenizer st=new StringTokenizer(today,"-");
	    String sy=st.nextToken();
	    String sm=st.nextToken();
	    String sd=st.nextToken();
	    
	    if(strYear==null)
	    	strYear=sy;
	    
	    if(strMonth==null)
	    	strMonth=sm;
	    
	    int year=Integer.parseInt(strYear);
	    int month=Integer.parseInt(strMonth);
	    int day=Integer.parseInt(sd);
	    // 요일 
	    String[] strWeek={"일","월","화","수","목","금","토"};
	    
	    Calendar cal=Calendar.getInstance();
	    cal.set(Calendar.YEAR,year);
	    cal.set(Calendar.MONTH,month-1);
	    cal.set(Calendar.DATE,1); // 1일자 
	    
	    int week=cal.get(Calendar.DAY_OF_WEEK);// 요일 구하기
	    int lastday=cal.getActualMaximum(Calendar.DATE);// 각달의 마지막 일 
	    
	    week=week-1;
	    
	    request.setAttribute("year", year);
	    request.setAttribute("month", month);
	    request.setAttribute("day", day);
	    request.setAttribute("week", week);
	    request.setAttribute("lastday", lastday);
	    request.setAttribute("strWeek", strWeek);
	    
	    // 오라클 데이터 읽기 
	    int[] rday=new int[32];
	    ReserveDAO dao=ReserveDAO.newInstance();
	    String r=dao.groundReserveDay(Integer.parseInt(gno));
	    st=new StringTokenizer(r,",");
	    while(st.hasMoreTokens())
	    {
	    	int a=Integer.parseInt(st.nextToken());
	    	if(a>=day)
	    	{
	    		rday[a]=1;
	    	}
	    }
	    request.setAttribute("rday", rday);
	  return "../reserve/diary.jsp";
  }
  
  
  @RequestMapping("reserve/reserve_main.do")
  public String reserve_main(HttpServletRequest request,HttpServletResponse response)
  {
	  return "reserve_main.jsp";
  }
  
  
  @RequestMapping("reserve/time.do")
  public String reserve_time(HttpServletRequest request,
		  HttpServletResponse response)
  {
	  String day=request.getParameter("day");
	  ReserveDAO dao=ReserveDAO.newInstance();
	  String times=dao.footballReserveTime(Integer.parseInt(day));
	  StringTokenizer st=new StringTokenizer(times,",");
	  List<String> list=new ArrayList<String>();
	  while(st.hasMoreTokens())
	  {
		  String time=dao.footballReserve_GetTime(
				  Integer.parseInt(st.nextToken()));
		  list.add(time);
	  }
	  
	  request.setAttribute("list", list);
	  return "time.jsp";
  }
  
}