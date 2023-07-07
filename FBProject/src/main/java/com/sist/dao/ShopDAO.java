package com.sist.dao;

import java.util.*;
import java.sql.*;
import com.sist.vo.*;
import com.sist.common.*;

public class ShopDAO {
	private Connection conn;
	private PreparedStatement ps;
	private CreateDataBase db = new CreateDataBase();
	private static ShopDAO dao;
	
	public static ShopDAO newInstance() {
		if(dao==null)
			dao = new ShopDAO();
		return dao;
	}
	
	public List<ShopCategoryVO> shopCategoryList(){
		List<ShopCategoryVO> list = new ArrayList<ShopCategoryVO>();
		
		try {
			conn = db.getConnection();
			
			String sql = "SELECT cno, category_name FROM category";
			ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				ShopCategoryVO vo = new ShopCategoryVO();
				
				vo.setCno(rs.getInt(1));
				vo.setCategory_name(rs.getString(2));
				
				list.add(vo);
			}
			rs.close();
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			db.disConnection(conn, ps);
		}
		
		return list;
	}
	
	//전체 물품 리스트
	public List<ShopVO> shopListData(int page){
		List<ShopVO> list = new ArrayList<ShopVO>();
		
		try {
			conn = db.getConnection();
			// cprice : 소비자가(원가), price : 판매가
			String sql = "SELECT gno, goods_name, goods_image, brand, cprice, price, cno, num "
					+ "FROM (SELECT gno, goods_name, goods_image, brand, cprice, price, cno, rownum AS num "
					+ "FROM (SELECT /*+ INDEX_ASX(gs_gno_pk)*/gno, goods_name, goods_image, brand, cprice, price, cno "
					+ "FROM goods)) WHERE num BETWEEN ? AND ?";
			ps = conn.prepareStatement(sql);
			
			int rowSize = 24;
			int start = (rowSize*page)-(rowSize-1);
			int end = rowSize*page;
			
			ps.setInt(1, start);
			ps.setInt(2, end);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				ShopVO vo = new ShopVO();
				
				vo.setGno(rs.getInt(1));
				vo.setGoods_name(rs.getString(2));
				vo.setGoods_image(rs.getString(3));
				vo.setBrand(rs.getString(4));
				vo.setCprice(rs.getInt(5));
				vo.setPrice(rs.getInt(6));
				vo.setCno(rs.getInt(7));
				
				list.add(vo);
			}
			rs.close();
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			db.disConnection(conn, ps);
		}
		
		
		return list;
	}
	
	// 총페이지
	public int shopTotalPage() {
		int total = 0;
		
		try {
			conn = db.getConnection();
			
			String sql = "SELECT CEIL(COUNT(*)/24.0) FROM goods";
			ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			rs.next();
			total = rs.getInt(1);
			rs.close();
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}finally {
			db.disConnection(conn, ps);
		}
		
		
		return total;
	}
}
