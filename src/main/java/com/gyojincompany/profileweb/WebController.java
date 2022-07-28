package com.gyojincompany.profileweb;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gyojincompany.profileweb.dao.IDao;
import com.gyojincompany.profileweb.dto.MemberDto;

@Controller
public class WebController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "/")
	public String home() {
		return "index";
	}
	
	@RequestMapping(value = "/index")
	public String index() {
		return "index";
	}
	
	@RequestMapping(value = "/profile")
	public String profile() {
		return "profile";
	}
	
	@RequestMapping(value = "/contact")
	public String contact() {
		return "contact";
	}
	
	@RequestMapping(value = "/login")
	public String login() {
		return "login";
	}
	
	@RequestMapping(value = "/join")
	public String join() {
		return "join";
	}
	
	@RequestMapping(value = "/question")
	public String question() {
		return "question";
	}
	
	@RequestMapping(value = "/list")
	public String list() {
		return "list";
	}
	
	@RequestMapping(value = "/joinOk", method=RequestMethod.POST)
	public String joinOk(HttpServletRequest request, Model model) {
		
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		String mname = request.getParameter("mname");
		String memail = request.getParameter("memail");	
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		int checkId = dao.checkIdDao(mid);//아이디 존재 여부체크(1이면 이미 존재, 0이면 존재 안함)
		
		if(checkId == 0) {
		
			dao.joinDao(mid, mpw, mname, memail);
			
			model.addAttribute("mname", mname);
			model.addAttribute("mid", mid);
			
		}
		
		model.addAttribute("checkId", checkId);//checkId값이 1(아이디존재함) 또는 0(존재안함)이 전송
		
		
		return "joinOk";
	}
	
	@RequestMapping(value = "/loginOk", method=RequestMethod.POST)
	public String loginOk(HttpServletRequest request, Model model) {
		
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		int checkId = dao.checkIdDao(mid);//1이 반환되면 아이디가 존재		
		
		int checkIdPw = dao.checkIdPwDao(mid, mpw);//아이디와 비밀번호가 모두 일치하면 1이 반환
		
		model.addAttribute("checkId", checkId);
		model.addAttribute("checkIdPw", checkIdPw);
		
		if (checkIdPw == 1) {
			
			MemberDto memberDto = dao.memberInfoDao(mid);//로그인한 아이디의 모든 정보를 dto로 반환
			
			//비밀번호체크
			HttpSession session = request.getSession();
			
			session.setAttribute("sid", memberDto.getMid());
			session.setAttribute("sname", memberDto.getMname());
			
			model.addAttribute("mid", memberDto.getMid());
			model.addAttribute("mname", memberDto.getMname());
		}
		
		return "loginOk";
	}
	
	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) {
		
		session.invalidate();//세션 삭제->로그아웃
		
		return "login";
	}
	
	
}
