package hanjun.test;

public class User {
	private String hp1;
	private String hp2;
	private String hp3;
	private String email1;
	private String email2;
	private String pw;
    private String id;
    
    public User(String id, String pw) {
    	this.id = id; this.pw = pw;
    }
    
    public String getId() {
    	return this.id;
    }
    public String getPw() {
    	return this.pw;
    }
    public String getHp1() {
    	return this.hp1;
    }
    public String getHp2() {
    	return this.hp2;
    }
    public String getHp3() {
    	return this.hp3;
    }
    public String getEmail1() {
    	return this.email1;
    }
    public String getEmail2() {
    	return this.email2;
    }
    public String setId(String id) {
    	this.id = id;
    	return this.id;
    }
    public String setPw(String pw) {
    	this.pw = pw;
    	return this.pw;
    }
    public void setHp1(String hp1) {
    	this.hp1 = hp1;
    }
    public void setHp2(String hp2) {
    	this.hp2 = hp2;
    }
    public void setHp3(String hp3) {
    	this.hp3 = hp3;
    }
    public void setEmail1(String email1) {
    	this.email1 = email1;
    }
    public void setEmail2(String email2) {
    	this.email2 = email2;
    }
}

