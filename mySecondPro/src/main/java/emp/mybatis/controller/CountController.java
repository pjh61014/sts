package emp.mybatis.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import emp.service.MyEmpService;

@Controller
public class CountController {
	@Autowired
	MyEmpService service;
	
	@RequestMapping("/count.do") //���� �ε���.do�� ��û�Ǹ� �����ϰڴ�. ��Ʈ�ѿ�����..
	public String main(){
		int result = service.count();
		System.out.println("�ο��� ====>"+result);
		return "index";
	}
}
