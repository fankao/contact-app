package com.spring.contact.service;

import java.util.List;

import com.spring.contact.model.Contact;

public interface ContactService {
	/**
	 * Lấy danh sách contact
	 */
	List<Contact> findAll();

}