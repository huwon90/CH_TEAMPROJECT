package com.ch.teampro1.dao;

import java.util.List;

import com.ch.teampro1.model.Board;
import com.ch.teampro1.model.BoardRe;
import com.ch.teampro1.model.Boardfile;
import com.ch.teampro1.model.MemberTmConn;

public interface BoardDao {
	public List<Board> listAll(int tId);	//게시글 목록
	public List<Board> listAll2(Board board);	//스크롤 업
	public List<Board> listAll3(Board board);	//게시글 다운
	public List<BoardRe> boardreList() ;	//댓글 목록
	public int insert_file(Board board);
	public int insert_schedule(Board board);
	public int reply_insert(BoardRe boardre);
	public int delete(int bId);
	public List<MemberTmConn> phoneList(int tId);
	public int update_file(Board board);
	public Board detail(int bId);
	public int delete_boardreply(int bId);  //게시글 삭제에 필요한 댓글삭제
	public int delete_reply(int brId);   // 댓글 삭제
	public int memberCount(int tId);
	public List<Board> imageList(int tId); //이미지 모아보기
	public List<Board> fileList(int tId);    //파일 모아보기
	
	public void createfile(Board board); //허원 파일 인서트
	public void addAttach(Board board)throws Exception; //파일첨부  
	
	public List<String> getAttach(Integer bId)throws Exception; 
	
	public List<Boardfile> getAttach2()throws Exception;   

}
