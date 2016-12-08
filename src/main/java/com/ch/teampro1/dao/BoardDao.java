package com.ch.teampro1.dao;

import java.util.List;

import com.ch.teampro1.model.Board;
import com.ch.teampro1.model.BoardRe;
import com.ch.teampro1.model.MemberTmConn;

public interface BoardDao {
	public List<Board> listAll(int tId);	//게시글 목록
	public List<BoardRe> boardreList() ;	//댓글 목록
	public int insert_file(Board board);
	public int insert_schedule(Board board);
	public int reply_insert(BoardRe boardre);
	public int delete(int bId);
<<<<<<< HEAD
	public List<MemberTmConn> phoneList(int tId);
=======
	public int update_file(Board board);
	public Board detail(int bId);
>>>>>>> fcbe2c50120db79b829138ec9d44d4e5316b4f89
}
