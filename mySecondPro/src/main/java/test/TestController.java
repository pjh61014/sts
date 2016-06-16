package test;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TestController {

	@RequestMapping("/test.do")
	public ModelAndView test() {
		//������ ��� ������  �����Ϳ� ���� ������ ���� �մ� ��ü
		ModelAndView mav = new ModelAndView();
		//������ �����͸� ���Ǥ�-request.setAttribute("msg","���������� �Ѿ�� ������")
		mav.addObject("msg","���������� �Ѿ�� ����s��");
		//forward�� �信 ���� ������ ����
		mav.setViewName("test");
		return mav;
	}

}
