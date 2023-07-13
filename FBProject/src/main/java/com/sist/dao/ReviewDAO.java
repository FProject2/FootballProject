package com.sist.dao;


import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.sist.common.*;
import com.sist.vo.ReviewVO;

public class ReviewDAO {

	private Connection conn;
	private PreparedStatement ps;
	private static ReviewDAO dao;
	CreateDataBase db=new CreateDataBase();
	
	   public static ReviewDAO newInstance()
	   {
		   if(dao==null)
			   dao=new ReviewDAO();
		   return dao;
	   }
	
	  public List<ReviewVO> reviewListData(int gno) {
		  
		  List<ReviewVO> list=new ArrayList<ReviewVO>();
		  
		  try {
			  
			  conn=db.getConnection();
			  String sql="SELECT rvno,id,score,TO_CHAR(regdate,'yyy-MM-dd HH24:MI:SS'),content "
			  		+ "FROM review "
			  		+ "WHERE gno=? "
			  		+ "ORDER BY regdate DESC";
			  ps=conn.prepareStatement(sql);
			  ps.setInt(1, gno);
			  ResultSet rs=ps.executeQuery();
			  while(rs.next()) {
				  ReviewVO vo=new ReviewVO();
				  vo.setRvno(rs.getInt(1));
				  vo.setId(rs.getString(2));
				  vo.setScore(rs.getDouble(3));
				  vo.setRegdate(rs.getDate(4));
				  vo.setContent(rs.getString(5));
				  list.add(vo);
			  }
			  rs.close();
			  
		  } catch(Exception ex) {
			   ex.printStackTrace();
		  } finally {
			  db.disConnection(conn, ps);
		  }
		  return list;
	  }
	   
	   
	   
	public void reviewInsert(ReviewVO vo) {
		
	
		try {
			/*
				private int rvno,gno; gno=구장정보
				private double score;
				privaLte Date regdate;
				private String content,id;
			 */
			conn=db.getConnection();
			String sql="INSERT INTO review(rvno,score,id,content,gno)"
					+ "VALUES(rv_rvno_seq.nextval,?,?,?,?)";
			ps=conn.prepareStatement(sql);
			
			ps.setDouble(1, vo.getScore());
			ps.setString(2, vo.getId());
			ps.setString(3, vo.getContent());
			ps.setInt(4,vo.getGno());
			ps.executeUpdate();
			
		} catch(Exception ex) {
			ex.printStackTrace();
		} finally {
			db.disConnection(conn, ps);
		}

	}
	
	
	public int reviewTotalReview () {
		
		int totalReview=0;
		
		try {
			conn=db.getConnection();
			String sql="SELECT COUNT(*) FROM review";
			ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			
			totalReview = rs.getInt(1);
			rs.close();
		} catch(Exception ex) {
			ex.printStackTrace();
		} finally {
			db.disConnection(conn, ps);
		}
		return totalReview;
		
	}
	
	
	public double reviewAvg() {
		
		double totalReviewAvg = 0.0;
		
		try {
			conn=db.getConnection();
			String sql="SELECT AVG(score) FROM review";
			ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			
			totalReviewAvg = rs.getDouble(1);
			
			rs.close();
		} catch(Exception ex) {
			ex.printStackTrace();
		} finally {
			db.disConnection(conn, ps);
		}
		
		return totalReviewAvg;
	}
	
	
}
