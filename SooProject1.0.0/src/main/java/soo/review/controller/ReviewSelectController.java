package soo.review.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import soo.control.Controller;
import soo.handler.HandlerAdapter;
import soo.review.dao.ReviewDAO;
import soo.review.dto.ReviewDTO;

public class ReviewSelectController implements Controller {
	
	private static Log log = LogFactory.getLog(ReviewSelectController.class);


	@Override
	public HandlerAdapter execute(HttpServletRequest request, HttpServletResponse response) {
		
		ReviewDAO reviewDAO = new ReviewDAO();
		ReviewDTO reviewDTO = new ReviewDTO();
		log.info(reviewDTO);
		
		ArrayList<ReviewDTO> arrayList = new ArrayList<ReviewDTO>();
		arrayList = reviewDAO.reviewSelectAll();		
		log.info("sql-"+ arrayList);
		
		request.setAttribute("arrayList", arrayList);
		HandlerAdapter handlerAdapter = new HandlerAdapter();
		log.info("QnA 정보 조회-" + handlerAdapter);
		handlerAdapter.setPath("/WEB-INF/view/review/review_select.jsp");
		
		return handlerAdapter;
	}

}
