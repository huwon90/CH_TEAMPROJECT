package com.ch.teampro1.service;

import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.ch.teampro1.model.Board;
import com.ch.teampro1.model.BoardRe;
import com.ch.teampro1.model.MemberTmConn;

public interface BoardService {
	public List<Board> listAll(int tId);
	public List<Board> listAll2(Board board); //스크롤 다운
	public List<Board> listAll3(Board board); //스크롤 업
	public int insert_schedule(Board board);
	public int delete(int bId);
	public int insert_file(MultipartHttpServletRequest mRequest);
	public int update_file(MultipartHttpServletRequest mRequest);
	public Board detail(int bId);


	public List<MemberTmConn> phoneList(int tId);
	public int memberCount(int tId);

	public List<BoardRe> boardreList();
	public int reply_insert(BoardRe boardre);
	public int delete_reply(int brId);   // 댓글 삭제
	public int delete_boardreply(int bId); //게시글 삭제에 필요한 댓글 삭제
	
	public List<Board> imageList(int tId); //이미지모아보기
	public List<Board> fileList(int tId);    //파일 모아보기
	
}
