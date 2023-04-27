package com.multi.gazee;

public class ProductVO {
	private int no;
	private String title;
	private String category;
	private int price;
	private String content;
	private String img;
	private int view;
	private String memId;

	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public int getView() {
		return view;
	}
	public void setView(int view) {
		this.view = view;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	
	@Override
	public String toString() {
		return "ProductVO [no=" + no + ", title=" + title + ", category=" + category + ", price=" + price + ", content="
				+ content + ", img=" + img + ", view=" + view + ", memId=" + memId + "]";
	}

	
}
