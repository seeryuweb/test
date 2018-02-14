package hanjun.test;
import java.sql.*;

public class Entry {
  private String title;
  private String user;
  private String content;
  private int entryNum;
  private Timestamp date = null;
  private String pw;
  public Entry(String user,String title, String pw) {
	  this.title = title; this.user = user; this.pw = pw;
  }
  public Entry() {
	  
  }
  public String getPw() {
	  return this.pw;
  }
  public int getEntryNum() {
	  return this.entryNum;
  }
  public String getTitle(){
	  return this.title;
  }
  public String getUser() {
	  return this.user;
  }
  public String getContent() {
	  return this.content;
  }
  public Timestamp getDate() {
	  return this.date;
  }
  public void setTitle(String title) {
	  this.title = title;
  }
  public void setUser(String user) {
	  this.user = user;
  }
  public void setContent(String content) {
	  this.content = content;
  }
  public void setDate(Timestamp date) {
	  this.date = date;
  }
  public void setEntryNum(int count) {
	  this.entryNum = count;
  }
  public void setPw(String pw) {
	  this.pw = pw;
  }
}
