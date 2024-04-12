package soo.control;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import soo.handler.HandlerAdapter;

public interface Controller {

	public HandlerAdapter execute(HttpServletRequest request, HttpServletResponse response);

}
