package com.onlinebookstore.OnlineBookStoreProject.entity;

public class Book {
		private int BookId;
		private String Title;
		private String Author;
		private String Description;
		private String ISBN;
		private byte[] BookImage;
		private Float Price;

		
		public int getBookId() {
			return BookId;
		}
		public void setBookId(int bookId) {
			BookId = bookId;
		}
		public String getTitle() {
			return Title;
		}
		public void setTitle(String title) {
			Title = title;
		}
		public String getAuthor() {
			return Author;
		}
		public void setAuthor(String author) {
			Author = author;
		}
		public String getDescription() {
			return Description;
		}
		public void setDescription(String description) {
			Description = description;
		}
		public String getISBN() {
			return ISBN;
		}
		public void setISBN(String iSBN) {
			ISBN = iSBN;
		}
		public byte[] getBookImage() {
			return BookImage;
		}
		public void setBookImage(byte[] bookImage) {
			BookImage = bookImage;
		}
		public Float getPrice() {
			return Price;
		}
		public void setPrice(Float price) {
			Price = price;
		}

		
}
