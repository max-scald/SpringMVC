package ru.mysite.spring;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ru.mysite.spring.objects.User;


@Controller
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView main() {
		return new ModelAndView("login", "user", new User());
	}
	
	@RequestMapping(value = "/check-user", method = RequestMethod.POST)
	public ModelAndView checkUser(@ModelAttribute User user){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("main");
		
		modelAndView.addObject("user", user);
		
		return modelAndView;
	}
	
	

}
