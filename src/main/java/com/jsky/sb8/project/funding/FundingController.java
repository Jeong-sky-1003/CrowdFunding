package com.jsky.sb8.project.funding;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping(value = "/funding/**")
public class FundingController {
	
	@Autowired
	private FundingService fundingService;
	
	@GetMapping("main")
	public ModelAndView getMainPage() {
		
		ModelAndView mv = new ModelAndView();

		mv.setViewName("reward/main");
		return mv;
		
	}
	
	@GetMapping("list")
	@ResponseBody
	public ModelAndView getList(@RequestParam int rewardPage, int categoryNum) throws Exception {
		
		ModelAndView mv = new ModelAndView();
		
		Page<FundingVO> fundingVOs = null; 
		System.out.println("categoryNum: " + categoryNum);
		
		if(categoryNum <= 1) {
			System.out.println("total page import ------------------");
			fundingVOs = fundingService.findAllCategory(rewardPage);
		} else {
			fundingVOs = fundingService.findCategory(categoryNum, rewardPage);
		}
		
		mv.addObject("funding", fundingVOs);
		mv.setViewName("reward/ajaxResult/list");
		return mv;
		
	}
	
}
