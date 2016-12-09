package com.ch.teampro1.service;

import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.ch.teampro1.model.Board;
import com.ch.teampro1.model.BoardRe;

public interface BoardService {
	
	public List<Board> listAll(int tId);
	
    public List<BoardRe> boardreList();
    
	public  List<Board> infiniteScroll(Board infi);
    
	public int insert_file(MultipartHttpServletRequest mRequest);
	
	public int reply_insert(BoardRe boardre);
	
	public int insert_schedule(Board board);
	
	public int delete(int bId);
	
	public int replydelete(int brId);
	

}
