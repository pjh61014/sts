package product.dto;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
//JdbcTemplate���� ������ jdbc���ø� Ŭ�������� select�� ������ �� ó���� �� �ֵ��� 
//�ϳ��� row�� ���� ó�� ������ ����ִ� ��ü�� query�޼ҵ� ���ο��� ȣ���� ��ü
public class ProductRowMapper implements RowMapper<ProductDTO> {

	@Override
	public ProductDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
		//List�� �� ��ҷ� add��ų ���ڵ带 dto�� ��ȯ�ϴ� �۾��� ����
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
			//List�� �� ��ҷ� add��ų ���ڵ带 dto�� ��ȯ�ϴ� �۾��� ����
//			System.out.println("mapRow()===>"+rowNum);
			ProductDTO prd2 = new ProductDTO(rs.getString(1),rs.getString(2),
										rs.getString(3));
			
			return prd2;
	}


}
