package board.dao;

import java.util.List;

import board.dto.BoardDTO;

public interface BoardDAO {
	// 게시물 등록
	void insert(BoardDTO brd);

	// 게시물 갱신
	void update(BoardDTO brd);

	//게시물 리스트 조회
	List<BoardDTO> list();

	//게시물 상세보기 
	BoardDTO read(String board_no);
	
	//카운트 증가
	void countup(String board_no);
	
	//게시물 삭제
	void delete(String board_no);

}
