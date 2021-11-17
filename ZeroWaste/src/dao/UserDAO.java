package dao;

import java.sql.*;
//import java.time.LocalDate;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.ConnectionPool;

public class UserDAO {

	public int login(String id, String password) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		try {
			String sql = "SELECT sid, spassword FROM user WHERE sid=?";
			conn = ConnectionPool.get();
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, id);
			rs = stmt.executeQuery();
			if (!rs.next())
				return 1;
			if (!password.equals(rs.getString("spassword")))
				return 2;

			return 0;
		} finally {
			if (rs != null)
				rs.close();
			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();
		}
	}

	public int join(String sid, String spassword, String sname, String semail) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		try {
			String sql = "INSERT INTO user(sid, spassword, sname, semail) VALUES (?,?,?,?)";
			conn = ConnectionPool.get();
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, sid);
			stmt.setString(2, spassword);
			stmt.setString(3, sname);
			stmt.setString(4, semail);

			int count = stmt.executeUpdate();
			return (count == 1) ? 1 : 2;

		} finally {
			if (rs != null)
				rs.close();
			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();
		}
	}

	public ArrayList<UserObj> getList() throws NamingException, SQLException {

		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		try {
			String sql = "SELECT * FROM user";

			conn = ConnectionPool.get();
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();

			ArrayList<UserObj> members = new ArrayList<UserObj>();

			while (rs.next()) {
				members.add(new UserObj(rs.getString("sid"), rs.getString("spassword"), rs.getString("sname"),
						rs.getString("semail")));
			}
			return members;
		} finally {
			if (rs != null)
				rs.close();
			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();
		}
	}


public UserObj getDetail(String sid) throws NamingException, SQLException{
		
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "SELECT * FROM user WHERE sid = ?";
			
			conn = ConnectionPool.get();
			stmt = conn.prepareStatement(sql);
				stmt.setString(1, sid);
			rs = stmt.executeQuery();
		
			rs.next();
			
			String id = rs.getString(1); 
			String ps = rs.getString(2);
			String name = rs.getString(3); 
			String email = rs.getString(4);			
			
			UserObj user = new UserObj(id,ps,name,email);

			return user;

		} finally {
			if(rs != null) rs.close();
			if(stmt != null) stmt.close();
			if(conn != null) conn.close();
		}
	}





}