package com.onlinebookstore.OnlineBookStoreProject.service;

import java.sql.Blob;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.onlinebookstore.OnlineBookStoreProject.entity.Book;
import com.onlinebookstore.OnlineBookStoreProject.entity.BookOrder;
import com.onlinebookstore.OnlineBookStoreProject.entity.Review;
import com.onlinebookstore.OnlineBookStoreProject.entity.Staffmember;
import com.onlinebookstore.OnlineBookStoreProject.entity.UserInfo;
import com.onlinebookstore.OnlineBookStoreProject.entity.loginadmin;


@Service
public class UserImpl implements UserIface{
	
	@Autowired
	JdbcTemplate jt;
//adduser
	public String AddUser(UserInfo ui) {
		// TODO Auto-generated method stub
		
		String Query = "Insert into User(UserName,Email,Address,City,Country,PhoneNumber,Zipcode,Password) values(?,?,?,?,?,?,?,?)";
		int r = jt.update(Query, new Object[] {ui.getUserName(),ui.getEmail(),ui.getAddress(),ui.getCity(),ui.getCountry(),ui.getPhoneNumber(),ui.getZipcode(),ui.getPassword()});
		if(r>=1)
			return "Success";
		else
			return "Error";
		
	}
//adminlogin
	public String checklogin(loginadmin la) {
		// TODO Auto-generated method stub
			String user=la.getUsername();
			String pass=la.getPassword();
			if((user.equals("admin")) && (pass.equals("adminpass"))) {
				return "Success";
			}
			else
			{
			return "Error";
			}
		}
//addbook
	public String insertbook(Book ui) {
		// TODO Auto-generated method stub
		String Query = "Insert into Book(BookId,Title,Author,Description,ISBN,BookImage,Price) values(?,?,?,?,?,?,?)";
		int r = jt.update(Query, new Object[] {ui.getBookId(),ui.getTitle(),ui.getAuthor(),ui.getDescription(),ui.getISBN(),ui.getBookImage(),ui.getPrice()});
		if(r>=1)
			return "Success";
		else
			return "Error";
		
	}
//view books
	public List<Book> getall() {
		// TODO Auto-generated method stub
		 String sql = "SELECT * FROM Book";
	     List<Book> ui = jt.query(sql, new BeanPropertyRowMapper(Book.class));
	     return ui;		
	}

	public Blob getPhotoById(int id) {
		// TODO Auto-generated method stub
		String query = "select BookImage from Book where BookId=?";

		@SuppressWarnings("deprecation")
		Blob photo = jt.queryForObject(query, new Object[] { id }, Blob.class);

		return photo;
	}
//view user
	public List<UserInfo> viewallusers() {
		// TODO Auto-generated method stub
			String sql = "SELECT * FROM User";
		    List<UserInfo> ui =jt.query(sql, new BeanPropertyRowMapper(UserInfo.class));
				return ui;
			}
//update	
	public String Updatebk(Book book1) {
		String Query="Update Book set title=?,author=?,description=?,ISBN=?,Price=? where bookId=?";
		int r=jt.update(Query,new Object[] {book1.getTitle(),book1.getAuthor(),book1.getDescription(),book1.getISBN(),book1.getPrice(),book1.getBookId()});
		if(r>=1)
			return "Success";
		else
			return "Error";
	}
	/////////////update
	public List<Book> viewupdatebook(int bookId) {
	String sql = "SELECT * FROM Book where BookID=?";
	List<Book> r=jt.query(sql,new Object[] {bookId},new BeanPropertyRowMapper(Book.class));
	return r;

	}
//delete book
	public String Deleteabook(Book book1) {
		// TODO Auto-generated method stub
		String Query="delete from Book where BookId=?";
		int r=jt.update(Query,new Object[] {book1.getBookId()});
		if(r==0)
		return "Error";
		else
			return "Success";
	}
//search book by author & title
	public List<Book> Searchabook(Book book1) {
		// TODO Auto-generated method stub
		String sql="select * from Book where Author=? and Title=?";
		List<Book> ui =jt.query(sql,new Object[] {book1.getAuthor(),book1.getTitle()},new BeanPropertyRowMapper(Book.class));
		return ui;
	}
//user login
	public UserInfo checkuserlogin(UserInfo user) {
		// TODO Auto-generated method stub
		try
		{
		 String sql = "SELECT * FROM User where Password=? and Email=?";
	    @SuppressWarnings("deprecation")
	    UserInfo u = (UserInfo)jt.queryForObject(sql, new Object[] {user.getPassword(),user.getEmail()}, new BeanPropertyRowMapper(UserInfo.class));
	    return u;
		}
		catch(Exception ex)
		{
			return null;
		}
	}
//Register staffmember
	public String AddStaff(Staffmember staff) {
		String Query = "Insert into StaffMember(StaffId,StaffName,Email,Address,City,Country,PhoneNumber,Zipcode,Password) values(?,?,?,?,?,?,?,?,?)";
		int r = jt.update(Query, new Object[] {staff.getStaffId(),staff.getStaffName(),staff.getEmail(),staff.getAddress(),staff.getCity(),staff.getCountry(),staff.getPhoneNumber(),staff.getZipcode(),staff.getPassword()});
		if(r==0)
			return "Error";
		else
			return "Success";

	}
//staffmember login
	public Staffmember checkstafflogin(Staffmember ui) {
		try
		{
		 String sql = "SELECT * FROM StaffMember where Password=? and StaffId=?";
	    @SuppressWarnings("deprecation")
	    Staffmember u = (Staffmember)jt.queryForObject(sql, new Object[] {ui.getPassword(),ui.getStaffId()}, new BeanPropertyRowMapper(Staffmember.class));
	    return u;
		}
		catch(Exception ex)
		{
			return null;
		}
		
	}
//view staff details
	public List<Staffmember> viewallstaff() {
		String sql = "SELECT * FROM StaffMember";
	    List<Staffmember> ui =jt.query(sql, new BeanPropertyRowMapper(Staffmember.class));
			return ui;
		}
	
	//search using author
	public List<Book> Searchauthor(Book book1) {
		String sql="select * from Book where Author=?";
		List<Book> ui =jt.query(sql,new Object[]{book1.getAuthor()},new BeanPropertyRowMapper(Book.class));
		return ui;
	}
	//search using title
	public List<Book> Searchbookname(Book book1) {
		String sql="select * from Book where Title=?";
		List<Book> ui =jt.query(sql,new Object[]{book1.getTitle()},new BeanPropertyRowMapper(Book.class));
		return ui;
	}
	//view show
	public List<Book> viewshow(int BookId) {
		String sql = "Select * from Book where BookId=?";
	    List<Book> ui=jt.query(sql,new Object[]{BookId},new BeanPropertyRowMapper(Book.class));
		return ui;
	}
	//add review 
	public String insertrev(Review ui) {
		String Query = "Insert into Review(BookId,UserName,Rating,Comment) values(?,?,?,?)";
		int r = jt.update(Query, new Object[] {ui.getBookId(),ui.getUserName(),ui.getRating(),ui.getComment()});
		if(r>=1)
			return "Success";
		else
			return "Error";
	}
	//view review
	public List<Review> viewallreview(int BookId) {
		String sql = "SELECT * FROM Review where BookId=?";
	    List<Review> r=jt.query(sql,new Object[]{BookId},new BeanPropertyRowMapper(Review.class));
			return r;
		
	}
//view review admin
	public List<Review> viewallrevbyadmin() {
		String sql = "Select * from Review";
	    List<Review> ui=jt.query(sql,new BeanPropertyRowMapper(Review.class));
		return ui;
	}
	//Admin-delete Review

	public String delreview(int ReviewId) {
		String Query="delete from Review where ReviewId=?";
		int r=jt.update(Query,new Object[]{ReviewId});
		if(r==0)
		return "Error";
		else
			return "Success";
		
	}
	//add bookOrder
	public String insertbookorder(BookOrder or) {
	System.out.println(or.getBookId());
	System.out.println(or.getRecipientName());
	System.out.println(or.getRecipientPhone());
	System.out.println(or.getShippingaddress());
	System.out.println(or.getPayment());
		
		
		String Query = "Insert into BookOrder(BookId,Shippingaddress,RecipientName,RecipientPhone,Payment,Orderdate,Status,StaffId)values(?,?,?,?,?,(select NOW()),'Ordered',0)";
		int r = jt.update(Query, new Object[]{or.getBookId(),or.getShippingaddress(),or.getRecipientName(),or.getRecipientPhone(),or.getPayment()});
		if(r>=1)
			return "Success";
		else
			return "Error";
	}
	//view book order
	public List<BookOrder> vieworderd() {
		String sql = "SELECT * FROM BookOrder where Status='Ordered'";
	    List<BookOrder> r=jt.query(sql,new BeanPropertyRowMapper(BookOrder.class));
			return r;

	}
	//view bookorder using status,staff
	
	public String vieworderdup(BookOrder bookord) {
		String Query="Update BookOrder set Status='Assigned',StaffId=? where OrderId=?";
		int r=jt.update(Query,new Object[] {bookord.getStaffId(),bookord.getOrderId()});
		if(r>=1)
			return "Success";
		else
			return "Error";
	}
	//delivered assigned staffid
	
	public List<BookOrder> viewordelivery(BookOrder bookord) {

		String sql = "SELECT * FROM BookOrder where StaffId=? and Status='Assigned'";
	    List<BookOrder> r=jt.query(sql,new Object[] {bookord.getStaffId()},new BeanPropertyRowMapper(BookOrder.class));
			return r;
	}
	//delivered
	
	public String vieworderdel(BookOrder bookord) {
		String Query="Update BookOrder set Status='Delivered' where OrderId=?";
		int r=jt.update(Query,new Object[] {bookord.getOrderId()});
		if(r>=1)
			return "Success";
		else
			return "Error";
		
	}
	//stafff delivered
	
	public List<BookOrder> stafdeliverydetails(BookOrder bookord) {
		String sql = "SELECT * FROM BookOrder where StaffId=? and Status='Delivered'";
	    List<BookOrder> r=jt.query(sql,new Object[] {bookord.getStaffId()},new BeanPropertyRowMapper(BookOrder.class));
			return r;
		
	}
	//adminview delivery
	
	public List<BookOrder> adminviewdelit() {
		
		String sql = "SELECT * FROM BookOrder";
	    List<BookOrder> r=jt.query(sql,new BeanPropertyRowMapper(BookOrder.class));
			return r;
	}

	}
	

	

	
	


