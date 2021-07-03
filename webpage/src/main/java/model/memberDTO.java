package model;

public class memberDTO 
{
	private String email;
	private String pw;
	private String name;
	private String tel;
	public memberDTO(String email, String pw, String name, String tel) {
		super();
		this.email = email;
		this.pw = pw;
		this.name = name;
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}

	
}
