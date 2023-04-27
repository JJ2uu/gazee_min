package com.multi.gazee;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ProductController {
	
	@Autowired
	ProductDAO dao;
	
	@RequestMapping("productOne")
	@ResponseBody
	public ProductVO one(int no) {
		ProductVO bag = dao.one(no);
		return bag;
	}
	
	@RequestMapping("productList")
	public void list(ProductVO bag, Model model) {
		List<ProductVO> list = dao.list(bag);
		model.addAttribute("list", list);
	}
	
	@RequestMapping("edit")
	public void edit(int no, Model model) {
		System.out.println("edit호출");
		ProductVO bag = dao.one(no);
		System.out.println(bag.getTitle());
		System.out.println(bag.getContent());
		System.out.println(bag.getImg());
		model.addAttribute("bag", bag);
	}
	
	@RequestMapping("update")
	@ResponseBody
	public String update(ProductVO bag) {
		int result = dao.update(bag);
		if (result == 1) {
			return "index";
		} else {
			return "no";
		}
	}
}
