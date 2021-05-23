package com.bookcaine.web.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.bookcaine.web.entity.Book;

public class JdbcBookService implements BookService {	
	
	public List<Book> getList() {
	
		return getList(1, "title", "");
	}
	
	public List<Book> getList(String query) {
		List<Book> list = new ArrayList<>();
		
		String url = "jdbc:oracle:thin:@hi.namoolab.com:1521/xepdb1";
		// 필터링, 정렬, 그룹핑, ... -> SQL에서 담당
		String sql = "SELECT * FROM BOOK WHERE TITLE LIKE '%" + query + "%' ORDER BY ID";

		try {
			Class.forName("oracle.jdbc.OracleDriver");
			Connection con = DriverManager.getConnection(url, "BOOK", "12345");
			
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			
			while(rs.next()) {
				Book book = new Book();
				int id = rs.getInt("id");
				String title = rs.getString("title");
				String author = rs.getString("author");
				String yn = rs.getString("yn");
				String details = rs.getString("details");
				
				book.setId(id);
				book.setTitle(title);
				book.setAuthor(author);
				book.setYn(yn);
				book.setDetails(details);
				
				list.add(book);
			}
			
			rs.close();
			st.close();
			con.close();
		} catch (Exception e) {
			throw new ServiceException();
		}
		
		return list;
	}
	
	public List<Book> getList(int page, String field, String query) {
		List<Book> list = new ArrayList<>();
		
//		int size = 5;
//		int startN = 1+(page-1)*size;
//		int endN = page*size;
		
		String url	 = "jdbc:oracle:thin:@hi.namoolab.com:1521/xepdb1";
		// 필터링, 정렬, 그룹핑, ... -> SQL에서 담당
		String sql = "SELECT B.*, C.NAME "
				+ "FROM BOOK B LEFT JOIN CATEGORY C "
				+ "ON B.CATEGORY_ID = C.ID "
				+ "WHERE "+field+" LIKE '%"+query+"%' ";
//				+ "WHERE ID BETWEEN "+startN+"AND"+endN;

		
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			Connection con = DriverManager.getConnection(url, "BOOK", "12345");
			
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			
			while(rs.next()) {
				Book book = new Book();
				int id = rs.getInt("id");
				String title = rs.getString("title");
				String author = rs.getString("author");
				String yn = rs.getString("yn");
				String details = rs.getString("details");
				String type = rs.getString("name");
				
				book.setId(id);
				book.setTitle(title);
				book.setAuthor(author);
				book.setYn(yn);
				book.setDetails(details);
				book.setType(type);
				
				list.add(book);
			}
			
			rs.close();
			st.close();
			con.close();
		} catch (Exception e) {
			throw new ServiceException();
		}
		
		return list;
	}
	
	public Book get(int id) {
		
		Book book = new Book();
		
		String sql = "SELECT * FROM BOOK WHERE ID=" + id;
		
		String url = "jdbc:oracle:thin:@hi.namoolab.com:1521/xepdb1";
		
		
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			Connection con = DriverManager.getConnection(url, "BOOK", "12345");
			
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			
			if(rs.next()) {
				String title = rs.getString("title");
				String author = rs.getString("author");
				
				book.setId(id);
				book.setTitle(title);
				book.setAuthor(author);
			}
	
			rs.close();
			st.close();
			con.close();
		} catch (Exception e) {
			throw new ServiceException();
		}
		
		return book;
		
	}

	public int update (Book book) throws ClassNotFoundException, SQLException {
		int result = 0;
		
		String sql = "UPDATE BOOK SET TITLE=[], AUTHOR=[], YN=[], DETAILS=?, category_id=[] WHERE ID=?";
		String url = "jdbc:oracle:thin:@hi.namoolab.com:1521/xepdb1";		
		Class.forName("oracle.jdbc.OracleDriver");
		Connection con = DriverManager.getConnection(url, "BOOK", "12345");
		
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, book.getDetails());
		st.setInt(2, book.getId());
		
		result = st.executeUpdate();
		
		return result;
		
	}
	
}
