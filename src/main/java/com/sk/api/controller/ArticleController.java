package com.sk.api.controller;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sk.api.service.ArticleService;

@Controller
public class ArticleController {

	@Autowired
	ArticleService articleService;
	
	@GetMapping("/")
	public String index(Model model) {
		model.addAttribute("name", "Durga");
		return "sample";
	}
	
	
	@GetMapping("/articles")
	public ModelAndView getArticles() {
		JSONArray data = articleService.getData();
		ModelAndView andView = new ModelAndView("article");
		andView.addObject("data", data);
		return andView;
	}
	
	@GetMapping("/gridProblem")
	public String getgridPage(ModelMap model) {
		return "gridProblem";
	}
	
}