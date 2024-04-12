package soo.qna.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import soo.control.Controller;
import soo.handler.HandlerAdapter;
import soo.qna.dao.QnaDAO;
import soo.qna.dto.QnaDTO;

public class QnaSelectDetailController implements Controller {
	
	private static Log log = LogFactory.getLog(QnaSelectDetailController.class);


	@Override
	public HandlerAdapter execute(HttpServletRequest request, HttpServletResponse response) {
		QnaDAO qnaDAO = new QnaDAO();
		QnaDTO qnaDTO = new QnaDTO();
		
		int num = Integer.parseInt(request.getParameter("num"));
		qnaDTO = qnaDAO.qnaSelect(num);
		log.info("DTO 확인-" + qnaDTO);
		
		request.setAttribute("qnaDTO", qnaDTO);
		HandlerAdapter handlerAdapter = new HandlerAdapter();
		handlerAdapter.setPath("/WEB-INF/view/qna/qna_select_detail_view.jsp");
		return handlerAdapter;
	}

}
