package com.multi.gazee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class ProductSoldController {
	
	@Autowired
	ProductSoldDAO dao;
}
