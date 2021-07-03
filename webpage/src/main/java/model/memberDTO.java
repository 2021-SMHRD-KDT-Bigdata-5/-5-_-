package model;

public class memberDTO 
{
	private String email;
	private String name;
	private String pw;
	private String tel;
	
	public memberDTO(String email, String name, String pw, String tel)
	{
		this.email = email;
		this.name = name;
		this.pw = pw;
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}
	
	
	
}
