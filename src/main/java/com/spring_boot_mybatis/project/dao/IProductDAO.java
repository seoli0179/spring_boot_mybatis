package com.spring_boot_mybatis.project.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.spring_boot_mybatis.project.model.ProductVO;

public interface IProductDAO {
	ArrayList<ProductVO> listAllProduct();// 전체 상품 정보 조회

	void insertProduct(ProductVO prd);// 상품 정보 등록

	void updateProduct(ProductVO prd);// 상품 정보 수정

	void deleteProduct(String prdNo);// 상품 정보 삭제

	ProductVO detailViewProduct(String prdNo);// 상세 상품 정보 조회

	String prdNoCheck(String prdNo); // 중복되는 상품번호 있으면 상품번호 반환

	ArrayList<ProductVO> productSearch(HashMap<String, Object> map);
}
