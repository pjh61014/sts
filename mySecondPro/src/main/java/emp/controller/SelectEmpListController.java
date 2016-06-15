package emp.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import emp.service.MyEmpService;

@Controller
public class SelectEmpListController extends AbstractController {
	@Autowired
	MyEmpService service;

	@Override
	@RequestMapping(value="/list.do", method=RequestMethod.GET)
	protected ModelAndView handleRequestInternal(HttpServletRequest arg0,
			HttpServletResponse arg1) throws Exception {
				
		ModelAndView mav = new ModelAndView();
		//������ �����͸� ���Ǥ�-request.setAttribute("msg","���������� �Ѿ�� ������")
		mav.addObject("userlist",service.getMemberList());
		//forward�� �信 ���� ������ ����
		mav.setViewName("list");
		return mav;
		
		
		
		
		
		
		
	}

	
}
