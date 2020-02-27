package ex01;

public class ProductServiceImpl implements ProductService {
	private ProductDAO productDAO;

	public void setProductDAO(ProductDAO memberDAO) {
		this.productDAO = productDAO;
	}

	@Override
	public void listProducts() {
		productDAO.listProducts();
	}
}