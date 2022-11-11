package com.onlinebookstore.OnlineBookStoreProject.controller;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.onlinebookstore.OnlineBookStoreProject.entity.Book;
import com.onlinebookstore.OnlineBookStoreProject.entity.BookOrder;
import com.onlinebookstore.OnlineBookStoreProject.service.UserIface;

@Controller
public class BookController {
	@Autowired
	UserIface ui;
	@GetMapping("books")
    public String getPage1(Model m)
		{
			m.addAttribute("book", new Book());
			return "bookpage";
		}
		@PostMapping("bookProcess")
		public String adminInformation(@ModelAttribute Book books, @RequestParam MultipartFile ufile, Model m) throws IOException
		{
			String fname = ufile.getOriginalFilename();
			byte[] bt = ufile.getBytes();		
			books.setBookImage(bt);
			String st = ui.insertbook(books);
			
			if(st.equals("Success"))
				
				m.addAttribute("msg", "Book added Successfully!");
			else
				m.addAttribute("msg", "failed to add");
	            m.addAttribute("book", new Book());
			
			return "bookpage";
		
	}
		@GetMapping("getallbook")
		public String getAllInfo(Model m)
		{
			List<Book>  bk = ui.getall();
			m.addAttribute("bk", bk);
			return "ViewAllBook";
		}
		@GetMapping("getbookPhoto/{id}")
		public void getbkPhoto(HttpServletResponse response, @PathVariable("id") int id) throws Exception {
			response.setContentType("image/jpeg");

			Blob ph = ui.getPhotoById(id);

			byte[] bytes = ph.getBytes(1, (int) ph.length());
			InputStream inputStream = new ByteArrayInputStream(bytes);
			IOUtils.copy(inputStream, response.getOutputStream());
		}
		@GetMapping("delbook")
		public String  DelStudentPage()
		{		
			return "deletebook";
		}
		
		@PostMapping("bookd")
		public String  DeletePage(@RequestParam Integer bookId, Model m)
		{		
			Book book1=new Book();
			 book1.setBookId(bookId);
			String st = ui.Deleteabook(book1);
			if(st.equals("Success"))
			{
				m.addAttribute("msg", "Deleted Successfully!");
			}
			else
			{
				m.addAttribute("msg", " Not Found");
			}
			return "deletebook";
		}
		@GetMapping("searchb")
		public String sear() {
			return "searchbook";
		}
		@PostMapping("searbook")
		public String searchPage(@RequestParam String title,@RequestParam String author,Model m)
		{		
			Book book1=new Book();
			 book1.setTitle(title);
			 book1.setAuthor(author);
			List<Book> boks = ui.Searchabook(book1);
			if(boks.isEmpty())
			{
				m.addAttribute("msg","No Books found");
			}
			else{
				m.addAttribute("boks",boks);
			}
			
			return "viewbookpage";
		}
		//search using author name
				@GetMapping("searauthor")
				public String searath() {
					return "searchbookauthor";
				}
				@PostMapping("searbookauthor")
				public String searchPageauthor(@RequestParam String author,Model m)
				{		
					Book book1=new Book();
					 book1.setAuthor(author);
					List<Book> boks = ui.Searchauthor(book1);
					if(boks.isEmpty())
					{
						m.addAttribute("msg","No Books found");
					}
					else{
					m.addAttribute("boks",boks);
					}
					return "viewbookbyauthor";
				}
				//search using title
				@GetMapping("searchtit")
				public String seartit() {
					return "searchbookname";
				}
				@PostMapping("searbookname")
				public String searchPagename(@RequestParam String title,Model m)
				{		
					Book book1=new Book();
					 book1.setTitle(title);
					List<Book> boks = ui.Searchbookname(book1);
					if(boks.isEmpty())
					{
						m.addAttribute("msg","No Books found");
					}
					else{
					m.addAttribute("boks",boks);
					}
					return "viewbookbytitle";
				}
				//user view books
				@GetMapping("show")
				public String page2(Model m) {
					List<Book> boks = ui.getall();
					m.addAttribute("boks", boks);
					return "showdetails";
				}
				@GetMapping("pageview/{BookId}")
				public String pagev(@PathVariable("BookId")int BookId,HttpServletRequest request,Model m){
		
						List<Book> stv = ui.viewshow(BookId);
						
						m.addAttribute("stv", stv);
						return "viewshowdetails";
					}
				
				@GetMapping("getbookPhotoshowview/{id1}")
				public void getbkPhotosh(HttpServletResponse response, @PathVariable("id1") int id1) throws Exception {
					response.setContentType("image/jpeg");

					Blob ph = ui.getPhotoById(id1);

					byte[] bytes = ph.getBytes(1, (int) ph.length());
					InputStream inputStream = new ByteArrayInputStream(bytes);
					IOUtils.copy(inputStream, response.getOutputStream());
				}
				@GetMapping("vieword")
				public String vieword(Model m) {
					List<BookOrder> stv = ui.vieworderd();
					if(stv.isEmpty()) {
						m.addAttribute("msg","No Current Orders");
					}else
					{
					m.addAttribute("stv", stv);
					}
					return "viewOrder";
				}
				@GetMapping("pageord/{OrderId}")
				public String test11(@PathVariable("OrderId")int OrderId,HttpServletRequest request,Model m){
					System.out.println(OrderId);
					
					//HttpSession session4=request.getSession();
					//session4.setAttribute("Bid",BookId);
					HttpSession session6=request.getSession();
			 		 int stid=  Integer.parseInt(session6.getAttribute("Sid").toString());
			 		 //String sts="Assigned";
			 		System.out.println(stid);
			 		BookOrder bookord=new BookOrder();
			 		bookord.setStaffId(stid);
			 		bookord.setOrderId(OrderId);
			 		//bookord.setStatus(sts);
				      String st = ui.vieworderdup(bookord);
				      if(st.equals("Success")) {
				      List<BookOrder> stv = ui.vieworderd();
				      if(stv.isEmpty()) {
				    	  m.addAttribute("msg","No Current Orders");
				      }
				      else {
				  		m.addAttribute("stv", stv);
				      }
				  		
				  		}
				      else
				      {
				    	  List<BookOrder> stv = ui.vieworderd();
				  		m.addAttribute("stv", stv); 
				      }
				      return "viewOrder1";
				      }
				@GetMapping("videlivery")
					public String videl(HttpServletRequest request,Model m) {
					HttpSession session6=request.getSession();
					int stid=  Integer.parseInt(session6.getAttribute("Sid").toString());
					BookOrder bookord=new BookOrder();
			 		bookord.setStaffId(stid);
					List<BookOrder> stv = ui.viewordelivery(bookord);
					if(stv.isEmpty()) {
				    	  m.addAttribute("msg","No Pending Deliveries");
				      }
				      else {
			  		m.addAttribute("stv", stv);
				      }
					return "viewdelivery";
						}
				@GetMapping("pagedel/{OrderId}")
				public String testdel1(@PathVariable("OrderId")int OrderId,HttpServletRequest request,Model m){
					System.out.println(OrderId);
					HttpSession session6=request.getSession();
			 		 int stid=  Integer.parseInt(session6.getAttribute("Sid").toString());
			 		System.out.println(stid);
			 		BookOrder bookord=new BookOrder();
			 		bookord.setStaffId(stid);
			 		bookord.setOrderId(OrderId);
				      String st = ui.vieworderdel(bookord);
				      if(st.equals("Success")) {
				      List<BookOrder> stv = ui.viewordelivery(bookord);
				      if(stv.isEmpty()) {
				    	  m.addAttribute("msg","No Pending Deliveries");
				      }
				      else {
				  		m.addAttribute("stv", stv);
				      }
				  		
				  		}
				      else
				      {
				    	  List<BookOrder> stv = ui.viewordelivery(bookord);
				  		m.addAttribute("stv", stv); 
				      }return "viewdelivery1";
				  
			}
				//staff view delivered items
				@GetMapping("staffdelitem")
				public String staffdelit(Model m,HttpServletRequest request) {
					HttpSession session6=request.getSession();
					int stid=  Integer.parseInt(session6.getAttribute("Sid").toString());
					System.out.println(stid);
					BookOrder bookord=new BookOrder();
					bookord.setStaffId(stid);
					List<BookOrder> lbo=ui.stafdeliverydetails(bookord);
					m.addAttribute("lbo",lbo);
					return "staffdeliverydetails";
				}
				
				
				
				
				//admin view delivery
				@GetMapping("viewdeliveryad")
				public String viewdelad(Model m) {
					List<BookOrder> lbo=ui.adminviewdelit();
					m.addAttribute("lbo",lbo);
					return "viewdeliveryadmin";
				}
				//update book
				@GetMapping("upbook")
				public String upb() {
					return "searchupdatebook";
				}
				
				@PostMapping("update")
				public String up(@RequestParam Integer bookId,Model m) {
				//	Book book=new Book();
				//	book.setBookId(bookId);
					List<Book> li=ui.viewupdatebook(bookId);
					m.addAttribute("li",li);
					return "updatebook";
				}
				@PostMapping("bookUpdateProcess")
				public String UpdatebookDetails(@RequestParam Integer BookId,@RequestParam String Title,@RequestParam String Author,@RequestParam String Description,@RequestParam String ISBN,@RequestParam float Price,Model m ) throws Exception
				{
					Book books=new Book();
					books.setBookId(BookId);
					books.setTitle(Title);
					books.setAuthor(Author);
					books.setDescription(Description);
					books.setISBN(ISBN);
					books.setPrice(Price);
					String st = ui.Updatebk(books);
					if(st.equals("Success"))
						m.addAttribute("msg", "Book details Updated...");
					else
						m.addAttribute("msg", "Book details Not Updated...");
					return "searchupdatebook";		
				}
				

}
