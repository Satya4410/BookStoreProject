package com.onlinebookstore.OnlineBookStoreProject.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.onlinebookstore.OnlineBookStoreProject.entity.loginadmin;
import com.onlinebookstore.OnlineBookStoreProject.service.UserIface;




@Controller
public class AdminloginController {
	@Autowired
	UserIface ui;
	@GetMapping("login")
    public String getPage1(Model m)
		{
			m.addAttribute("alogin", new loginadmin());
			return "loginadminj";
		}
		@PostMapping("loginadminProcess")
		public String adminInformation(@ModelAttribute loginadmin alogin, Model m) throws IOException
		{
			
			String st = ui.checklogin(alogin);
			
			if(st.equals("Success"))
				
				return "Home";
			else
				m.addAttribute("msg", "login Failed!");
	            m.addAttribute("alogin", new loginadmin());
			
			return "loginadminj";
		
	}
}

