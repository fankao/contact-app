package com.spring.contact.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.contact.model.Contact;
import com.spring.contact.service.ContactService;

@Controller
@RequestMapping("contact")
public class ContactController {
	
	private ContactService contactService;
	
	@Autowired
	public ContactController(ContactService contactService) {
		this.contactService = contactService;
	}


	/**
	 * Hiển thị danh sách contact
	 * @return 
	 */
	@GetMapping("/list")
	public String showListContacts(Model model) {
		//lấy danh sách contact
		List<Contact> contacts = contactService.findAll();
		
		//đưa contacts vào model
		model.addAttribute("contacts", contacts);
		
		//trả về view
		return "list-contact";
	}
}
