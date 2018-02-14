package hanjun.test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;

import hanjun.test.DataSource;


public class EntryDao {

	public static boolean register(Entry entry) throws Exception {
		Connection conn =DataSource.getInstance().getConnection();
		String sql = "insert into entries(user,title,content,date,entrynum,pw) values(?,?,?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, entry.getUser());
		pstmt.setString(2, entry.getTitle());
		pstmt.setString(3, entry.getContent());
		pstmt.setTimestamp(4, entry.getDate());
		entry.setEntryNum(EntryDao.countEntries()+1);
		pstmt.setInt(5, entry.getEntryNum());
		pstmt.setString(6, entry.getPw());
		boolean result = pstmt.execute();
		if(pstmt!=null) pstmt.close();
		if(conn!=null)  conn.close();
		return result;
	}
	public static int countEntries() throws Exception{
		Connection conn = DataSource.getInstance().getConnection();
		String sql = "select count(entrynum) from entries";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		int count = 0;
		if(rs.next()) {
			count = rs.getInt("count(entrynum)");
		}
		rs.close();
		if(pstmt!=null) pstmt.close();
		if(conn!=null)  conn.close();
		return count;
	}
	public static Entry getEntries(int count) throws Exception {
		Connection conn = DataSource.getInstance().getConnection();
		String sql = "select user,title,date,content,entrynum,pw from entries where entrynum=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, count);
		ResultSet rs = pstmt.executeQuery();
		Entry entry = new Entry();
		if(rs.next()) {
			int entrynum = rs.getInt("entrynum");
			String title = rs.getString("title");
			String user = rs.getString("user");
			String content = rs.getString("content");
			Timestamp date = rs.getTimestamp("date");
			String pw = rs.getString("pw");
			
			entry.setEntryNum(entrynum);
			entry.setTitle(title);
			entry.setUser(user);
			entry.setContent(content);
			entry.setDate(date);
			entry.setPw(pw);
		}
		rs.close();
		if(pstmt!=null) pstmt.close();
		if(conn!=null) conn.close();
		return entry;
	}
	public static boolean updateEntries(int entryNum,String title,String content) throws Exception{
		Connection conn = DataSource.getInstance().getConnection();
		String sql = "update entries set title=?,content=? where entrynum=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, title);
		pstmt.setString(2, content);
		pstmt.setInt(3, entryNum);
		int cnt = pstmt.executeUpdate();
		if(pstmt!=null) pstmt.close();
		if(conn!=null)  conn.close();
		return cnt==1;
	}

}
