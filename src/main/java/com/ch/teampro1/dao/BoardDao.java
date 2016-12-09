package com.ch.teampro1.dao;

import java.util.List;

import com.ch.teampro1.model.Board;
import com.ch.teampro1.model.BoardRe;
import com.ch.teampro1.model.MemberTmConn;

public interface BoardDao {
<<<<<<< HEAD
	//게시글 목록
	public List<Board> listAll(int tId);
		//댓글 목록
	public List<BoardRe> boardreList() ;
		//무한 스크롤 게시글 
	public List<Board> infiniteScroll(Board infi);
	
=======
	public List<Board> listAll(int tId);	//게시글 목록
	public List<BoardRe> boardreList() ;	//댓글 목록
>>>>>>> 80ef0023d75601ecb6fc6b46b58a9dd724663075
	public int insert_file(Board board);
	
	public int insert_schedule(Board board);
	
	public int reply_insert(BoardRe boardre);
	
	public int delete(int bId);
<<<<<<< HEAD
	
	public int  replydelete(int brId);
=======
	public List<MemberTmConn> phoneList(int tId);
	public int update_file(Board board);
	public Board detail(int bId);

>>>>>>> 80ef0023d75601ecb6fc6b46b58a9dd724663075
}
