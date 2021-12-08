package com.pnkj.datacentre.controllers;


import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pnkj.datacentre.model.DatacentreStatus;
import com.pnkj.datacentre.repo.DataRepo;
import com.pnkj.datacentre.repo.StatusRepo;

@Controller
public class HomeController {

	@Autowired
	private DataRepo datarepo; 
	@Autowired
	private StatusRepo statusrepo;
	
	
	@RequestMapping("/")
	public String index(Model model) {
		Long IN = datarepo.findByName("INDIA").getStatusId();
		String statusIN = statusrepo.findAllById(IN);
		
		Long NL = datarepo.findByName("NETHERLANDS").getStatusId();
		String statusNL = statusrepo.findAllById(NL);
		
		Long GM = datarepo.findByName("GERMANY").getStatusId();
		String statusGM = statusrepo.findAllById(GM);
		
		Long USA = datarepo.findByName("UNITED STATES OF AMERICA").getStatusId();
		String statusUS = statusrepo.findAllById(USA);
		
		model.addAttribute("IN", statusIN);
		model.addAttribute("NL", statusNL);
		model.addAttribute("GM", statusGM);
		model.addAttribute("US", statusUS);
		return "index";
	}
	
	@RequestMapping("/india")
	public String india() {
		return "india";
		
	}
}

