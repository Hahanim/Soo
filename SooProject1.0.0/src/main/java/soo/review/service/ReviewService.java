package soo.review.service;

import java.util.ArrayList;


import soo.qna.dto.QnaDTO;
import soo.review.dto.ReviewDTO;

public interface ReviewService {
	
	public ArrayList<ReviewDTO> reviewSelectAll();
	
	public ReviewDTO reviewSelect(int num);
	
	public boolean reviewInsert(ReviewDTO reviewDTO);
	
	public boolean reviewUpdate(ReviewDTO reviewDTO);
	
	public boolean reviewDelete(int num);

	

	

}
