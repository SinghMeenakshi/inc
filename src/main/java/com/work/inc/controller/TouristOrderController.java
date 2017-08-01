package com.work.inc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.work.model.Booking;
import com.work.model.Tourist;
import com.work.model.TouristOrder;
import com.work.service.BookTourService;
import com.work.service.TouristOrderService;

@Controller
public class TouristOrderController {

	@Autowired
	private TouristOrderService touristOrderService;
	@Autowired
	private BookTourService bookTourService;
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
		bookTourService.removeAllBookTours(id);
		return "thanks";
	}
}
