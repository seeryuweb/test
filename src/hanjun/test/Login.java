package hanjun.test;

public class Login {

	private String pw;
    private String id;
    
    public Login(String id, String pw) {
    	this.id = id; this.pw = pw;
    }
    
    public String getId() {
    	return this.id;
    }
    public String getPw() {
    	return this.pw;
    }

    public String setId(String id) {
    	this.id = id;
    	return this.id;
    }
    public String setPw(String pw) {
    	this.pw = pw;
    	return this.pw;
    }

}
