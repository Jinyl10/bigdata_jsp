package dao;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.ConnectionPool;

public class StoreDAO {
	
	//스토어 조회
	public ArrayList<StoreObj> getList() 
			throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "SELECT * FROM store";
			
			conn = ConnectionPool.get();
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			
			ArrayList<StoreObj> stores = new ArrayList<StoreObj>();
			
			while(rs.next()) {
				stores.add(new StoreObj(rs.getString("sid"),
						rs.getString("sname"), rs.getString("scategory"),
						rs.getString("saddr"), rs.getString("sweb"),
						rs.getString("sproduct")
						)); 
			} return stores;
			
		} finally {
			if (rs != null) rs.close();
			if (stmt != null) stmt.close();
			if (conn != null) conn.close();
		}
		
	}
	
	//스토어 등록
	public int insert(String sid, String sname, String scategory, String saddr, String sweb, String sproduct) 
			throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {
			String sql = "INSERT INTO store(sid, sname, scategory, saddr, sweb, sproduct) VALUES(?,?,?,?,?,?)";
			
			conn = ConnectionPool.get();
			stmt = conn.prepareStatement(sql);
				stmt.setString(1, sid);
				stmt.setString(2, sname);
				stmt.setString(3, scategory);
				stmt.setString(4, saddr);
				stmt.setString(5, sweb);
				stmt.setString(6, sproduct);
			
			int count = stmt.executeUpdate();
			return (count == 1) ? 1:0;
		} finally {
			if(stmt != null) stmt.close();
			if(conn != null) conn.close();
		}
	}
	
	// 세부사항
	public StoreObj getDetail(String sid) throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs =  null;
		
		try {
			String sql = "SELECT * FROM store WHERE sid = ?";
			
			conn = ConnectionPool.get();
			stmt = conn.prepareStatement(sql);
				stmt.setString(1,sid);
			rs = stmt.executeQuery();
			
			rs.next();
			
			String id = rs.getString(1);
			String name = rs.getString(2);
			String category = rs.getString(3);
			String addr = rs.getString(4);
			String web = rs.getString(5);
			String product = rs.getString(6);
			
			StoreObj store = new StoreObj(id, name, category, addr, web, product);
			
			return store;
			
		} finally {
			if(rs != null) rs.close();
			if(stmt != null) stmt.close();
			if(conn != null) conn.close();
		}
	}
	
	// 스토어 삭제
	public int delete(String id) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {
			String sql = "DELETE FROM store WHERE sid = ?";
			conn = ConnectionPool.get();
			stmt = conn.prepareStatement(sql);
				stmt.setString(1,id);
				
			int count = stmt.executeUpdate();
			return (count == 1) ? 1 : 0;		
		} finally {
			if(stmt != null) stmt.close();			
			if(conn != null) conn.close();			
		}
				
	}

}
