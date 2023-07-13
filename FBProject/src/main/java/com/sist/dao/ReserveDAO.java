package com.sist.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.GZIPOutputStream;

import com.sist.common.CreateDataBase;
import com.sist.vo.*;


public class ReserveDAO {
	
	   private Connection conn;
	   private PreparedStatement ps;
	   private CreateDataBase db=new CreateDataBase();
	   private static ReserveDAO dao;
	   
	   // 싱글턴 
	   public static ReserveDAO newInstance()
	   {
		   if(dao==null)
			   dao=new ReserveDAO();
		   return dao;
	   }

	   
	   // 구장 읽기
	   public List<GroundDetailVO> groundCategoryListData(String area) {
		   
		   List<GroundDetailVO> list=new ArrayList<GroundDetailVO>();
		   
		   try {
	
			   conn=db.getConnection();
			   String sql="SELECT gname,gaddr,gno FROM ground_detail "
			   		+ "WHERE gaddr LIKE '%'||?||'%'";
			   ps=conn.prepareStatement(sql);
			   ps.setString(1, area);
			   ResultSet rs=ps.executeQuery();
			   
			   while(rs.next()) {
				
				   GroundDetailVO vo=new GroundDetailVO();
				   vo.setGname(rs.getString(1));
				   vo.setGaddr(rs.getString(2));
				   vo.setGno(rs.getInt(3));				   
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

	   
	   // 구장 예약 가능한 날 읽어오기
	   public String groundReserveDay(int gno)
	   {
		   String result="";
		   try
		   {
			   conn=db.getConnection();
			   String sql="SELECT football_reserve_day FROM ground_detail "
			   		+ "WHERE gno=?";
				
			   ps=conn.prepareStatement(sql);
			   ps.setInt(1, gno);
			   ResultSet rs=ps.executeQuery();
			   
			   rs.next();
			   result=rs.getString(1);
			   rs.close();
			   
		   }catch(Exception ex)
		   {
			   ex.printStackTrace();
		   }
		   finally
		   {
			   db.disConnection(conn, ps);
		   }
		   return result;
	   }
	   
	   
	   public String footballReserveTime(int tno) {
		   String result="";
		   // 예약 가능 날짜 출력하기
		   try {
			   conn=db.getConnection();
			   String sql="SELECT time FROM football_reserve_day "
			   		+"WHERE rno=?";
			   ps=conn.prepareStatement(sql);
			   ps.setInt(1, tno);
			   ResultSet rs=ps.executeQuery();
			   rs.next();
			   result=rs.getString(1);
			   rs.close();
			   
		   } catch(Exception ex) {
			   ex.printStackTrace();
		   } finally {
			   db.disConnection(conn, ps);
		   }
		   
		   return result;
	   }
	   
	   public String footballReserve_GetTime(int tno)
	   {
		   String result="";
		   try
		   {
			   // 예약 시간 출력하기
			   conn=db.getConnection();
			   String sql="SELECT time FROM football_reserve_time "
					     +"WHERE tno=?";
			   ps=conn.prepareStatement(sql);
			   ps.setInt(1, tno);
			   ResultSet rs=ps.executeQuery();
			   rs.next();
			   result=rs.getString(1);
			   rs.close();
		   }catch(Exception ex)
		   {
			   ex.printStackTrace();
		   }
		   finally
		   {
			   db.disConnection(conn, ps);
		   }
		   return result;
	   }
	   
}



