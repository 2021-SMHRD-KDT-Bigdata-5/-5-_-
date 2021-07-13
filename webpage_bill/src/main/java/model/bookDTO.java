package model;

public class bookDTO 
{
	private String name;
	private String tel;
	private String b_date;
	private String b_time;
	private String farm_name;
	
	public bookDTO(String name, String tel, String b_date, String b_time, String farm_name)
	{		
		this.name = name;
		this.tel = tel;
		this.b_date = b_date;
		this.b_time = b_time;
		this.farm_name = farm_name;
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

	public String getB_date() {
		return b_date;
	}

	public void setB_date(String b_date) {
		this.b_date = b_date;
	}

	public String getB_time() {
		return b_time;
	}

	public void setB_time(String b_time) {
		this.b_time = b_time;
	}

	public String getFarm_name() {
		return farm_name;
	}

	public void setFarm_name(String farm_name) {
		this.farm_name = farm_name;
	}
	
	
}
