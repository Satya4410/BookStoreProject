package com.onlinebookstore.OnlineBookStoreProject.entity;

public class Review {
	private int ReviewId;
	public int getReviewId() {
		return ReviewId;
	}
	public void setReviewId(int reviewId) {
		ReviewId = reviewId;
	}
	private int BookId;
	private String UserName;
	private String Rating;
	private String Comment;
	public int getBookId() {
		return BookId;
	}
	public void setBookId(int bookId) {
		BookId = bookId;
	}

	public String getUserName() {
		return UserName;
	}
	public void setUserName(String userName) {
		UserName = userName;
	}
	public String getRating() {
		return Rating;
	}
	public void setRating(String rating) {
		Rating = rating;
	}
	public String getComment() {
		return Comment;
	}
	public void setComment(String comment) {
		Comment = comment;
	}
}
