package product.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import product.dto.ProductDTO;
import product.dto.ProductRowMapper;
import product.dto.ProductRowMapper2;

@Repository("prddao")
public class ProductDAOImpl implements ProductDAO {
	@Autowired
	private JdbcTemplate template;

	@Override
	public List<ProductDTO> productlist(String category){
		if(category==null){
			return template.query("select * from TB_PRODUCT", new ProductRowMapper());
		}else{
			return template.query("select * from TB_PRODUCT where category_no=?", new Object[]{category},new ProductRowMapper());
		}

	}

	@Override
	public List<ProductDTO> searchTopProduct(){
		String PRODUCT_TOP
				= "select  prd_no, prd_nm, IMG_GEN_FILE_NM "
				  +"from (select o.prd_no, p.prd_nm, p.IMG_GEN_FILE_NM, o.qty "  
				         +"from tb_product p, "
									+ "(select prd_no,sum(qty) qty "
									+ "from TB_ORDER_PRODUCT group by prd_no) o "   
						 +"where o.prd_no=p.prd_no " 
						 +"order by o.qty desc) "
				  +"where rownum <=8 ";	
		
		return template.query(PRODUCT_TOP, new ProductRowMapper2());		
	
	}

	@Override
	public ProductDTO read(String prd_no){
		// TODO Auto-generated method stub
		return null;
	}

}
