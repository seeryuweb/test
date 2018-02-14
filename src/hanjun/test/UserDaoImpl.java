package hanjun.test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


import hanjun.test.DataSource;
import hanjun.test.User;

public class UserDaoImpl implements UserDao{
  public boolean register(User user)throws Exception{
		Connection conn =DataSource.getInstance().getConnection();
		String sql = "insert into users(hp1,hp2,hp3,email1,email2,id,pw) values(?,?,?,?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, user.getHp1());
		pstmt.setString(2, user.getHp2());
		pstmt.setString(3, user.getHp3());
		pstmt.setString(4, user.getEmail1());
		pstmt.setString(5, user.getEmail2());
		pstmt.setString(6, user.getId());
		pstmt.setString(7, user.getPw());
		
		boolean result = pstmt.execute();
		if(pstmt!=null) pstmt.close();
		if(conn!=null)  conn.close();
		return result;
  }
  public User validateUser(Login login)throws Exception {
	  Connection conn =DataSource.getInstance().getConnection();
		String sql = "select hp1,hp2,hp3,email1,email2 from users where id=? and pw=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		String id = login.getId();
		String pw = login.getPw();
		pstmt.setString(1,id);
		pstmt.setString(2,pw);
		ResultSet rs = pstmt.executeQuery();
		User user = null;
		if (rs.next()) {
			String hp1 = rs.getString("hp1");
			String hp2 = rs.getString("hp2");
			String hp3 = rs.getString("hp3");
			String email1 = rs.getString("email1");
			String email2 = rs.getString("email2");
			user = new User(id,pw);
			user.setHp1(hp1);
			user.setHp2(hp2);
			user.setHp3(hp3);
			user.setEmail1(email1);
			user.setEmail2(email2);
		}
		
		rs.close();
		if(pstmt!=null) pstmt.close();
		if(conn!=null)  conn.close();
		return user;
  }
  
}
