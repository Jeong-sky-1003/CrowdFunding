package com.jsky.sb8.member;

import java.io.UnsupportedEncodingException;
import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jsky.sb8.email.EmailChkService;
import com.jsky.sb8.email.EmailChkVO;

@Controller
@RequestMapping(value = "/member/**")
public class MemberController {
	
	private String referUrl;
	
	@Autowired
	private MemberService memberService;
	
	/**
	 * 로그인 페이지 이동
	 */
	@GetMapping("login")
	public ModelAndView getLoginPage(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		
		String tmp = request.getHeader("Referer");
		this.referUrl = tmp.substring(17);
		
		System.out.println(this.referUrl);
		mv.setViewName("member/login");
		return mv;
	}
	
	/**
	 * 회원 로그인
	 */
	@PostMapping("login")
	public ModelAndView memberLogin(MemberVO memberVO, HttpSession session) throws Exception {
		
		System.out.println("로그인 처리");
		
		ModelAndView mv = new ModelAndView();
		memberVO = memberService.memberLogin(memberVO);
		
		String path = "member/login";
		String result = "아이디 혹은 비밀번호를 확인해주세요.";
		System.out.println(this.referUrl);
		
		if(memberVO != null) {
			System.out.println("로그인 성공");
			session.setAttribute("login", memberVO);
			result = memberVO.getMemberName() + "님 환영합니다.";
			path = "../" + this.referUrl;
			System.out.println("referUrl: " + path);
		} 
		
		mv.addObject("path", path);
		mv.addObject("result", result);
		mv.setViewName("common/signResult");
		return mv;
		
	}
	
	/**
	 * 회원 로그아웃
	 */
	@GetMapping("logout")
	public ModelAndView memberLogout(HttpSession session, HttpServletRequest request) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		String refer = request.getHeader("Referer");
		refer = "../" + refer.substring(17);
		
		session.invalidate();
		System.out.println("refer result : " + refer);
		
		mv.setViewName("redirect:" + refer);
		return mv;
	}

	/**
	 * 회원가입 페이지 이동
	 */
	@GetMapping("sign")
	public ModelAndView getSignPage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/signInfo");
		return mv;
	}
	
	/**
	 * 회원가입 등록 페이지로 이동
	 */
	@GetMapping("signRegist")
	public ModelAndView getSignUpPage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("member/signRegist");
		return mv;
	}
	
	/**
	 * 회원가입 등록
	 */
	@PostMapping("signRegist")
	public ModelAndView setSignUpPage(MemberVO memberVO) throws Exception {
		
		ModelAndView mv = new ModelAndView();
		System.out.println(memberVO.getMemberNum());
		
		if(memberVO.getStatus() == null) {
			memberVO.setStatus("개인");
		}
	
		memberVO = memberService.saveMember(memberVO);
		
		String result = "회원가입에 실패하였습니다.";
		if(memberVO != null) {
			result = "회원가입을 완료하였습니다.";
		}
				
		mv.addObject("result", result);
		mv.addObject("path", "../");
		mv.setViewName("common/signResult");
		return mv;
		
	}
	
	/**
	 * 중복 이메일 확인
	 */
	@PostMapping("memberChk")
	@ResponseBody
	public ModelAndView getMemberEmailChk(MemberVO memberVO) throws Exception {
		
		ModelAndView mv = new ModelAndView();
		memberVO = memberService.findByEmail(memberVO.getEmail());
		
		String result = "success";
		if(memberVO != null) {
			result = "fail";
		}
		
		mv.addObject("result", result);
		mv.setViewName("common/result");
		return mv;
		
	}
	
}
