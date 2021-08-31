package com.saeyan.javabeans;

public class MemberBean {
	private String name;
	private String userid;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	
	//매개 변수가 있는 생성자
	public MemberBean(String name, String userid) {
		this.name = name;
		this.userid = userid;
	}
	//매개 변수가 없는 디폴트 생성자
	public MemberBean() {
	}
	//레퍼런스 변수만 기술해도 출력될수 있도록 하기 위해
	@Override
	public String toString() {
		return "MemberBean [name=" + name + ", userid=" + userid + "]";
	}
	
	
	
}
