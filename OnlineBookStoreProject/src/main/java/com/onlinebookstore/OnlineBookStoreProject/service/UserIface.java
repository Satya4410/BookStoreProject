package com.onlinebookstore.OnlineBookStoreProject.service;

import java.sql.Blob;
import java.util.List;

import com.onlinebookstore.OnlineBookStoreProject.entity.Book;
import com.onlinebookstore.OnlineBookStoreProject.entity.BookOrder;
import com.onlinebookstore.OnlineBookStoreProject.entity.Review;
import com.onlinebookstore.OnlineBookStoreProject.entity.Staffmember;
import com.onlinebookstore.OnlineBookStoreProject.entity.UserInfo;
import com.onlinebookstore.OnlineBookStoreProject.entity.loginadmin;

public interface UserIface {
	public String AddUser(UserInfo ui);
	public String checklogin(loginadmin la);
	public String insertbook(Book ui);
	public List<Book> getall();
	public Blob getPhotoById(int id);
	public List<UserInfo> viewallusers();
	public List<Book> viewupdatebook(int bookId);
	public String Updatebk(Book book1);
	public String Deleteabook(Book book1);
	public List<Book> Searchabook(Book book1);
	public UserInfo checkuserlogin(UserInfo user);
	public String AddStaff(Staffmember staff);
	public Staffmember checkstafflogin(Staffmember staff1);
	public List<Staffmember> viewallstaff();
	public List<Book> Searchauthor(Book book1);
	public List<Book> Searchbookname(Book book1);
	public List<Book> viewshow(int BookId);
	public String insertrev(Review review);
	public List<Review> viewallreview(int BookId);
	public String insertbookorder(BookOrder bookorder);
	public List<Review> viewallrevbyadmin();
	public String delreview(int ReviewId);
	public List<BookOrder> vieworderd();
	public String vieworderdup(BookOrder bookord);
	public List<BookOrder> viewordelivery(BookOrder bookord);
	public String vieworderdel(BookOrder bookord);
	public List<BookOrder> stafdeliverydetails(BookOrder bookord);
	public List<BookOrder> adminviewdelit();

}
