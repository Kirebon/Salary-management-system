package cn.itcast.itcaststore.domain;

//”√ªß¿‡
public class User {
	private int id;
	private int admin;
	private String name;
	private String password;
	private String gongzi;

	public String getGongzi() {
		return gongzi;
	}
	public void setGongzi(String gongzi) {
		this.gongzi = gongzi;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getAdmin() {
		return admin;
	}
	public void setAdmin(int admin) {
		this.admin = admin;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
