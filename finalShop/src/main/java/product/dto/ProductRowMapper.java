package product.dto;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
//JdbcTemplate같은 스프링 jdbc템플릿 클래스에서 select를 수행한 후 처리할 수 있도록 
//하나의 row에 대한 처리 정보를 담고있는 객체로 query메소드 내부에서 호출할 객체
public class ProductRowMapper implements RowMapper<ProductDTO> {

	@Override
	public ProductDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
		//List의 한 요소로 add시킬 레코드를 dto로 변환하는 작업을 수행
//		System.out.println("mapRow()===>"+rowNum);
		ProductDTO prd = new ProductDTO(rs.getString(1),rs.getString(2),
									rs.getString(3),rs.getString(4),
									rs.getInt(5),rs.getString(6),
									rs.getString(7),rs.getString(8),
									rs.getString(9),rs.getString(10),
									rs.getString(11),rs.getString(12),
									rs.getString(13),rs.getString(14));
		
		return prd;
	}
		
		
		public ProductDTO mapRow2(ResultSet rs, int rowNum) throws SQLException {
			//List의 한 요소로 add시킬 레코드를 dto로 변환하는 작업을 수행
//			System.out.println("mapRow()===>"+rowNum);
			ProductDTO prd2 = new ProductDTO(rs.getString(1),rs.getString(2),
										rs.getString(3));
			
			return prd2;
	}


}
