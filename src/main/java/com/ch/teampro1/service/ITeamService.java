package com.ch.teampro1.service;

import java.util.List;

import com.ch.teampro1.model.Board;
import com.ch.teampro1.model.BoardRe;
import com.ch.teampro1.model.Member;
import com.ch.teampro1.model.MemberTmConn;
import com.ch.teampro1.model.Team;
import com.ch.teampro1.model.TeamTmConn;
import com.ch.teampro1.model.TmConn;

public interface ITeamService {
	public List<Team> teamListAll();
	public int requestTeam(TmConn tmConn);
	public int okTeam(TmConn tmConn);
	public int noTeam(TmConn tmConn);
	public int outTeam(TmConn tmConn);
	public List<TeamTmConn> jointTeamListAll(String mId);
//	public List<TeamTmConn> leaderTeamListAll(String mId);
	public List<MemberTmConn> requestListAll(String mId);
	public int chkTeam_ok0(TmConn tmConn);  //가입요청중복: 가입요청만 했을때
	public int chkTeam_ok1(TmConn tmConn);  //가입요청중복: 이미 가입되었을때

	
	public int insertTeam(Team team);
	public int insertTeamTmConn(TeamTmConn teamTmConn);
	public int removeTeam(Team team);
	public int removeTeamTmConn(TeamTmConn teamTmConn);
	
	
	public List<Team> searchTeam(String tName);
	public int requestCount(String mId);
	public List<TeamTmConn> memberInvitedList(String mId);
	public List<Member> memberList();
	public int chkTmConn(TmConn tmConn);
	public int removeBoardRe(BoardRe boardRe);
	public int removeBoard(Board board);
	public int inviteTeam(TmConn tmConn);
}
