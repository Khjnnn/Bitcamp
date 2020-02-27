package project.hm.hmp001_d003;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component("hmp001_d003VO") 
public class Hmp001_d003VO {
	private String id = "";
	private String name = "";
	private String price = "";
	private String desc = "";
	private String vendid = "";
	
	
	
	public Hmp001_d003VO() {
		System.out.println("MemberVO 생성자 호출");
	
	
	}



	public String getId() {
		return id;
	}



	public void setId(String id) {
		this.id = id;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getPrice() {
		return price;
	}



	public void setPrice(String price) {
		this.price = price;
	}



	public String getDesc() {
		return desc;
	}



	public void setDesc(String desc) {
		this.desc = desc;
	}



	public String getVendid() {
		return vendid;
	}



	public void setVendid(String vendid) {
		this.vendid = vendid;
	}
}
