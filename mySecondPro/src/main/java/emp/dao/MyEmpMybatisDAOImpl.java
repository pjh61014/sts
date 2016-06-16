package emp.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import emp.dto.MyEmpDTO;
@Repository("empmybatis")
public class MyEmpMybatisDAOImpl implements MyEmpDAO {
	//Spring에서 Mybatis를 사용하기 위한 모든 기능을 제공해주는 핵심 클래스  == JdbcTemplate와 같은 개념 
	@Autowired
	SqlSession sqlsession;
	@Override
	public int count() {
		int result = sqlsession.selectOne("kitri.myemp.count");
		return result;
	}

	@Override
	public void insert(MyEmpDTO user) {
		
		int result = sqlsession.insert("kitri.myemp.insert", user);
		System.out.println(result+"개 삽입성공");
	}

	@Override
	public void update(MyEmpDTO userInfo) {
		int result = sqlsession.update("kitri.myemp.update", userInfo);
		System.out.println(result+"개 수정완료");

	}

	@Override
	public void delete(String id) {
		int result =sqlsession.delete("kitri.myemp.delete", id);
		System.out.println(result+"개 삭제완료");

	}

	@Override
	public MyEmpDTO login(String id, String pass) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MyEmpDTO> getMemberList() {
		System.out.println("mybatis로 selectall성공");
		return sqlsession.selectList("kitri.myemp.list");
	}

	@Override
	public List<MyEmpDTO> findByAddr(String addr) {
		// TODO Auto-generated method stub
		return sqlsession.selectList("kitri.myemp.search",addr);
		/*return sqlsession.selectList("kitri.myemp.search",addr);*/
	}

	@Override
	public MyEmpDTO read(String id) {
		return sqlsession.selectOne("kitri.myemp.detail", id);
	}

}
