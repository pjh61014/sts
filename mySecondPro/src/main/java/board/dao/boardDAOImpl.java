package board.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import board.dto.BoardDTO;
@Repository("boarddao")
public class boardDAOImpl implements BoardDAO {

	@Autowired
	private JdbcTemplate template;
	
	@Override
	public void insert(BoardDTO brd) {
		String sql = "insert into tb_board values(boardno.nextval,?,?,?,null,1,to_char(sysdate,'YYYYMMDDHH24MISS'),null)";
		int result = template.update(sql,brd.getMem_id(),brd.getTitle(),brd.getText());
		System.out.println(result+ " °³ »ðÀÔ¼º°ø");
	}

	@Override
	public void update(BoardDTO brd) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<BoardDTO> list() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public BoardDTO read(String board_no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void countup(String board_no) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(String board_no) {
		// TODO Auto-generated method stub
		
	}

}
