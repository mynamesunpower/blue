package main.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;



@Controller
public class HelloController {


	// �뿉�윭
	@RequestMapping(value="error.do")
	public String error() {


		System.out.println("[�뿉�윭 諛쒖깮: �뿉�윭 �럹�씠吏�濡� �씠�룞]");

		return "error";

	}

}
