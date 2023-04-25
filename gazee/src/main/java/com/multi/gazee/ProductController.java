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
	public void list(String category, Model model) {
		List<ProductVO> list = dao.list(category);
		model.addAttribute("list", list);
	}
}
