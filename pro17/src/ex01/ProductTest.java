package ex01;

import org.springframework.context.support.GenericXmlApplicationContext;
import org.springframework.core.io.FileSystemResource;
import ex01.ProductService;

public class ProductTest {
	public static void main(String[] args) {
		
		GenericXmlApplicationContext ctx = new GenericXmlApplicationContext("classpath:product01.xml");
		System.out.println(ctx);
		ProductService service = ctx.getBean(ProductService.class);  
		
		service.listProducts();
		}
}
