package kr.kitri.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	@RequestMapping("/index.do") //나는 인덱스.do가 요청되면 실행하겠다. 컨트롤에서만..
	public String main(){
		System.out.println("어노테이션 기반 작업");
		return "index";
	}
}
