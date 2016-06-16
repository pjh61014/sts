package emp.mybatis.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import emp.service.MyEmpService;

@Controller
public class SearchMybatisController {
	@Autowired
	MyEmpService service;

	@RequestMapping(value = "/mybatissearch.do", method = RequestMethod.GET)
	protected String showPage() {
		return "search/form";
	}

	@RequestMapping(value = "/mybatissearch.do", method = RequestMethod.POST)
	protected ModelAndView handleRequestInternal(HttpServletRequest req, String search) throws Exception {

		ModelAndView mav = new ModelAndView();
		// 공유할 데이터를 정의ㅏ-request.setAttribute("msg","스프링에서 넘어온 데이터")
		mav.addObject("userlist", service.findByAddr(search));
		// forward할 뷰에 대한 정보를 정의
		mav.setViewName("searchlist");
		return mav;
	}

}
