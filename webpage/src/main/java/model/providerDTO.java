package model;

public class providerDTO 
{
	private String p_email;
	private String p_name;
	private String p_pw;
	private String p_tel;
	
	public providerDTO(String p_email, String p_name, String p_pw, String p_tel) 
	{
		this.p_email = p_email;
		this.p_name = p_name;
		this.p_pw = p_pw;
		this.p_tel = p_tel;
	}

	public String getP_email() {
		return p_email;
	}

	public void setP_email(String p_email) {
		this.p_email = p_email;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public String getP_pw() {
		return p_pw;
	}

	public void setP_pw(String p_pw) {
		this.p_pw = p_pw;
	}

	public String getP_tel() {
		return p_tel;
	}

	public void setP_tel(String p_tel) {
		this.p_tel = p_tel;
	}
	
	
	
	

}
