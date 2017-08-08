package com.work.inc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.work.model.BookTour;
import com.work.model.Booking;
import com.work.model.Pack;
import com.work.model.Tourist;
import com.work.model.TouristOrder;
import com.work.service.BookTourService;
import com.work.service.PackService;
import com.work.service.TouristOrderService;
import com.work.service.TouristService;

@Controller
public class TouristOrderController {

	@Autowired
	private TouristOrderService touristOrderService;
	@Autowired
	private BookTourService bookTourService;
	@Autowired 
	private TouristService touristService;
	@Autowired 
	private PackService packService;
	@RequestMapping("/booking-order{bookingId}")
	public String createOrder (@PathVariable int bookingId ,Model model)
	{
		Booking booking=bookTourService.getBookingOrder(bookingId);
		Tourist tourist=booking.getTourist();
		booking.setTourist(tourist);
		TouristOrder touristOrder=touristOrderService.createOrder(booking);
		model.addAttribute("order",touristOrder);
		model.addAttribute("bookingid",bookingId);
		return "BookingDetails";
	}
	
	@RequestMapping("/booking-confirm{id}")
	public String confirm(@ModelAttribute TouristOrder order , @PathVariable int id)
	{
		int vacancy;
		int packId;
		User user=(User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String username=user.getUsername();
		
		Tourist tourist=touristService.getTouristByUsername(username);
		Booking booking=tourist.getBooking();
		List<BookTour> bookTours=booking.getBookTours();
		for(BookTour bookTour:bookTours)
		{
			vacancy=bookTour.getVacancy();
			Pack pack=bookTour.getPack();
			int PackVacancy=pack.getVacancy();
			
			if(vacancy==PackVacancy)
			{
				pack.setVacancy(0);
			}
			if(vacancy!=PackVacancy)
			{
				pack.setVacancy(PackVacancy-vacancy);
			}
			
			packService.updatePack(pack);
		}
		
		bookTourService.removeAllBookTours(id);
		return "thanks";
	}
}
