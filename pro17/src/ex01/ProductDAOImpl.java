package ex01;

public class ProductDAOImpl implements ProductDAO {
	@Override
	public void listProducts() {
		System.out.println("ProductDAOImpl.listProducts 호출");
	}
}