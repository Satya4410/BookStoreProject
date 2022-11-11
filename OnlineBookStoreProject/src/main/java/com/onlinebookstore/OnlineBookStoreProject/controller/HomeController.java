package com.onlinebookstore.OnlineBookStoreProject.controller;

import java.io.IOException;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.onlinebookstore.OnlineBookStoreProject.entity.UserInfo;

@Controller
@RequestMapping("/")
@ComponentScan("com.onlinebookstore.OnlineBookStoreProject")
public class HomeController {
	@GetMapping("home")
	public String getPage(Model m)
	{
		return "Home";
	}
		@GetMapping("homeuser")
		public String getPage1(Model m)
		{
			return "Homeuser";
		}
	
			@GetMapping("homestaff")
			public String getPage2(Model m)
			{
				return "Homestaff";
			}
			
				@GetMapping("aboutus")
				public String getPage3(Model m)
				{
					return "Aboutus";
				}
				@GetMapping("logout")
				public String getPage4(Model m)
				{
					return "index";
				}
}

