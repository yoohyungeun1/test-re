package com.example.demo.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.demo.mapper.TestMapper;



@Controller
public class TestController {

	@Autowired
	TestMapper testMapper;
	
	
	@GetMapping("/")
	public String main(Model model) {
		List<Map<String, Object>> list = testMapper.list();
		System.out.println(list);
		model.addAttribute("list", list);
		
		Map<String, Object> map = list.get(0);
		String tit = (String) map.get("tit");
		System.out.println(tit);
		model.addAttribute("tit", tit);
		return "main";
	}
}
