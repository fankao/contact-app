package com.spring.contact.repository;

import java.util.List;

import com.spring.contact.model.Contact;

public interface ContactRepository {
	/**
	 * Lấy danh sách contact
	 */
	List<Contact> findAll();

	Contact save(Contact contact);

	Contact findById(long id);

	void deleteById(long id);

}
