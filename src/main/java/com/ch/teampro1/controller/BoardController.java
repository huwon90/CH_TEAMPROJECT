package com.ch.teampro1.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.ch.teampro1.model.Board;
import com.ch.teampro1.model.BoardRe;
import com.ch.teampro1.model.MemberTmConn;
import com.ch.teampro1.model.TmConn;
import com.ch.teampro1.service.BoardService;
import com.ch.teampro1.service.ITeamService;

@Controller
public class BoardController {
	@Autowired
	private BoardService bService;
	@Autowired
	private ITeamService tService;

	@RequestMapping(value="boardlist", method=RequestMethod.GET)
	public ModelAndView boardlist(String mId, TmConn tmConn, MemberTmConn memberTmConn, int tId, Model model) throws Exception{
        ModelAndView modelandview = new ModelAndView();
        int chkEnter = tService.chkTeam_ok1(tmConn);
        if(chkEnter==1) {
	        List<Board> list = bService.listAll(tId);
	        List<BoardRe> relist =bService.boardreList();
	        List<MemberTmConn> phoneList = bService.phoneList(tId);
			modelandview.addObject("phoneList",phoneList);
			int memberCount = bService.memberCount(tId);
			modelandview.addObject("memberCount", memberCount);
	        modelandview.addObject("list", list);
	        modelandview.addObject("relist", relist);
	        int requestCount = tService.requestCount(mId);
			modelandview.addObject("requestCount", requestCount);
	        modelandview.setViewName("board/list"); 
        } else {
        	modelandview.addObject("msg", "참여팀아님");
        	modelandview.setViewName("redirect:listTeam.do?mId="+mId);
        }
		return modelandview;
	}
	@RequestMapping(value = "writeForm", method = RequestMethod.GET)
	public String writeForm(Board board, Model model) {
		List<Board> boardList = bService.listAll(board.gettId());
		model.addAttribute("boardList", boardList);
		return "board/writeForm";
	}

	@RequestMapping(value = "replyinsert", method = RequestMethod.POST)
	public String replyinsert(BoardRe boardre, Model model) {
		int result = bService.reply_insert(boardre);
		if (result > 0) {
			return "redirect:boardlist.do?tId="+boardre.gettId()+"&mId="+boardre.getmId();
		} else {
			return "forward:writeForm.do";
		}
	}

	@RequestMapping(value = "write_file", method=RequestMethod.POST)
	public String write_file(String mId, int tId, MultipartHttpServletRequest mRequest) {
		int result = bService.insert_file(mRequest);
		if (result > 0) {
			return "redirect:boardlist.do?tId="+tId+"&mId="+mId;
		}else{
			return "forward:writeForm.do";
		}
	}

	@RequestMapping(value = "write_schedule")
	public String write_schedule(String mId, Board board, Model model) {
		int result = bService.insert_schedule(board);
		if (result > 0) {
			return "redirect:boardlist.do?tId="+board.gettId()+"&mId="+mId;
		}else{
			return "forward:writeForm.do";
		}
	}

	@RequestMapping(value = "delete")  
	public String delete(String mId, int tId, int bId, Model model) {
		int result = bService.delete_boardreply(bId);
		if(result > 0) { 
			result = bService.delete(bId);
			if(result > 0) {
				//최종 성공시
				return "redirect:boardlist.do?tId="+tId+"&mId="+mId;
			} else {
				return "forward:writeForm.do";
			}
		} else {
			return "forward:writeForm.do";
		}
	}

	@RequestMapping(value = "updateForm")
	public String updateForm(int bId, Model model){
		Board board = bService.detail(bId);
		model.addAttribute("updateForm", board);
		return "board/updateForm";
	}
	@RequestMapping(value = "updateFile")
	public String updateFile(String mId, int tId, MultipartHttpServletRequest mRequest){
		int result = bService.update_file(mRequest);
		if (result > 0) {
			return "redirect:boardlist.do?tId="+tId+"&mId="+mId;
		}else{
			return "forward:writeForm.do";
		}
	}
	
	@RequestMapping(value = "replydelete")  
	public String replyDelete(int brId, String mId, int tId, Model model) {
		int result = bService.delete_reply(brId);
		if(result > 0) {
			model.addAttribute("msg", "댓글삭제성공");
			return "redirect:boardlist.do?tId="+tId+"&mId="+mId;
		} else {
			model.addAttribute("msg", "댓글삭제실패");
			return "redirect:boardlist.do?tId="+tId+"&mId="+mId;
		}
	}
}
