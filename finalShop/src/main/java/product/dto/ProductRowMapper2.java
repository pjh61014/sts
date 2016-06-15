package product.dto;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
//JdbcTemplate���� ������ jdbc���ø� Ŭ�������� select�� ������ �� ó���� �� �ֵ��� 
//�ϳ��� row�� ���� ó�� ������ ����ִ� ��ü�� query�޼ҵ� ���ο��� ȣ���� ��ü
public class ProductRowMapper2 implements RowMapper<ProductDTO> {

	@Override
	public ProductDTO mapRow(ResultSet rs, int rowNum) throws SQLException {
		//List�� �� ��ҷ� add��ų ���ڵ带 dto�� ��ȯ�ϴ� �۾��� ����
//		System.out.println("mapRow()===>"+rowNum);
		ProductDTO prd = new ProductDTO(rs.getString(1),rs.getString(2),
									rs.getString(3));
		
		return prd;
	}
		
		
}
