package com.onlinebookstore.OnlineBookStoreProject.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import com.onlinebookstore.OnlineBookStoreProject.entity.Review;
import com.onlinebookstore.OnlineBookStoreProject.service.UserIface;

@Controller
public class ReviewController {
	@Autowired
	UserIface ui;
	//Today-------
	//Admin- all bookreview
	@GetMapping("adminviewing")
	public String adminrev(Model m)
	{

		List<Review> revi = ui.viewallrevbyadmin();
		if(revi.isEmpty()) {
			m.addAttribute("msg","No records found");
		}else
		{
		m.addAttribute("revi", revi);
		}
		return "viewadreviewpage";
	}
	//delete Review
	@GetMapping("delete/{ReviewId}")
		public String testdelete(@PathVariable("ReviewId")int ReviewId,Model m,HttpServletRequest request,@ModelAttribute("rev") Review rev){
			String st =ui.delreview(ReviewId);
			if(st.equals("Success")) {
				List<Review> revi = ui.viewallrevbyadmin();
				m.addAttribute("revi", revi);
				return "viewadreviewpage1";
			}
			else {
				return "viewadreviewpage";
			}
	}}