package com.onlinebookstore.OnlineBookStoreProject.entity;
import java.util.Date;
public class BookOrder {
	private int OrderId;
	private int BookId;
	private String Shippingaddress;
	private String RecipientName;
	private String RecipientPhone;
	private String Payment;
	private Date Orderdate;
	private String Status;
	private int StaffId;

	public int getOrderId() {
		return OrderId;
	}
	public void setOrderId(int orderId) {
		OrderId = orderId;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	public int getStaffId() {
		return StaffId;
	}
	public void setStaffId(int staffId) {
		StaffId = staffId;
	}
	public int getBookId() {
		return BookId;
	}
	public void setBookId(int bookId) {
		BookId = bookId;
	}
	public String getShippingaddress() {
		return Shippingaddress;
	}
	public void setShippingaddress(String shippingaddress) {
		Shippingaddress = shippingaddress;
	}
	public String getRecipientName() {
		return RecipientName;
	}
	public void setRecipientName(String recipientName) {
		RecipientName = recipientName;
	}
	public String getRecipientPhone() {
		return RecipientPhone;
	}
	public void setRecipientPhone(String recipientPhone) {
		RecipientPhone = recipientPhone;
	}
	public String getPayment() {
		return Payment;
	}
	public void setPayment(String payment) {
		Payment = payment;
	}
	public Date getOrderdate() {
		return Orderdate;
	}
	public void setOrderdate(Date orderdate) {
		Orderdate = orderdate;
	}


}
