package com.ch.teampro1.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ch.teampro1.model.Board;
import com.ch.teampro1.model.BoardRe;
import com.ch.teampro1.model.MemberTmConn;

@Repository
public class BoardDaoImpl implements BoardDao{

	@Autowired
	private SqlSession session;
	
	@Override
	public List<Board> listAll(int tId) {
		// TODO Auto-generated method stub
		return session.selectList("listAll",tId);
	}
	
	@Override
	public List<BoardRe> boardreList()  {
		return session.selectList("boardreList");
	}
	@Override
	public int insert_file(Board board) {
		// TODO Auto-generated method stub
		return session.insert("insert_file", board);
	}

	@Override
	public int insert_schedule(Board board) {
		return session.insert("insert_schedule", board);
	}

	@Override
	public int delete(int bId) {
		return session.update("delete", bId);
	}

	@Override
	public int reply_insert(BoardRe boardre) {
		return session.insert("insert_reply", boardre);
	}
	
	@Override
	public int delete_reply(int brId) {
		return session.delete("delete_reply", brId);
	}
	
	@Override
	public int update_file(Board board) {
		return session.update("update_file", board);
	}

	@Override
	public Board detail(int bId) {
		return session.selectOne("detail", bId);
	}

	@Override
	public List<MemberTmConn> phoneList(int tId) {
		// TODO Auto-generated method stub
		return session.selectList("phoneList", tId);
	}

	@Override
	public int delete_boardreply(int bId) {
		return session.delete("delete_boardreply", bId);
	}

	@Override
	public int memberCount(int tId) {
		return session.selectOne("memberCount", tId);
	}
}
