package com.spring.contact.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.contact.model.Contact;
import com.spring.contact.repository.ContactRepository;

@Service
@Transactional
public class ContactServiceImpl implements ContactService{
	private ContactRepository contactRepository;
	
	@Autowired
	public ContactServiceImpl(ContactRepository contactRepository) {
		this.contactRepository = contactRepository;
	}

	/**
	 * Lấy danh sách contact
	 */
	@Override
	public List<Contact> findAll() {
		// TODO Auto-generated method stub
		return contactRepository.findAll();
	}

	/**
	 * Lưu thông tin product
	 */
	@Override
	public Contact save(Contact contact) {
		
		return contactRepository.save(contact);
	}

	/**
	 * Tìm Contact theo id
	 */
	@Override
	public Contact findById(long id) {
		// TODO Auto-generated method stub
		return contactRepository.findById(id);
	}
	
}
