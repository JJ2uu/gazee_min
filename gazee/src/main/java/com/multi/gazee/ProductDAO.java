package com.multi.gazee;

import java.util.List;

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
	
	public List<ProductVO> list(String category) {
		List<ProductVO> list = my.selectList("product.list", category);
		System.out.println(list.size());
		return list;
	}
}
