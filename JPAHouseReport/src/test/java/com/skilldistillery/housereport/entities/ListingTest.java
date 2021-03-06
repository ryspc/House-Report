package com.skilldistillery.housereport.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class ListingTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private Listing listing;

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
		listing = em.find(Listing.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		listing = null;
	}

	@Test
	void test_listing_mapped_toDB() {

		assertNotNull(listing);
		assertEquals(1890, listing.getYearBuilt());
	}

	@Test
	void test_listing_address_association() {
		assertNotNull(listing.getAddress());
		assertEquals("Denver", listing.getAddress().getCity());
	}

	@Test
	void test_listing_to_propertyType_mappings() {
		assertNotNull(listing);
		assertEquals("Two-Story House - with Basement", listing.getPropertyType().getType());
	}

	@Test
	void test_listing_events_association() {
		assertNotNull(listing.getEvents());
		assertEquals(1, listing.getEvents().size());
	}

	@Test
	void test_listing_mapped_rating() {
		assertNotNull(listing.getRatings());
		assertEquals(4, listing.getRatings().size());
	}

	@Test
	void test_listing_to_comment_mappings() {
		assertNotNull(listing);
		assertEquals("6th avenue nearby has a lot of sketchballs walking around", listing.getComments().get(0).getComment());
	}
	@Test
	void test_listing_mapped_to_listingphoto() {
		assertNotNull(listing);
		assertEquals("https://photos.zillowstatic.com/fp/107f101f3a4819cba827fbf6140a2c69-o_a.webp",listing.getListingPhotos().get(0).getImgUrl());
	}

	@Test
	void test_listing_mapped_favorites() {
		assertNotNull(listing.getFavoriteUsers());
		assertEquals(2, listing.getFavoriteUsers().size());
	}

	@Test
	void test_listing_mapped_user() {
		assertNotNull(listing.getUser());
		assertEquals("admin", listing.getUser().getUsername());
	}
}