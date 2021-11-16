package dao;

public class StoreObj {
	private String sid;
	private String sname;
	private String scategory;
	private String saddr;
	private String sweb;
	private String sproduct;
	
	public StoreObj(String sid, String sname, String scategory, String saddr, String sweb, String sproduct) {
		super();
		this.sid = sid;
		this.sname = sname;
		this.scategory = scategory;
		this.saddr = saddr;
		this.sweb = sweb;
		this.sproduct = sproduct;
	}

	public String getSid() {
		return this.sid;
	}

	public String getSname() {
		return this.sname;
	}

	public String getScategory() {
		return this.scategory;
	}

	public String getSaddr() {
		return this.saddr;
	}

	public String getSweb() {
		return this.sweb;
	}

	public String getSproduct() {
		return this.sproduct;
	}
	
	
	

}
