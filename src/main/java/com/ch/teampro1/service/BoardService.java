package com.ch.teampro1.service;

import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.ch.teampro1.model.Board;
import com.ch.teampro1.model.BoardRe;
import com.ch.teampro1.model.MemberTmConn;

public interface BoardService {
	public List<Board> listAll(int tId);
    public List<BoardRe> boardreList();
	public int insert_file(MultipartHttpServletRequest mRequest);
	public int reply_insert(BoardRe boardre);
	public int insert_schedule(Board board);
	public int delete(int bId);
<<<<<<< HEAD

	public List<MemberTmConn> phoneList(int tId);
	

=======
	public int update_file(MultipartHttpServletRequest mRequest);
	public Board detail(int bId);
>>>>>>> fcbe2c50120db79b829138ec9d44d4e5316b4f89
}
