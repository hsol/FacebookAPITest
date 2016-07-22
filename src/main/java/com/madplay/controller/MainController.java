package com.madplay.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home(Locale locale, Model model) {
		/* 
		 * 로그를 남긴다. log4j와 slf4j가 있으니 참고바람
		 */
		logger.info("Welcome home! The client locale is {}.", locale);
		
		ModelAndView mv = new ModelAndView();
		
		/* View(jsp)의 이름을 지정한다. */
		mv.setViewName("main");
		
		/* View에 전달할 Model */
		String nickName = "madplay";
		mv.addObject("name", nickName);
		
		return mv;
	}

}
