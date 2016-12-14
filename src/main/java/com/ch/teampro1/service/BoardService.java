package com.ch.teampro1.service;

import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.ch.teampro1.model.Board;
import com.ch.teampro1.model.BoardRe;
import com.ch.teampro1.model.MemberTmConn;
import com.ch.teampro1.model.Boardfile;

public interface BoardService {
	public List<Board> listAll(int tId);
	public int insert_schedule(Board board);
	public int delete(int bId);
	public int insert_file(MultipartHttpServletRequest mRequest);
	public int update_file(MultipartHttpServletRequest mRequest);
	public Board detail(int bId);


	public List<MemberTmConn> phoneList(int tId);
	public int memberCount(int tId);

	public List<BoardRe> boardreList();
	public int reply_insert(BoardRe boardre);
	
	public List<Board> viewfile(int tId);
	public List<Board> viewimage(int tId);
	public  List<Board> infiniteScroll(Board infi);
	public void createfile(Board board) throws Exception; //허원 파일 인서트
	public List<Boardfile> getAttach2()throws Exception;
	public List<String> getAttach(Integer bId)throws Exception;  
	public void deleteAttach(int bId)throws Exception;
	public void replaceAttach(String fullName, int bId)throws Exception;
	public int delete_reply(int brId);   // 댓글 삭제
	public int delete_boardreply(int bId); //게시글 삭제에 필요한 댓글 삭제
	
}
