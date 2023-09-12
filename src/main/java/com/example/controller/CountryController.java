package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.mapper.CountryMapper;
import com.example.model.Country;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/country")
public class CountryController {
	
	@Autowired
	CountryMapper mapper;
	
	@GetMapping("/list")
	void list(String continent, Model model) {
		log.info("list..");
		
		List<Country> list = null;
		if(continent == null || continent.trim().equals("")) 
			list = mapper.selectAll();
		else
			list = mapper.selectAllByContinent(continent);
		
		model.addAttribute("list", list);
		
		var continents = mapper.selectContinents();
		model.addAttribute("continents", continents);
		
		var regions = mapper.selectRegions(continent);
		model.addAttribute("regions", regions);
	}
}
