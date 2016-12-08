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
import com.ch.teampro1.service.BoardService;

@Controller
public class BoardController {
	@Autowired
	private BoardService service;

	@RequestMapping(value="boardlist", method=RequestMethod.GET)
	public ModelAndView boardlist(int tId) throws Exception{
		System.out.println(tId);
        ModelAndView modelandview = new ModelAndView();
        List<Board> list = service.listAll(tId);
        List<BoardRe> relist =service.boardreList();
        modelandview.addObject("list", list);
        modelandview.addObject("relist", relist);
        modelandview.setViewName("board/list"); 
		return modelandview;
	}
	@RequestMapping(value = "writeForm", method = RequestMethod.GET)
	public String writeForm(Board board, Model model) {
		List<Board> boardList = service.listAll(board.gettId());
		model.addAttribute("boardList", boardList);
		return "board/writeForm";
	}

	@RequestMapping(value = "replyinsert", method = RequestMethod.POST)
	public String replyinsert(BoardRe boardre, Model model) {
		int result = service.reply_insert(boardre);
		if (result > 0) {
			return "redirect:boardlist";
		} else {
			return "forward:writeForm.do";
		}
	}

	@RequestMapping(value = "write_file", method=RequestMethod.POST)
	public String write_file(MultipartHttpServletRequest mRequest) {
		int result = service.insert_file(mRequest);
		if (result > 0) {
			return "redirect:boardlist.do";
		}else{
			return "forward:writeForm.do";
		}
	}

	@RequestMapping(value = "write_schedule")
	public String write_schedule(Board board, Model model) {
		int result = service.insert_schedule(board);
		if (result > 0) {
			return "redirect:boardlist.do?tId="+board.gettId();
		}else{
			return "forward:writeForm.do";
		}
	}

	@RequestMapping(value = "delete")
	public String delete(int bId, Model model) {
		int result = service.delete(bId);
		if (result > 0) {
			return "redirect:list.do";
		} else {
			return "forward:writeForm.do";
		}
	}

}