package kr.kitri.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	@RequestMapping("/index.do") //���� �ε���.do�� ��û�Ǹ� �����ϰڴ�. ��Ʈ�ѿ�����..
	public String main(){
		System.out.println("������̼� ��� �۾�");
		return "index";
	}
}
