package com.multi.gazee;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ProductDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	public ProductVO one(int no) {
		ProductVO bag = my.selectOne("product.one", no);
		return bag;
	}
}
