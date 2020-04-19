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

	/**
	 * Lưu contact
	 */
	@Override
	public Contact save(Contact contact) {
		try {
			// nếu contact chưa tồn tại, thì tạo mới
			if (contact.getId() == 0) {
				em.persist(contact);
			} else {
				// ngược lại thì cập nhật contact
				em.merge(contact);
			}
			return contact;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * tìm contact theo id
	 */
	@Override
	public Contact findById(long id) {
		return em.find(Contact.class, id);
	}

	/**
	 * Xoá contact theo id
	 */
	@Override
	public void deleteById(long id) {
		em.createQuery("DELETE FROM Contact con WHERE con.id =: id").setParameter("id", id).executeUpdate();	
	}

}
