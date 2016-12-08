package com.ch.teampro1.dao;

import java.util.List;

import com.ch.teampro1.model.Board;
import com.ch.teampro1.model.BoardRe;

public interface BoardDao {
	public List<Board> listAll(int tId);	//게시글 목록
	public List<BoardRe> boardreList() ;	//댓글 목록
	public int insert_file(Board board);
	public int insert_schedule(Board board);
	public int reply_insert(BoardRe boardre);
	public int delete(int bId);
	public int update_file(Board board);
	public Board detail(int bId);
}
