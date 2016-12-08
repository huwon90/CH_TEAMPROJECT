package com.ch.teampro1.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ch.teampro1.model.MemberTmConn;
import com.ch.teampro1.model.Team;
import com.ch.teampro1.model.TeamTmConn;
import com.ch.teampro1.model.TmConn;
import com.ch.teampro1.service.ITeamService;

@Controller
public class TeamController {
	@Autowired
	private ITeamService tService;
	
	@RequestMapping(value="listTeam", method=RequestMethod.GET)
	public String listTeam(Model model, String mId) {
		List<Team> list = tService.teamListAll();
		model.addAttribute("listTeam", list);
		List<TeamTmConn> joinlist = tService.jointTeamListAll(mId);
		model.addAttribute("listjoinTeam", joinlist);
		int requestCount = tService.requestCount(mId);
		model.addAttribute("requestCount", requestCount);
		return "team/listTeam";
	}
	
	@RequestMapping(value="requestTeam", method=RequestMethod.GET)
	public String requestTeam(TmConn tmConn, Model model) {
		if(tService.chkTeam_ok0(tmConn)==0 && tService.chkTeam_ok1(tmConn)==0){
			//가입요청테이블(tmok=0또는1)에 검색되지 않을때만 가입요청 수행
			int result = tService.requestTeam(tmConn);
			if(result>0) {
				model.addAttribute("msg", "가입승인대기중");
			} else {
				model.addAttribute("msg", "가입요청실패");
			}
		} else if (tService.chkTeam_ok0(tmConn)==1) {
			//가입요청테이블에서 해당 팀 tmok=0이 있을때
			model.addAttribute("msg", "이미가입요청");
		} else if (tService.chkTeam_ok1(tmConn)==1) {
			//가입요청테이블에서 해당 팀 tmok=1이 있을때
			model.addAttribute("msg", "이미가입");			
		}
		return "redirect:listTeam.do?mId="+tmConn.getmId();
	}
	
	@RequestMapping(value="leaderTeamList", method=RequestMethod.GET)
	public String leaderTeamList(String mId, Model model) {
		List<TeamTmConn> list = tService.leaderTeamListAll(mId);
		model.addAttribute("leaderTeamList", list);
		int requestCount = tService.requestCount(mId);
		model.addAttribute("requestCount", requestCount);
		return "team/leaderTeamList";
	}
	
	@RequestMapping(value="listRequest", method=RequestMethod.GET)
	public String listRequest(int tId, Model model) {
		List<MemberTmConn> list = tService.requestListAll(tId);
		model.addAttribute("tId", tId);
		model.addAttribute("listRequest", list);
		return "team/listRequest";
	}
	
	@RequestMapping(value="okTeam", method=RequestMethod.GET)
	public String okTeam(int tId, TmConn tmConn, Model model) {
		int result = tService.okTeam(tmConn);
		if(result>0) {
			model.addAttribute("msg", "가입승인성공");
		} else {
			model.addAttribute("msg", "가입승인실패");
		}
		return "redirect:listRequest.do?tId="+tId;
	}
	
	@RequestMapping(value="noTeam", method=RequestMethod.GET)
	public String noTeam(String leaderId, int tId, TmConn tmConn, Model model) {
		int result = tService.noTeam(tmConn);
		if(result>0) {
			model.addAttribute("msg", "승인거부성공");
		} else {
			model.addAttribute("msg", "승인거부실패");
		}
		return "redirect:listRequest.do?tId="+tId+"&leaderId="+leaderId;
	}
	
	@RequestMapping(value="outTeam", method=RequestMethod.GET)
	public String outTeam(TmConn tmConn, Model model) {
		int result = tService.outTeam(tmConn);
		if(result>0) {
			model.addAttribute("msg", "팀 탈퇴 성공");
		} else {
			model.addAttribute("msg", "팀 탈퇴 실패");
		}
		return "redirect:listTeam.do?mId="+tmConn.getmId();
	}
	
	@RequestMapping(value="insertTeam.do", method=RequestMethod.GET)
	public String insertTeam(Team team, TeamTmConn teamTmConn,Model model, HttpServletRequest request){
		
		int result = tService.insertTeam(team);
		String mId= request.getParameter("mId");
		if(result > 0){
			System.out.println("팀생성성공");
			model.addAttribute("Team", team);
			teamTmConn.setmId(mId);
			teamTmConn.settId(team.gettId());
			
			System.out.println("실행되니");
			int result3 = tService.insertTeamTmConn(teamTmConn);
			System.out.println(teamTmConn.gettId());
			if( result3 > 0){
				System.out.println("팀Conn생성");
				model.addAttribute("teamTmConn", teamTmConn);
			}
		}
		else{
			System.out.println("팀생성실패");
		}
		return "redirect:listTeam.do?mId="+teamTmConn.getmId();
	}
	
	@RequestMapping(value="removeTeam", method=RequestMethod.GET)
	public String removeTeam(Team team, TeamTmConn teamTmConn, Model model){
		int result1 = tService.removeTeamTmConn(teamTmConn);
		if(result1 > 0){
			System.out.println("팀Conn삭제성공");
			int result2 = tService.removeTeam(team);
			if(result2 > 0 ){
				System.out.println("팀삭제성공");
				model.addAttribute("msg", "팀해체성공");
			}else{
				System.out.println("팀삭제실패");
			}
				
		}else{
			System.out.println("팀Conn삭제실패");
		}
		return "redirect:listTeam.do?mId="+teamTmConn.getmId();
	}
	
	@RequestMapping(value="mainpage", method=RequestMethod.GET)
	public String mainpage(MemberTmConn memberTmConn, String tId, Model model){
		System.out.println(tId);
		List<MemberTmConn> phoneList = tService.phoneList(tId);
		System.out.println(memberTmConn.gettId());
		model.addAttribute("phoneList", phoneList);
		return "team/mainpage";
	}
	
	
	@RequestMapping(value="search", method=RequestMethod.GET)
	public String search(String mId, String tName, Model model){
		List<Team> searchList = tService.searchTeam("%"+tName+"%");
		model.addAttribute("searchlist", searchList);
		int requestCount = tService.requestCount(mId);
		model.addAttribute("requestCount", requestCount);
		return "team/searchResult";
	}

}
