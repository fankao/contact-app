package com.spring.contact.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
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
	
	
	/**
	 * Hiển thị form tạo contact
	 * @param model
	 * @return
	 */
	@GetMapping("/addNewContact")
	public String showFormForCreate(Model model) {
		//Tạo contact
		Contact contact = new Contact();
		
		//đưa contact vào model
		model.addAttribute("contact",contact);
		
		//trả về form thêm contact
		return "contact-form";
	}
	
	/**
	 * Xử lý thêm mới contact
	 * @param contact
	 * @return
	 */
	@PostMapping("/processCreateNewContact")
	public String processCreateNewContact(@ModelAttribute("contact") Contact contact) {
		//Nếu contact tồn tại
		if(contact!=null) {
			//lưu contact vào database
			Contact contactSaved = contactService.save(contact);
			if(contactSaved!=null) {
				return "redirect:/contact/list";
			}
		}
		return "redirect:/contact/addNewContact";
	}
	
	@GetMapping("/edit/{id}")
	public String showFormForUpdate(@PathVariable("id") long id,Model model) {
		//Tìm contact theo id
		Contact contact = contactService.findById(id);
		
		//đưa contact vào model
		model.addAttribute("contact", contact);
		
		//trả về view
		return "contact-form";
	}
}
