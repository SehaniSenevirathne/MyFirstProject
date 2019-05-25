package com.model;

public class ReturnBook{
	private int membershipID;
	private String name;
	private String address;
	private String bookID;
	private String bookName;
	
	public int getMembershipID() {
		return membershipID;
	}
	public void setMembershipID(int membershipID) {
		this.membershipID = membershipID;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getBookID() {
		return bookID;
	}
	public void setBookID(String bookID) {
		this.bookID = bookID;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

}
