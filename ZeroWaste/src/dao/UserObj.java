package dao;

public class UserObj {

	private String sid;
	private String spassword;
	private String sname;
	private String semail;
//	private String sphone;
	
	
	public UserObj(String sid, String spassword, String sname,String semail) {
		super();
		this.sid = sid;
		this.spassword = spassword;
		this.sname = sname;
		this.semail = semail;
	}
	
	public String getSid() {
		return this.sid;
	}
	public String getSpassword() {
		return this.spassword;
	}
	public String getSname() {
		return this.sname;
	}
	
	public String getSemail() {
		return this.semail;
	}

}