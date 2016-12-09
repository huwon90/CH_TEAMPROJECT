package com.ch.teampro1.service;

import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.ch.teampro1.model.Board;
import com.ch.teampro1.model.BoardRe;
import com.ch.teampro1.model.MemberTmConn;

public interface BoardService {
	public List<Board> listAll(int tId);
    public List<BoardRe> boardreList();
<<<<<<< HEAD
    
	public  List<Board> infiniteScroll(Board infi);
    
=======
>>>>>>> 80ef0023d75601ecb6fc6b46b58a9dd724663075
	public int insert_file(MultipartHttpServletRequest mRequest);
	public int reply_insert(BoardRe boardre);
	public int insert_schedule(Board board);
	public int delete(int bId);


	public List<MemberTmConn> phoneList(int tId);
	
	public int replydelete(int brId);
	


	public int update_file(MultipartHttpServletRequest mRequest);
	public Board detail(int bId);

}
