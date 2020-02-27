package sec03.ex01;

public class EmpVO {
	private String id;
	private String name;
	private int price;
	private String desc;
	private String vendid;
	
	public EmpVO() {
		System.out.println("memberVO 생성자 호출");
	}

	public EmpVO(String id, String name, int price, String desc, String vendid) {
		this.id = id;
		this.name = name;
		this.price = price;
		this.desc = desc;
		this.vendid = vendid;
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
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
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
