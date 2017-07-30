package com.work.inc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.work.model.BookTour;
import com.work.model.Booking;
import com.work.model.Pack;
import com.work.model.Tourist;
import com.work.model.User;
import com.work.service.BookTourService;
import com.work.service.PackService;
import com.work.service.TouristService;

@Controller
public class BookTourController {
	
	@Autowired
	private PackService packService;
	
	@Autowired
	private TouristService touristService;
	
	@Autowired 
	private BookTourService bookTourService;

	@RequestMapping("booking/addbooking/{id}")
	public String getBookTour(@PathVariable int id,@RequestParam int persons,Model model)
	{
		Pack pack=packService.getPackById(id);
		User user=(User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String username=user.getUsername();
		Tourist tourist=touristService.getTouristByUsername(username);
		Booking booking=tourist.getBooking();
		List<BookTour> bookTours=booking.getBookTours();
		System.out.println(booking.getBookTours().size());
		for(BookTour bookTour:bookTours)
		{
			System.out.println(bookTour.getPack().getId());
			System.out.println(id);
			if(bookTour.getPack().getId()==id)
			{
				bookTour.setVacancy(persons);
				bookTour.setTotalPrice(pack.getPrice()*persons);
				bookTourService.getBookTour(bookTour);
				return "redirect:/booking/getbooking";
			}
		}
		
		BookTour bookTour=new BookTour();
		bookTour.setVacancy(persons);
		bookTour.setTotalPrice(pack.getPrice()*persons);
		bookTour.setPack(pack);
		bookTour.setBooking(booking);
		bookTourService.getBookTour(bookTour);
		return "redirect:/booking/getbooking";
	}
	
	@RequestMapping("booking/getbooking")
	public String getBooking(Model model)
	{
		User user=(User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String username=user.getUsername();
		Tourist tourist=touristService.getTouristByUsername(username);
		Booking booking=tourist.getBooking();
		model.addAttribute("booking", booking);
		return "booking";
	}
	
	@RequestMapping("booking/removebooktour/{bookTourId}")
	public String removeBookTour(@PathVariable int bookTourId)
	{
		bookTourService.removeBookTour(bookTourId);
		return "redirect:/booking/getbooking";
	}
	
	@RequestMapping("booking/clearbooking/{bookingId}")
	public String removeAllBookTours(@PathVariable("bookingId") int bookingId)
		{
			bookTourService.removeAllBookTours(bookingId);
			return "redirect:/booking/getbooking";
		}

}
