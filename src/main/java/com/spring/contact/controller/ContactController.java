package com.spring.contact.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("contact")
public class ContactController {

	@GetMapping("/list")
	public String showListContacts() {
		return "list-contact";
	}
}
