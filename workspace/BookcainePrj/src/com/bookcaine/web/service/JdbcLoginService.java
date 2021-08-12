package com.bookcaine.web.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.bookcaine.web.entity.Member;

public class JdbcLoginService {
	
	//로그인 시 아이디, 비밀번호 체크 메서드 // 아이디 비밀번호 인자로 받음
	public Member actionLogin(String id, String pwd) throws ClassNotFoundException, SQLException {
		String url = "jdbc:oracle:thin:@hi.namoolab.com:1521/xepdb1";
		String sql = "SELECT * FROM MEMBER WHERE ID = ? AND PWD = ?";
		Class.forName("oracle.jdbc.OracleDriver");
		
		Connection con = null;
		PreparedStatement st = null;
		ResultSet rs = null;
		Member loginMember = null;
		
		try {
			con = DriverManager.getConnection(url, "book", "12345");
			st = con.prepareStatement(sql);
			st.setString(1, id);
			st.setString(2, pwd);
			rs = st.executeQuery();
		
			if(rs.next()) {//입력된 아이디에 해당하는 비번 있을 경우
				loginMember = new Member();
				loginMember.setId(rs.getString("ID"));
				loginMember.setPwd(rs.getString("PWD"));
				loginMember.setName(rs.getString("NAME"));
				loginMember.setImageUrl(rs.getString("IMAGE_URL"));
				loginMember.setPhone(rs.getString("PHONE"));
				loginMember.setNickname(rs.getString("NICKNAME"));
				loginMember.setEmail(rs.getString("EMAIL"));
				loginMember.setBirthday(rs.getString("BIRTHDAY"));
				loginMember.setGender(rs.getString("GENDER"));
				loginMember.setJoinDate(rs.getString("JOIN_DATE"));
			}		
		}catch(Exception sqle) {
			throw new RuntimeException(sqle.getMessage());
		}finally {
			try {
				if(st != null) { st.close(); st = null;}
				if(con != null) { con.close(); con = null;}
			}catch(Exception e) {
				throw new RuntimeException(e.getMessage());
			}
		}return loginMember;
	}
	
	
}
