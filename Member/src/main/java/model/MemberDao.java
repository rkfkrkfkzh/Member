package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberDao {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public void con() {
		// TODO Auto-generated method stub
		try {
	Class.forName("oracle.jdbc.driver.OracleDriver"); // 占쏙옙占쏙옙譴占� 占싸듸옙
conn = DriverManager.getConnection
("jdbc:oracle:thin:@db202110262237_high?TNS_ADMIN=/Users/imhyojin/Wallet_DB202110262237", "ADMIN", "Dkfdktek36270113"); // connection占쏙옙체占쏙옙占쏙옙
		} catch (Exception e) {
			System.out.println(e);
		}
	
	
	}
	
	public void discon() {
		// TODO Auto-generated method stub
		try {
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	
	
	}
	
public MemberVO login(String id,String password) throws SQLException{
		MemberVO vo=null;
		con();
	    String sql
	    ="select name,address from member where id=? and password=?";
	    pstmt=conn.prepareStatement(sql);
	    pstmt.setString(1, id);
	    pstmt.setString(2, password);
	    rs=pstmt.executeQuery();
	    if(rs.next()){
	vo=new MemberVO(id,password,rs.getString(1),rs.getString(2));
	    }
	    discon();
		return vo;
	}
	
		
	public ArrayList<MemberVO> getAllMemberList() throws SQLException{{
		// TODO Auto-generated method stub
		con();
		ArrayList<MemberVO> m = new ArrayList<MemberVO>();
		// MemberVO table占쏙옙 占쌍댐옙 id 占시뤄옙占쏙옙 占신쇽옙占쏙옙占식띰옙占쏙옙占� 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙 占싯삼옙
		String sql = "select * from member";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery(); // Query占쏙옙占쏙옙
			while (rs.next()) {
				m.add(new MemberVO(rs.getString(1), rs.getString(2),
						rs.getString(3), rs.getString(4)));
			}
			rs.close();
		} catch (Exception e) {
			System.out.println(e);
		}

		discon();
		return m;
	
	}
}




}






