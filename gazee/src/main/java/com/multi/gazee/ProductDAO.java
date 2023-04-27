package com.multi.gazee;

import java.util.Arrays;
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
	
	public List<ProductVO> list(ProductVO bag) {
		List<ProductVO> list = my.selectList("product.list", bag);
		String[] arr2 = new String[5];
		for (int i = 0; i < list.size(); i++) {
			String[] arr = list.get(i).getImg().split(" ");
			arr2[i] = arr[0];
			list.get(i).setImg(arr2[i]);
		}
		
		System.out.println(Arrays.toString(arr2));
		System.out.println(list.size());
		return list;
	}
	
	public int update(ProductVO bag) {
		int result = my.update("product.update", bag);
		return result;
	}

}
