package product.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import product.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	ProductService service;

	@RequestMapping(value="/prdlist.do", method=RequestMethod.GET)
	public ModelAndView showList(HttpServletRequest req,String category, String pathurl){
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("prdlist", service.productlist(category));
		
		
		if(category==null){
			mav.addObject("toplist", service.searchTopProduct());
			
			mav.setViewName("index");
		}else{
		
			mav.setViewName("main");
		}
		
		return mav;
		

	}
	
}
