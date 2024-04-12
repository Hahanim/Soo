package soo.qna.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import soo.control.Controller;
import soo.handler.HandlerAdapter;
import soo.qna.dao.QnaDAO;
import soo.qna.dto.QnaDTO;

public class QnaSelectController implements Controller {
	
	private static Log log = LogFactory.getLog(QnaSelectController.class);


	@Override
	public HandlerAdapter execute(HttpServletRequest request, HttpServletResponse response) {
		
		QnaDAO qnaDAO = new QnaDAO();
		QnaDTO qnaDTO = new QnaDTO();
		log.info(qnaDTO);
		
		ArrayList<QnaDTO> arrayList = new ArrayList<QnaDTO>();
		arrayList = qnaDAO.qnaSelectAll();		
		log.info("sql-"+ arrayList);
		
		request.setAttribute("arrayList", arrayList);
		HandlerAdapter handlerAdapter = new HandlerAdapter();
		log.info("QnA 정보 조회-" + handlerAdapter);
		handlerAdapter.setPath("/WEB-INF/view/qna/qna_select.jsp");
		
		return handlerAdapter;
	}

}
