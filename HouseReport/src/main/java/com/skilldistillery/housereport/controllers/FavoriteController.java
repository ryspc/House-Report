package com.skilldistillery.housereport.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.housereport.data.ListingDAO;
import com.skilldistillery.housereport.data.UserDAO;
import com.skilldistillery.housereport.entities.Listing;
import com.skilldistillery.housereport.entities.User;

@Controller
public class FavoriteController {

	@Autowired
	private UserDAO userDao;
	
	@Autowired
	private ListingDAO listingDao;
	
	@RequestMapping(path="addToFavorites.do", params = {"userID", "listingID"},  method=RequestMethod.POST)
	public String addToFavorites(Model model, int userID, int listingID) {
		User dbUser = userDao.findById(userID);
		Listing dbListing = listingDao.findById(listingID);
		dbUser.addFavorite(dbListing);
		userDao.updateUser(dbUser);
		return "redirect:profile.do";
	}
	
	@RequestMapping(path="deleteFromFavorites.do", params = {"favoriteID", "userID"}, method=RequestMethod.POST)
	public String deleteFromFavorites(HttpSession session, int favoriteID, int userID) {
		User dbUser = userDao.findById(userID);
		dbUser.removeFavorite(listingDao.findById(favoriteID));
		userDao.updateUser(dbUser);
//		session.setAttribute("user", dbUser);
		return "redirect:profile.do";
	}
}
