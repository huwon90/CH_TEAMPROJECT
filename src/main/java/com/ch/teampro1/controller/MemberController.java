package com.ch.teampro1.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ch.teampro1.model.Email;
import com.ch.teampro1.model.Member;
import com.ch.teampro1.service.EmailSender;
import com.ch.teampro1.service.IMemberService;

@Controller
public class MemberController {
	@Autowired
	private IMemberService memberService;
	@Autowired
	private EmailSender emailSender;
	@Autowired
	private Email email;
	
	@RequestMapping(value="main")
	public String main(){
		return "member/main";
	}
	
	@RequestMapping(value="joinMemberForm")
	public String joinMemberForm(){
		return "member/joinMemberForm";
	}
	@RequestMapping("idConfirm")
	public String idConfirm(String mId, Model model){
		Member member = memberService.detailMember(mId);
		if(member==null){
			model.addAttribute("chkMsg", "사용 가능한 아이디입니다");
		} else{
			model.addAttribute("chkMsg", "중복된 아이디입니다");
		}
		model.addAttribute("mId", mId);
		return "forward:joinMemberForm.do";
	}
	@RequestMapping(value="joinMember")
	public String joinMember(Member member, Model model, HttpSession session){
		int result = memberService.joinMember(member, session);
		if(result>0){
			return "redirect:joinOk.do";
		} else{
			model.addAttribute("msg", "가입 실패");
			return "forward:joinMemberForm.do";
		}
	}
	@RequestMapping("joinOk")
	public String joinOk(){
		return "member/joinOk";
	}
	@RequestMapping("login")
	public String login(Member member, Model model, HttpSession session){
		int result = memberService.loginMember(member.getmId(), member.getmPw(), session);
		if(result==1){
//			return "redirect:loginOk.do";
			return "redirect:listTeam.do?mId="+member.getmId();
		} else if(result==0){
			model.addAttribute("msg", "비밀번호가 일치하지 않습니다");
			return "forward:logout.do";
		} else {
			model.addAttribute("msg", "존재하지 않는 아이디입니다");
			return "forward:logout.do";
		}
	}	
	@RequestMapping("loginOk")
	public String loingOk(){
		return "member/loginOk";
	}
	@RequestMapping("logout")
	public String logout(HttpSession session){
		session.invalidate();
		return "member/logout";
	}
	@RequestMapping("detailMemberForm")
	public String detailMember(String mId, Model model){
		Member member = memberService.detailMember(mId);
		model.addAttribute("detailMember", member);
		return "member/detailMemberForm";
	}
	@RequestMapping("modifyMemberForm")
	public String modifyMemberForm(String mId, Model model){
		Member member = memberService.detailMember(mId);
		model.addAttribute("modifyMemberForm", member);
		return "member/modifyMemberForm";
	}
	@RequestMapping("modifyMember")
	public String modifyMember(Member member, Model model){
		int result = memberService.modifyMember(member);
		if(result>0){
			return "redirect:modifyOk.do";
		} else{
			model.addAttribute("msg", "수정 실패");
			return "forward:modifyMemberForm.do";
		}
	}
	@RequestMapping("modifyOk")
	public String modifyOk(){
		return "member/modifyOk";
	}
	@RequestMapping("deleteMember")
	public String deleteMember(String mId, Model model){
		int result = memberService.deleteMember(mId);
		if(result>0){
			return "redirect:deleteOk.do";
			
		} else{
			model.addAttribute("msg", "탈퇴 실패");
			return "forward:detailMemberForm.do";
		}
	}
	@RequestMapping("deleteOk")
	public String deleteOk(){
		return "member/deleteOk";
	}
	@RequestMapping("deleteForm")
	public String deleteForm(){
		return "member/deleteForm";
	}
	@RequestMapping("findIdForm")
	public String findIdForm(){
		return "member/findIdForm";
	}
	@RequestMapping("findId")
	public String findId(Member member, Model model){
		if(memberService.findId(member)!=null){
			model.addAttribute("msg", "아이디는 " +memberService.findId(member).getmId());
			return "forward:findIdForm.do";
		} else{
			model.addAttribute("msg", "이메일 주소 또는 연락처를 확인하시오");
			return "forward:findIdForm.do";
		}
	}
	@RequestMapping("findPwForm")
	public String findPwForm(){
		return "member/findPwForm";
	}
	@RequestMapping("findPw")
	public String findPw(Member member, Model model){
		if(memberService.findPw(member)!=null){
			String mId = memberService.findPw(member).getmId();
			String mEmail = memberService.findPw(member).getmEmail();
			String mPw = memberService.findPw(member).getmPw();
			email.setContent("비밀번호는 " +mPw +"입니다");
			email.setReceiver(mEmail);
			email.setSubjcect(mId +"님 비밀번호 찾기 메일입니다");
			emailSender.SendEmail(email);
			model.addAttribute("msg", "메일 발송");
			return "forward:findPwForm.do";
		} else{
			model.addAttribute("msg", "아이디 또는 이메일 주소를 확인하시오");
			return "forward:findPwForm.do";
		}
	}
}
