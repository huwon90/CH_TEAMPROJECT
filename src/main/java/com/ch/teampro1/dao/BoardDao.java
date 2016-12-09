package com.ch.teampro1.dao;

import java.util.List;

import com.ch.teampro1.model.Board;
import com.ch.teampro1.model.BoardRe;

public interface BoardDao {
	//게시글 목록
	public List<Board> listAll(int tId);
		//댓글 목록
	public List<BoardRe> boardreList() ;
		//무한 스크롤 게시글 
	public List<Board> infiniteScroll(Board infi);
	
	public int insert_file(Board board);
	
	public int insert_schedule(Board board);
	
	public int reply_insert(BoardRe boardre);
	
	public int delete(int bId);
	
	public int  replydelete(int brId);
}
