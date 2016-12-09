package com.ch.teampro1.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.teampro1.dao.ITeamDao;
import com.ch.teampro1.model.Member;
import com.ch.teampro1.model.MemberTmConn;
import com.ch.teampro1.model.Team;
import com.ch.teampro1.model.TeamTmConn;
import com.ch.teampro1.model.TmConn;
@Service
public class TeamServiceImpl implements ITeamService {
	@Autowired
	private ITeamDao teamDao;
	
	@Override
	public List<Team> teamListAll() {  //팀리스트 전체출력
		return teamDao.teamListAll();
	}
	
	@Override
	public int requestTeam(TmConn tmConn) {	//팀가입요청
		return teamDao.requestTeam(tmConn);
	}

	@Override
	public int okTeam(TmConn tmConn) {		//팀가입요청 승인
		return teamDao.okTeam(tmConn);
	}

	@Override
	public int noTeam(TmConn tmConn) {		//팀가입요청 거부
		return teamDao.noTeam(tmConn);
	}

	@Override
	public int outTeam(TmConn tmConn) {		//가입한 팀 탈퇴
		return teamDao.outTeam(tmConn);
	}
	
	@Override
	public List<TeamTmConn> jointTeamListAll(String mId) {		//mId가 가입한 팀 목록 출력
		return teamDao.jointTeamListAll(mId);
	}
	
	@Override
	public List<TeamTmConn> leaderTeamListAll(String mId) { //mId가 리더로 있는 팀 목록 출력
		return teamDao.leaderTeamListAll(mId);
	}
	
	@Override
	public List<MemberTmConn> requestListAll(int tId) {	//가입요청 list뿌리기
		return teamDao.requestListAll(tId);
	}

	@Override
	public int chkTeam_ok0(TmConn tmConn){
		//가입요청중복: 가입요청만 했을때
		return teamDao.chkTeam_ok0(tmConn);
	}
	
	@Override
	public int chkTeam_ok1(TmConn tmConn){
		//가입요청중복: 이미 가입되었을때
		return teamDao.chkTeam_ok1(tmConn);
	}
	
	
	

	@Override
	public int insertTeam(Team team) {
		return teamDao.insertTeam(team);
	}

	@Override
	public int insertTeamTmConn(TeamTmConn teamTmConn) {
		return teamDao.insertTeamTmConn(teamTmConn);
	}

	@Override
	public int removeTeam(Team team) {
		// TODO Auto-generated method stub
		return teamDao.removeTeam(team);
	}

	@Override
	public int removeTeamTmConn(TeamTmConn teamTmConn) {
		// TODO Auto-generated method stub
		return teamDao.removeTeamTmConn(teamTmConn);
	}

	@Override
	public List<Team> searchTeam(String tName) {
		return teamDao.searchTeam(tName);
	}
	
	@Override
	public int requestCount(String mId) {
		return teamDao.requestCount(mId);
	}

	@Override
	public List<TeamTmConn> memberInvitedList(String mId) {
		return teamDao.memberInvitedList(mId);
	}

	@Override
	public List<Member> memberList() {
		return teamDao.memberList();
	}

	@Override
	public int chkTmConn(TmConn tmConn) {
		return teamDao.chkTmConn(tmConn);
	}
}
