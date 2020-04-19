package com.spring.contact.repository;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.spring.contact.model.Contact;

@Repository
public class ContactRepositoryImpl implements ContactRepository {
	@PersistenceContext
	private EntityManager em;

	/**
	 * Lấy danh sách contact
	 */
	public List<Contact> findAll() {
		List<Contact> contacts = em.createQuery("FROM Contact", Contact.class).getResultList();
		return contacts.size() == 0 ? new ArrayList<Contact>() : contacts;
	}

}
