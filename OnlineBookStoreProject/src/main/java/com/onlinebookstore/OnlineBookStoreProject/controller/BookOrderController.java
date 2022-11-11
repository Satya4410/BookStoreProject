package com.onlinebookstore.OnlineBookStoreProject.controller;

import java.awt.List;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.onlinebookstore.OnlineBookStoreProject.entity.BookOrder;
import com.onlinebookstore.OnlineBookStoreProject.entity.Review;
import com.onlinebookstore.OnlineBookStoreProject.service.UserIface;

@Controller
@RequestMapping(method= {RequestMethod.POST,RequestMethod.GET})
public class BookOrderController {
	@Autowired
	UserIface ui;
	//add bookorder
	@GetMapping("addbookorder")
    public String getPagebk(Model m)
		{
			m.addAttribute("order1", new BookOrder());
			return "BookOrderpage";
		}
	
		@PostMapping("bookorderProcess")
		public String orderpro(@ModelAttribute BookOrder bookorder,HttpServletRequest request,Model m)
		{
			System.out.println("hello");
			HttpSession session1=request.getSession();
		   // Integer bid=(Integer) session1.getAttribute("Bid");
		    int bid= Integer.parseInt(session1.getAttribute("Bid").toString());
		    System.out.println(bid);
			bookorder.setBookId(bid);
			String st = ui.insertbookorder(bookorder);
			
			if(st.equals("Success"))
				
				m.addAttribute("msg", "Ordered successfully!You will receive your order within 3-4 days");
			else
			{
				m.addAttribute("msg", "Order failed");
	            
			}
			m.addAttribute("bookorder", new BookOrder());
			return "BookOrderpage1";
		
	}
		//for book id
		@GetMapping("page/{BookId}")
		public String test(@PathVariable("BookId")int BookId,HttpServletRequest request,@ModelAttribute("bookorder") BookOrder bookorder){
			HttpSession session1=request.getSession();
			session1.setAttribute("Bid",BookId);
			System.out.println(BookId);
			return "BookOrderpage";
			
		}

		
		//for book id review
				@GetMapping("page1/{BookId}")
				public String test1(@PathVariable("BookId")int BookId,Model m,HttpServletRequest request,@ModelAttribute("rev") Review rev){
					//HttpSession session2=request.getSession();
					//session2.setAttribute("Bid",BookId);
				//	System.out.println(BookId);
					//return "addReview";
				java.util.List<Review> rv=ui.viewallreview(BookId);
				if(rv.isEmpty())
				{
					m.addAttribute("msg","No reviews yet");
				}
				else{
					
					m.addAttribute("rv",rv);
				}
					return "viewreviewpage";
					
		}
				//review id
				@PostMapping("reviewProcess")
				public String reviewpro(@ModelAttribute Review rev,HttpServletRequest request,Model m)
				{
					System.out.println("hello");
					HttpSession session4=request.getSession();
				   // Integer bid=(Integer) session4.getAttribute("Bid");
				    int bid= Integer.parseInt(session4.getAttribute("Bid").toString());
				   // System.out.println(bid);
					rev.setBookId(bid);
					String st = ui.insertrev(rev);
					
					if(st.equals("Success"))
						
						m.addAttribute("msg", "Thanks for your review!! Keep shopping:)");
					else
					{
						m.addAttribute("msg", "failed to add");
			            
					}
					m.addAttribute("rev", new Review());
					return "addReview1";
				
			}
				@GetMapping("page11/{BookId}")
				public String test11(@PathVariable("BookId")int BookId,HttpServletRequest request,@ModelAttribute("rev") Review rev){
					
					HttpSession session4=request.getSession();
					session4.setAttribute("Bid",BookId);
					return "addReview";
					
		}
				
	
			

			
		}

