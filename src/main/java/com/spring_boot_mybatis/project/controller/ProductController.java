package com.spring_boot_mybatis.project.controller;

import java.util.ArrayList;
import java.util.HashMap;

import com.spring_boot_mybatis.project.model.ProductVO;
import com.spring_boot_mybatis.project.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

//test
@Controller
public class ProductController {
	
	// DI 설정
	@Autowired
	ProductService prdService;

	// 시작시 index 열기
	@RequestMapping("/")
	public String viewIndex() {
		return "index";
	}
	
	// 전체 상품 조회 요청 처리
	@RequestMapping("/product/productAllList")
	public String viewProductAllList(Model model) {
		
		// 서비스 클래스의 매소드 호출해서 결과 받아옴
		ArrayList<ProductVO> prdList = prdService.listAllProduct();

		// 모델 설정
		model.addAttribute("prdList", prdList);
				
		return "product/productAllListView";	//product 폴더의 productAllListView.jsp
	}
	
	@RequestMapping("/product/productNewForm")
	public String productNewForm() {
		return "product/productNewForm";
	}
	
	@RequestMapping("/product/insertProduct")
	public String insertProduct(ProductVO prd) {
		prdService.insertProduct(prd);
		
		return "redirect:./productAllList";
	}
	
	@RequestMapping("/product/productDetailView/{prdNo}")
	public String productDetail(@PathVariable String prdNo, Model model) {
		
		ProductVO prd = prdService.detailViewProduct(prdNo);
		model.addAttribute("prd", prd);
		
		return "product/productDetailView";
	}	
	
	@RequestMapping("/product/productUpdateForm/{prdNo}")
	public String productUpdateForm(@PathVariable String prdNo, Model model) {	
		
		ProductVO prd = prdService.detailViewProduct(prdNo);
		model.addAttribute("prd", prd);
		
		return "product/productUpdateForm";
	}
	
	@RequestMapping("/product/updateProduct")
	public String productUpdate(ProductVO prd) {	
		
		prdService.updateProduct(prd);		
		//return "product/productDetailView/"+prd.getPrdNo();
		return "redirect:/product/productAllList";
	}
	
	@RequestMapping("/product/deleteProduct/{prdNo}")
	public String deleteProduct(@PathVariable String prdNo) {	
		
		prdService.deleteProduct(prdNo);		
		//return "product/productDetailView/"+prd.getPrdNo();
		return "redirect:/product/productAllList";
	}
	
	@ResponseBody
	@RequestMapping("/product/prdNoCheck")
	public String prdNoCheck(@RequestParam("prdNo") String prdNo) {
		return prdService.prdNoCheck(prdNo);
	}
	
	@RequestMapping("/product/productSearchForm1")
	public String productSearchForm1() {
		return "product/productSearchForm1";
	}
	
	@ResponseBody
	@RequestMapping("/product/productSearch1")
	public ArrayList<ProductVO> productSearch1(@RequestParam HashMap<String,Object> param, Model model) {
		
		ArrayList<ProductVO> prdList = prdService.productSearch(param);
		
		for(ProductVO prd : prdList) {
			System.out.println(prd.getPrdName());
		}
		
		model.addAttribute("prdList", prdList);
		
		return prdList;
	}
	
	@RequestMapping("/product/productSearchForm2")
	public String productSearchForm2() {
		return "product/productSearchForm2";
	}
	
	@RequestMapping("/product/productSearch2")
	public String productSearch2(@RequestParam HashMap<String,Object> param, Model model) {
		
		ArrayList<ProductVO> prdList = prdService.productSearch(param);
		
		for(ProductVO prd : prdList) {
			System.out.println(prd.getPrdName());
		}
		
		model.addAttribute("prdList", prdList);
		
		return "product/productSearchResultView";
	}
	
	
}
