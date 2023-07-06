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
	
	//물품 리스트
	public List<ShopVO> shopCategoryListData(int page, int type){
		List<ShopVO> list = new ArrayList<ShopVO>();
		
		
		
		return list;
	}
}
