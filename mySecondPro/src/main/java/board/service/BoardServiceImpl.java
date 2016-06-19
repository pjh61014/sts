package board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import board.dao.BoardDAO;
import board.dto.BoardDTO;
@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	@Qualifier("brdmybatis")
	BoardDAO dao;
	
	@Override
	public void insert(BoardDTO brd) {
		dao.insert(brd);

	}

	@Override
	public void update(BoardDTO brd) {
		 dao.update(brd);
	}

	@Override
	public List<BoardDTO> list() {
		// TODO Auto-generated method stub
		return dao.list();
	}

	@Override
	public BoardDTO read(String board_no) {
		// TODO Auto-generated method stub
		System.out.println(board_no);
		return dao.read(board_no);
	}

	@Override
	public void countup(String board_no) {
		dao.countup(board_no);
		
	}

	@Override
	public void delete(String board_no) {
		dao.delete(board_no);
		
		
	}

}
