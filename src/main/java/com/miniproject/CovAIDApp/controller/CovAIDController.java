package com.miniproject.CovAIDApp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.*;

import com.miniproject.CovAIDApp.model.Request;
import com.miniproject.CovAIDApp.model.User;
import com.miniproject.CovAIDApp.service.CovAIDAppService;
import org.springframework.ui.Model;

@Controller
public class CovAIDController {
	
	@Autowired
	CovAIDAppService covAIDAppService;
	
	@RequestMapping(value = {"/", "/home", "/index"})
	public String getWelcomePage() {
		
		return "welcome";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String submit(Model model,
	        @ModelAttribute("user") User user) {
		User newUser = null;
    if (user != null && user.getName() != null
            & user.getPassword() != null) {
        String uname=user.getName();          
       newUser =  covAIDAppService.getUser(uname);
        if(user.getName().equalsIgnoreCase(newUser.getName()) && user.getPassword().equalsIgnoreCase(newUser.getPassword())) {
       if(newUser.getRoles().equalsIgnoreCase("user")) {
	        return "request";
	}
		else if(newUser.getRoles().equalsIgnoreCase("volunteer")) {
		return "volunteer";
	}
    }
    }
		return "request";
		
		}
	
	 @RequestMapping(value = "/login", method = RequestMethod.GET)
	 public String init(Model model) {
		 model.addAttribute("msg", "Please Enter Your Login Details");
	        return "login";
	    }
	 
	@GetMapping("/register")
    public String registration(Model model) {
        model.addAttribute("user", new User());
        return "register";
    }
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String login(@ModelAttribute("user") User userObj) {
		covAIDAppService.save(userObj);
		return "welcome";
	}
	
	@GetMapping("/requestSubmit")
    public String request(Model model) {
        model.addAttribute("request", new Request());
        return "request"	;
    }
	
	@RequestMapping(value = "/requestSubmit", method = RequestMethod.POST)
	public String requestSubmit(@ModelAttribute("request") User requestOGJ) {
		covAIDAppService.save(requestOGJ);
		return "sucessrequest";
	}
	
	@RequestMapping(value = "/volunteer")
	public ModelAndView get() {
		ModelAndView mav = new ModelAndView("employeesList");
		List<Request> list = covAIDAppService.get();
		mav.addObject("list", list);
		return mav;
	}
	
	@RequestMapping("/delete/{reqid}")
	public ModelAndView delete(@PathVariable("reqid") int reqid) {
		ModelAndView mav = new ModelAndView("volunteer");
		covAIDAppService.delete(reqid);
		List<Request> list = covAIDAppService.get();
		mav.addObject("list", list);
		return mav;
	}
}
