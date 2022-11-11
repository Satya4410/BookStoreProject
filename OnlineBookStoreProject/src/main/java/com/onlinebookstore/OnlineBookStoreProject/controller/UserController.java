package com.onlinebookstore.OnlineBookStoreProject.controller;
import java.awt.List;
import java.io.*;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.onlinebookstore.OnlineBookStoreProject.entity.UserInfo;
import com.onlinebookstore.OnlineBookStoreProject.service.UserIface;

@Controller
@RequestMapping("/")
@ComponentScan("com.onlinebookstore.OnlineBookStoreProject")
public class UserController {
	@Autowired
	UserIface ui;
	
	@GetMapping("loginuser")
	public String getlogin(Model m)
	{
		m.addAttribute("user", new UserInfo());
		return "Loginuser";
	}
	@PostMapping("loginProcess")
	public String adminInforma(@ModelAttribute("user") UserInfo user,Model m) throws IOException, SQLException
	{
	
	     UserInfo st = ui.checkuserlogin(user);
	     if(st != null)
         {
			m.addAttribute("msg", "login Success!");
			return "Homeuser";
		}
		else
		{
			m.addAttribute("msg", "login Failed!");
            m.addAttribute("user", new UserInfo());
		}
	    return "Loginuser";
		}
	@GetMapping("getuser")
	public String getPage(Model m)
	{
		m.addAttribute("user", new UserInfo());
		return "RegisterUser";
	}
	@PostMapping("userProcess")
	public String UserInformation(@ModelAttribute UserInfo user, Model m) throws IOException
	{
		
		String st = ui.AddUser(user);
		
		if(st.equals("Success"))
			
			m.addAttribute("msg", "Registered Successfully!");
		else
			m.addAttribute("msg", "Register Failed!");
		
		m.addAttribute("user", new UserInfo());
		
		return "RegisterUser";
	}
	@GetMapping("viewuserinfo")
	public String viewallus(Model m)
	{
		java.util.List<UserInfo> user = ui.viewallusers();
		if(user.isEmpty()) {
			m.addAttribute("msg","No records Found");
		}
		else
		{
		m.addAttribute("user",user);
		}
		return "viewuserpage";
	}
}
