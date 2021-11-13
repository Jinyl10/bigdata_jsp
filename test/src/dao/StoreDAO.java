package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
	

}
