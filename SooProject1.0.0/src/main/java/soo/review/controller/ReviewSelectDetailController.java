package soo.review.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import soo.control.Controller;
import soo.handler.HandlerAdapter;
import soo.review.dao.ReviewDAO;
import soo.review.dto.ReviewDTO;

public class ReviewSelectDetailController implements Controller {
	
	private static Log log = LogFactory.getLog(ReviewSelectDetailController.class);


	@Override
	public HandlerAdapter execute(HttpServletRequest request, HttpServletResponse response) {
		ReviewDAO reviewDAO = new ReviewDAO();
		ReviewDTO reviewDTO = new ReviewDTO();
		
		int num = Integer.parseInt(request.getParameter("num"));
		reviewDTO = reviewDAO.reviewSelect(num);
		log.info("DTO 확인-" + reviewDTO);
		
		request.setAttribute("reviewDTO", reviewDTO);
		HandlerAdapter handlerAdapter = new HandlerAdapter();
		handlerAdapter.setPath("/WEB-INF/view/review/review_select_detail_view.jsp");
		return handlerAdapter;
	}

}
