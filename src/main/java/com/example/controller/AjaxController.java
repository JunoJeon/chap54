package com.example.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.util.Alpha;

@Controller
public class AjaxController {
 
	@GetMapping("/ajax")
	void ajax(Model model) {
		
		var rect = new ArrayList<ArrayList<Alpha>>();
		
		for(var i=0; i<20; i++) {
			rect.add(new ArrayList<Alpha>());
			for(var j=0; j<40; j++) {
				rect.get(i).add(new Alpha());
			}
		}
		
		model.addAttribute("surface", rect);
	}
	
	@GetMapping("/alpha")
	@ResponseBody // 뷰로 포워드되지않고 즉시 서버로 포워드시킬때써야함
	Alpha generatior() { //String void가 아니라 Alpha를주어서 뷰로 포워드하지않고 값자체가 즉시 문자열로 리턴된다.
		return new Alpha();
	}
}
