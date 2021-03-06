package com.skilldistillery.housereport.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

@Entity
@Table(name="listing_photo")
public class ListingPhoto {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@LazyCollection(LazyCollectionOption.FALSE)
	@Column(name="img_url")
	private String imgUrl;
	
	@ManyToOne
	@JoinColumn(name = "listing_id")
	private Listing listing;

	public ListingPhoto() {}
	

	public ListingPhoto(String imgUrl, Listing listing) {
		super();
		this.imgUrl = imgUrl;
		this.listing = listing;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}
	

	public Listing getListing() {
		return listing;
	}

	public void setListing(Listing listing) {
		this.listing = listing;
	}

	@Override
	public String toString() {
		return imgUrl;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ListingPhoto other = (ListingPhoto) obj;
		if (id != other.id)
			return false;
		return true;
	}
	
	
}
