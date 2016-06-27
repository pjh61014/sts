package board.dto;

public class BoardDTO {
	private String board_no;
	private String mem_id;
	private String title;
	private String text;
	private int count;
	private String reg_dtm;
	private String mod_dtm;

	public BoardDTO() {

	}

	public BoardDTO(String board_no, String mem_id, String title, String text, int count, String reg_dtm,
			String mod_dtm) {
		super();
		this.board_no = board_no;
		this.mem_id = mem_id;
		this.title = title;
		this.text = text;
		this.count = count;
		this.reg_dtm = reg_dtm;
		this.mod_dtm = mod_dtm;
	}

	public BoardDTO(String board_no, String mem_id, String title, int count, String reg_dtm) {
		super();
		this.board_no = board_no;
		this.mem_id = mem_id;
		this.title = title;
		this.count = count;
		this.reg_dtm = reg_dtm;
	}

	public BoardDTO(String title, String text, String board_no) {
		super();
		this.title = title;
		this.text = text;
		this.board_no = board_no;
	}

	public String getBoard_no() {
		return board_no;
	}

	public void setBoard_no(String board_no) {
		this.board_no = board_no;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getReg_dtm() {
		return reg_dtm;
	}

	public void setReg_dtm(String reg_dtm) {
		this.reg_dtm = reg_dtm;
	}

	public String getMod_dtm() {
		return mod_dtm;
	}

	public void setMod_dtm(String mod_dtm) {
		this.mod_dtm = mod_dtm;
	}

	@Override
	public String toString() {
		return "BoardDTO [board_no=" + board_no + ", mem_id=" + mem_id + ", title=" + title + ", text=" + text
				+ ", count=" + count + ", reg_dtm=" + reg_dtm + ", mod_dtm=" + mod_dtm + "]";
	}

}
