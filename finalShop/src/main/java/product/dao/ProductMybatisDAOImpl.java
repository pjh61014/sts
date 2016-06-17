package product.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import product.dto.ProductDTO;
@Repository("productbatis")
public class ProductMybatisDAOImpl implements ProductDAO {

	@Autowired
	SqlSession sqlsession;
	
	@Override
	public List<ProductDTO> productlist(String category) {
		if(category==null){
			System.out.println("mybatis로 searchTopProduct 성공");
			return sqlsession.selectList("finalshop.prd.tbproduct");
		}else{
			System.out.println("mybatis로 productlist 성공");
			return sqlsession.selectList("finalshop.prd.tbproductct",category);
		}
	}

	@Override
	public List<ProductDTO> searchTopProduct() {
		System.out.println("mybatis로 searchTopProduct 성공");
		return sqlsession.selectList("finalshop.prd.topproduct");
	}

	@Override
	public ProductDTO read(String prd_no) {
		// TODO Auto-generated method stub
		return null;
	}

}
