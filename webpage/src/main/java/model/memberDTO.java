package model;

public class memberDTO {
	
	private String id;
	private String pw;
	private String name;
	private String num;
	private String add;
	private String a;
	public memberDTO(String id, String pw, String name, String num, String add, String a) {
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.num = num;
		this.add = add;
		this.a = a;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getAdd() {
		return add;
	}
	public void setAdd(String add) {
		this.add = add;
	}
	public String getA() {
		return a;
	}
	public void setA(String a) {
		this.a = a;
	}

	
}
