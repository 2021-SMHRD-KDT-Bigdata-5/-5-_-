package model;

public class memberDTO {
	private String email;
	private String pw;
	private String farm_name;
	private String tel;
	private String product;

	public memberDTO(String email, String pw, String farm_name, String tel, String product)
	{
		this.email = email;
		this.pw = pw;
		this.farm_name = farm_name;
		this.tel = tel;
		this.product = product;
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

	public String getFarm_name() {
		return farm_name;
	}

	public void setFarm_name(String farm_name) {
		this.farm_name = farm_name;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getProduct() {
		return product;
	}

	public void setProduct(String product) {
		this.product = product;
	}

	
	
}