package emp.mybatis.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import emp.service.MyEmpService;

@Controller
public class CountController {
	@Autowired
	MyEmpService service;
	
	@RequestMapping("/count.do") //나는 인덱스.do가 요청되면 실행하겠다. 컨트롤에서만..
	public String main(){
		int result = service.count();
		System.out.println("인원수 ====>"+result);
		return "index";
	}
}
