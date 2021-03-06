package com.skilldistillery.housereport.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class UserTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private User user;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAHouseReport");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		user = em.find(User.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		user = null;
	}

	@Test
	void test_user_mapped_toDB() {

		assertNotNull(user);
		assertEquals("admin", user.getUsername());
	}
	@Test
	void test_user_mapped_comment() {

		assertNotNull(user);
		assertEquals(16, user.getComments().get(0).getCommentDate().getDayOfMonth());
	}
	
	@Test
	void test_user_mapped_listing_favorites() {
		assertNotNull(user.getFavorites());
		assertEquals(1, user.getFavorites().size());
	}

	@Test
	void test_user_mapped_listings() {
		assertNotNull(user.getListings());
		assertEquals(3, user.getListings().size());
	}
	@Test
	void test_user_mapped_ratings() {
		assertNotNull(user.getRatings());
		assertEquals(3, user.getRatings().size());
	}
}
