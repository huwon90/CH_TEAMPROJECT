package com.ch.teampro1.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ch.teampro1.model.MemberTmConn;
import com.ch.teampro1.model.Team;
import com.ch.teampro1.model.TeamTmConn;
import com.ch.teampro1.model.TmConn;
@Repository
public class TeamDaoImpl implements ITeamDao {
	@Autowired
	private SqlSession session;
	
	@Override
	public List<Team> teamListAll() {	//팀리스트 전체출력
		return session.selectList("teamListAll");
	}
	
	@Override
	public int requestTeam(TmConn tmConn) { //팀 가입을 요청
		return session.insert("requestTeam", tmConn);
	}

	@Override
	public int okTeam(TmConn tmConn) {  //팀 가입요청 승인
		return session.update("okTeam", tmConn);
	}

	@Override
	public int noTeam(TmConn tmConn) {  //팀 가입요청 거절
		return session.delete("noTeam", tmConn);
	}
	
	@Override
	public int outTeam(TmConn tmConn) { //가입한 팀 탈퇴
		return session.delete("outTeam", tmConn);
	}
	
	@Override
	public List<TeamTmConn> leaderTeamListAll(String mId) {  //mId가 리더로 있는 팀 목록 출력
		return session.selectList("leaderTeamListAll", mId);
	}
	
	@Override
	public List<MemberTmConn> requestListAll(int tId) {		//팀가입요청리스트 뿌리기 listAll
		return session.selectList("requestListAll", tId);
	}
	
	@Override
	public List<TeamTmConn> jointTeamListAll(String mId) {  //mId가 가입한 팀 목록 출력
		return session.selectList("joinTeamListAll", mId);
	}
	

	@Override
	public int chkTeam_ok0(TmConn tmConn){
		//가입요청중복: 가입요청만 했을때
		return session.selectOne("chkTeam_ok0", tmConn);
	}
	
	@Override
	public int chkTeam_ok1(TmConn tmConn){
		//가입요청중복: 이미 가입되었을때
		return session.selectOne("chkTeam_ok1", tmConn);
	}
	
	@Override
	public int insertTeam(Team team) {
		// TODO Auto-generated method stub
		return session.insert("insertTeam", team);
	}

	@Override
	public int insertTeamTmConn(TeamTmConn teamTmConn) {
		// TODO Auto-generated method stub
		
		return session.insert("insertTmConn", teamTmConn);
	}

	@Override
	public int removeTeam(Team team) {
		// TODO Auto-generated method stub
		return session.delete("removeTeam",team);
	}

	@Override
	public int removeTeamTmConn(TeamTmConn teamTmConn) {
		// TODO Auto-generated method stub
		return session.delete("removeTeamTmConn", teamTmConn);
	}

	@Override
	public List<MemberTmConn> phoneList(String tId) {
		// TODO Auto-generated method stub
		return session.selectList("phoneList", tId);
	}
	
	@Override
	public List<Team> searchTeam(String tName) {
		return session.selectList("searchTeam", tName);
	}
	
	@Override
	public int requestCount(String mId) {
		return session.selectOne("requestCount", mId);
	}
}
